var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/store/findAll";
var addUrl = baseUrl + "api/store/add";
var modUrl = baseUrl + "api/store/update";
var delUrl = baseUrl + "api/store/delete";
var dictUrl = baseUrl + "api/dict/findList";
var listUrl = baseUrl + "api/store/findList";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sStore_Level1: '',
					sStore_Level2: '',
					sStore_Level3: '',
					sStore_Level4: ''
				},
				list: [],
				total: 0,
				page: 1,
				rows: 10,
				listLoading: false,
				sels: [],
				preloading: false,
				
				menuFuns: gMenuFuns,
				authCache: {},

				stationDictNo: 'AidStation',
				stationOptions: [],
				mapIconDictNo: 'StoreMapIcon',
				mapIconOptions: [],
				lv1Options: [],
				lv2Options: [],
				lv3Options: [],
				filtersLv1Options: [],
				filtersLv2Options: [],
				filtersLv3Options: [],
				filtersLv4Options: [],
				
				expands1: [],
				expands2: [],
				expands3: [],
				expands4: [],

				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					level: [
		                { required: true, message: '请选择仓库级别.', trigger: 'blur' },
		              ],
					name: [
		                { required: true, message: '请输入仓库名称.', trigger: 'blur' },
		              ],
		            sStore_Level1: [
		            	{ validator: (rule, value, callback) => {
		            		if(this.addForm.level && this.addForm.level >= 2
		            				|| this.editForm.level && this.editForm.level >= 2){
		            			if (value === '') {
		            				callback(new Error('请选所属一级仓库.'));
	            		        }else{
	            		        	callback();
	            		        }
		            		}else{
		            			callback();
		            		}
		            	}, trigger: 'blur' }
		              ],
		            sStore_Level2: [
		            	{ validator: (rule, value, callback) => {
		            		if(this.addForm.level && this.addForm.level >= 3
		            				|| this.editForm.level && this.editForm.level >= 3){
		            			if (value === '') {
		            				callback(new Error('请选所属二级仓库.'));
	            		        }else{
	            		        	callback();
	            		        }
		            		}else{
		            			callback();
		            		}
		            	}, trigger: 'blur' }
		              ],
		            sStore_Level3: [
		            	{ validator: (rule, value, callback) => {
		            		if(this.addForm.level && this.addForm.level >= 4
		            				|| this.editForm.level && this.editForm.level >= 4){
		            			if (value === '') {
		            				callback(new Error('请选所属三级仓库.'));
	            		        }else{
	            		        	callback();
	            		        }
		            		}else{
		            			callback();
		            		}
		            	}, trigger: 'blur' }
		              ]
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					level: [
		                { required: true, message: '请选择仓库级别.', trigger: 'blur' },
		              ],
					name: [
		                { required: true, message: '请输入仓库名称.', trigger: 'blur' },
		              ],
		            sStore_Level1: [
		            	{ validator: (rule, value, callback) => {
		            		if(this.addForm.level && this.addForm.level >= 2
		            				|| this.editForm.level && this.editForm.level >= 2){
		            			if (value === '') {
		            				callback(new Error('请选所属一级仓库.'));
	            		        }else{
	            		        	callback();
	            		        }
		            		}else{
		            			callback();
		            		}
		            	}, trigger: 'blur' }
		              ],
		            sStore_Level2: [
		            	{ validator: (rule, value, callback) => {
		            		if(this.addForm.level && this.addForm.level >= 3
		            				|| this.editForm.level && this.editForm.level >= 3){
		            			if (value === '') {
		            				callback(new Error('请选所属二级仓库.'));
	            		        }else{
	            		        	callback();
	            		        }
		            		}else{
		            			callback();
		            		}
		            	}, trigger: 'blur' }
		              ],
		            sStore_Level3: [
		            	{ validator: (rule, value, callback) => {
		            		if(this.addForm.level && this.addForm.level >= 4
		            				|| this.editForm.level && this.editForm.level >= 4){
		            			if (value === '') {
		            				callback(new Error('请选所属三级仓库.'));
	            		        }else{
	            		        	callback();
	            		        }
		            		}else{
		            			callback();
		            		}
		            	}, trigger: 'blur' }
		              ]
				},
				
				//has auth
				hasEditAuth: false,
				hasDeleteAuth: false,
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
			},
			formatDegree: function(value) { 
				var v = value < 0 ? '-' : '';
				//将度转换成为度分秒                
				value = Math.abs(value);                
				var v1 = Math.floor(value);//度               
				var v2 = Math.floor((value - v1) * 60);//分                
				var v3 = Math.round((value - v1) * 3600 % 60);//秒                
				return v + v1 + '°' + v2 + '\'' + v3 + '"';            
			},
			formatToDegree: function(du, fen, miao) { 
				return Number(du) + Number(fen)/60 + Number(miao)/3600;            
			},
			formatToDu: function(value) { 
				value = Math.abs(value);                
				var v1 = Math.floor(value);//度   
				return v1;            
			},
			formatToFen: function(value) { 
				value = Math.abs(value);                
				var v1 = Math.floor(value);//度               
				var v2 = Math.floor((value - v1) * 60);//分
				return v2;            
			},
			formatToMiao: function(value) {           
				value = Math.abs(value);                
				var v1 = Math.floor(value);//度               
				var v2 = Math.floor((value - v1) * 60);//分                
				var v3 = Math.round((value - v1) * 3600 % 60);//秒  
				return v3;                
			},
			latFormatter: function(row){
				return this.formatDegree(row.lStoreType_Lat) + " N";
			},
			lngFormatter: function(row){
				return this.formatDegree(row.lStoreType_Lng) + " E";
			},
			stationFormatter: function(row){
				var name = row.sStoreType_Station;
				for (var i = 0; i < this.stationOptions.length; i++) {
					var item = this.stationOptions[i];
					if(row.sStoreType_Station == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleStationOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.stationDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.stationOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			mapIconFormatter: function(row){
				var name = row.sStoreType_MapIcon;
				for (var i = 0; i < this.mapIconOptions.length; i++) {
					var item = this.mapIconOptions[i];
					if(row.sStoreType_MapIcon == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleMapIconOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.mapIconDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.mapIconOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleLV1Options: function(){
				var self = this;
				var params = {};
				ajaxReq(listUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.lv1Options = res.data;
						self.lv2Options = [];
						self.lv3Options = [];
					});
				});
			},
			handleLV2Options: function(id){
				var self = this;
				var params = {parent: id};
				ajaxReq(listUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.lv2Options = res.data;
						self.lv3Options = [];
						self.addForm.sStore_Level2 = "";
						self.addForm.sStore_Level3 = "";
						self.editForm.sStore_Level2 = "";
						self.editForm.sStore_Level3 = "";
					});
				});
			},
			handleLV3Options: function(id){
				var self = this;
				var params = {parent: id};
				ajaxReq(listUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.lv3Options = res.data;
						self.addForm.sStore_Level3 = "";
						self.editForm.sStore_Level3 = "";
					});
				});
			},
			//filter
			handleFiltersInitOptions: function(){
				var self = this;
				var params = {};
				ajaxReq(listUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.filtersLv1Options = res.data;
						self.filtersLv2Options = [];
						self.filtersLv3Options = [];
						self.filtersLv4Options = [];
						self.filters.sStore_Level2 = "";
						self.filters.sStore_Level3 = "";
						self.filters.sStore_Level4 = "";
					});
				});
			},
			handleFiltersLV1Options: function(id){
				var self = this;
				var params = {parent: id};
				ajaxReq(listUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.filtersLv2Options = res.data;
						self.filtersLv3Options = [];
						self.filtersLv4Options = [];
						self.filters.sStore_Level2 = "";
						self.filters.sStore_Level3 = "";
						self.filters.sStore_Level4 = "";
					});
				});
			},
			handleFiltersLV2Options: function(id){
				var self = this;
				var params = {parent: id};
				ajaxReq(listUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.filtersLv3Options = res.data;
						self.filtersLv4Options = [];
						self.filters.sStore_Level3 = "";
						self.filters.sStore_Level4 = "";
					});
				});
			},
			handleFiltersLV3Options: function(id){
				var self = this;
				var params = {parent: id};
				ajaxReq(listUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.filtersLv4Options = res.data;
						self.filters.sStore_Level4 = "";
					});
				});
			},
			
			handleSizeChange: function (val) {
				this.rows = val;
				this.getList();
			},
			handleCurrentChange: function (val) {
				this.page = val;
				this.getList();
			},
			query:function(){
				this.page = 1;
				this.getList();
			},
			//query
			getList: function () {
				if(!this.hasAuth('query')){
					this.$message.error('没有权限！');
					return;
				}
				var self = this;
				var params = {
					page: this.page,
					rows: this.rows
				};
				for ( var key in this.filters) {
					if(this.filters[key]){
						params[key] = this.filters[key];
						//expands
						if(key == "sStore_Level1"){
							this.expands1.push(this.filters[key]);
						}
						if(key == "sStore_Level2"){
							this.expands2.push(this.filters[key]);
						}
						if(key == "sStore_Level3"){
							this.expands3.push(this.filters[key]);
						}
						if(key == "sStore_Level4"){
							this.expands4.push(this.filters[key]);
						}
					}
				}
				this.listLoading = true;
				ajaxReq(queryUrl, params, function(res){
					self.listLoading = false;
					self.handleResQuery(res, function(){
						self.total = res.total;
						self.list = res.data;
						/*if(self.page != 1 && self.total <= (self.page - 1) * self.rows){
							self.page = self.page - 1;
							self.getList();
						}*/
						self.hasAuth('edit');
						self.hasAuth('delete');
					});
				});
			},
			//reset
			reset: function(){
				this.filters = {
					sStore_Level1: '',
					sStore_Level2: '',
					sStore_Level3: '',
					sStore_Level4: ''
				};
				this.filtersLv2Options = [];
				this.filtersLv3Options = [];
				this.filtersLv4Options = [];
				
				this.expands1 = [];
				this.expands2 = [];
				this.expands3 = [];
				this.expands4 = [];
				
				this.getList();
			},
			//add
			handleAdd: function(){
				if(!this.hasAuth('add')){
					this.$message.error('没有权限！');
					return;
				}
				this.handleLV1Options();
				this.addFormVisible = true;
				this.addForm = {
						level: '',
						name: '',
						sStore_Level1: '',
						sStore_Level2: '',
						sStore_Level3: ''
				};
			},
			addClose: function () {
				this.addFormVisible = false;
				this.addLoading = false;
				this.$refs.addForm.resetFields();
			},
			addSubmit: function () {
				this.$refs.addForm.validate((valid) => {
					if (valid) {
						this.$confirm('确定提交吗?', '提示', {}).then(() => {
							var params = Object.assign({}, this.addForm);
							if(this.addForm.level == 1){
								params.lStoreType_Lat = this.formatToDegree(params.lStoreType_Lat_du, params.lStoreType_Lat_fen, params.lStoreType_Lat_miao);
								params.lStoreType_Lng = this.formatToDegree(params.lStoreType_Lng_du, params.lStoreType_Lng_fen, params.lStoreType_Lng_miao);
								delete params.lStoreType_Lat_du;
								delete params.lStoreType_Lat_fen;
								delete params.lStoreType_Lat_miao;
								delete params.lStoreType_Lng_du;
								delete params.lStoreType_Lng_fen;
								delete params.lStoreType_Lng_miao;
							}
							var self = this;
							this.addLoading = true;
							ajaxReq(addUrl, params, function(res){
								self.addLoading = false;
								self.handleResOperate(res, function(){
									self.addFormVisible = false;
									self.getList();
								});
							});
						});
					}
				});
			},
			//del
			handleDel: function(index, row, lv){
				if(!this.hasAuth('delete')){
					this.$message.error('没有权限！');
					return;
				}
				this.$confirm('确定删除该条记录吗? ', '提示', {
					type: 'warning'
				}).then(() => {
					var self = this;
					this.listLoading = true;
					var params = {
							level: lv,
							id: lv == 1 ? row.sStoreType_ID : row.sStore_ID
					};
					ajaxReq(delUrl, params, function(res){
						self.listLoading = false;
						self.handleResOperate(res, function(){
							self.getList();
						});
					});
					
				}).catch(() => {
				});
			},
			//edit
			handleEdit: function (index, row, lv) {
				if(!this.hasAuth('edit')){
					this.$message.error('没有权限！');
					return;
				}
				this.handleLV1Options();
				this.editFormVisible = true;
				this.editForm = Object.assign({}, row);
				this.editForm.level = lv+"";
				switch (lv) {
				case 1:
					this.editForm.name = row.sStoreType_Name;
					this.editForm.lStoreType_Lat_du = this.formatToDu(this.editForm.lStoreType_Lat);
					this.editForm.lStoreType_Lat_fen = this.formatToFen(this.editForm.lStoreType_Lat);
					this.editForm.lStoreType_Lat_miao = this.formatToMiao(this.editForm.lStoreType_Lat);
					this.editForm.lStoreType_Lng_du = this.formatToDu(this.editForm.lStoreType_Lng);
					this.editForm.lStoreType_Lng_fen = this.formatToFen(this.editForm.lStoreType_Lng);
					this.editForm.lStoreType_Lng_miao = this.formatToMiao(this.editForm.lStoreType_Lng);
					console.log(this.editForm);
					break;

				default:
					this.editForm.name = row.sStore_Name;
					break;
				}
			},
			editClose: function () {
				this.editFormVisible = false;
				this.editLoading = false;
				this.$refs.editForm.resetFields();
			},
			editSubmit: function () {
				this.$refs.editForm.validate((valid) => {
					if (valid) {
						this.$confirm('确认提交吗?', '提示', {}).then(() => {
							var self = this;
							this.editLoading = true;
							var params = Object.assign({}, this.editForm);
							if(this.editForm.level == 1){
								params.lStoreType_Lat = this.formatToDegree(params.lStoreType_Lat_du, params.lStoreType_Lat_fen, params.lStoreType_Lat_miao);
								params.lStoreType_Lng = this.formatToDegree(params.lStoreType_Lng_du, params.lStoreType_Lng_fen, params.lStoreType_Lng_miao);
								delete params.lStoreType_Lat_du;
								delete params.lStoreType_Lat_fen;
								delete params.lStoreType_Lat_miao;
								delete params.lStoreType_Lng_du;
								delete params.lStoreType_Lng_fen;
								delete params.lStoreType_Lng_miao;
							}
							ajaxReq(modUrl, params, function(res){
								self.editLoading = false;
								self.handleResOperate(res, function(){
									self.editFormVisible = false;
									self.getList();
								});
							});
							
						});
					}
				});
			},
			//has auth
			hasAuth: function(ref){
				if(typeof this.authCache[ref] != "undefined"){
					return this.authCache[ref];
				}
				let flag = false;
				if(!this.$refs[ref]){
					return flag;
				}
				let auth = this.$refs[ref].$el.getAttribute('auth'); //不能获取$attrs，会死循环
				if(!auth){
					return flag;
				}
				for (var i = 0; i < this.menuFuns.length; i++) {
					if(this.menuFuns[i].sMFun_Button == auth){
						flag = true;
						break;
					}
				}
				this.authCache[ref] = flag;
				return flag;
			},
			checkAuth: function(){
				this.hasEditAuth = this.hasAuth('edit');
				this.hasDeleteAuth = this.hasAuth('delete');
				alert(this.hasDeleteAuth);
				console.log(this.menuFuns);
			},
			//excel
			getExcel: function(){
				
			},
			//import
			getImport: function(){
				
			},
			
			selsChange: function (sels) {
				this.sels = sels;
			},
			//res
			toLoginHtml: function(){
                localStorage.removeItem('loginUser');
                parent.window.location.href = "login.html";
			},
			handleResQuery: function(res, success, failed){
				this.handleRes(false, res, success, failed);
			},
			handleResOperate: function(res, success, failed){
				this.handleRes(true, res, success, failed);
			},
			handleRes: function(show, res, success, failed){
				if(res.code > 0){
					if(show){
						this.$message({
							message: '成功',
							type: 'success'
						});
					}
					if(typeof success == 'function'){
						success(res, this);
					}
				}else if(res.code == -111){
					this.$message({
						message: '未登录.',
						type: 'warning'
					});
					this.toLoginHtml();
				}else if(res.code == -201){
					this.$message({
						message: '没有权限.',
						type: 'warning'
					});
				}else{
					if(show){
						this.$message({
							message: '失败：'+res.msg,
							type: 'warning'
						});
					}
					if(typeof failed == 'function'){
						failed(res, this);
					}
				}
			}
		},
		mounted: function() {
			getLoginToken();
			this.preloading = true;
			this.handleStationOptions();
			this.handleMapIconOptions();
			this.handleFiltersInitOptions();
			this.getList();
		}
	  });
	
	

