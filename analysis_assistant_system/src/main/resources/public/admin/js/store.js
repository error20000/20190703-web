var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/store/findAll";
var addUrl = baseUrl + "api/store/add";
var modUrl = baseUrl + "api/store/update";
var delUrl = baseUrl + "api/store/delete";
var dictUrl = baseUrl + "api/dict/findList";
var listUrl = baseUrl + "api/store/findList";

var ajaxReq = parent.window.ajaxReq || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					user: '',
					alarm: '',
					connected: '',
					status: ''
				},
				list: [],
				total: 0,
				page: 1,
				rows: 10,
				listLoading: false,
				sels: [],
				preloading: false,

				stationDictNo: '',
				stationOptions: [],
				lv1Options: [],
				lv2Options: [],
				lv3Options: [],

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
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
			},
			stationFormatter: function(row){
				var name = row.sAid_Station;
				for (var i = 0; i < this.stationOptions.length; i++) {
					var item = this.stationOptions[i];
					if(row.sAid_Station == item.sDict_NO){
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
						for (var i = 0; i < res.data.length; i++) {
							self.stationOptions.push({name: res.data[i].sDict_Name, value: res.data[i].sDict_NO});
						}
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
						self.lv1Options = [];
						for (var i = 0; i < res.data.length; i++) {
							self.lv1Options.push({name: res.data[i].sStoreType_Name, value: res.data[i].sStoreType_ID});
						}
					});
				});
			},
			handleLV2Options: function(id){
				var self = this;
				var params = {parent: id};
				ajaxReq(listUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.lv2Options = [];
						self.addForm.sStore_Level2 = "";
						self.addForm.sStore_Level3 = "";
						self.editForm.sStore_Level2 = "";
						self.editForm.sStore_Level3 = "";
						for (var i = 0; i < res.data.length; i++) {
							self.lv2Options.push({name: res.data[i].sStore_Name, value: res.data[i].sStore_ID});
						}
					});
				});
			},
			handleLV3Options: function(id){
				var self = this;
				var params = {parent: id};
				ajaxReq(listUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.lv3Options = [];
						self.addForm.sStore_Level3 = "";
						self.editForm.sStore_Level3 = "";
						for (var i = 0; i < res.data.length; i++) {
							self.lv3Options.push({name: res.data[i].sStore_Name, value: res.data[i].sStore_ID});
						}
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

				var self = this;
				var params = {
					page: this.page,
					rows: this.rows
				};
				for ( var key in this.filters) {
					if(this.filters[key]){
						params[key] = this.filters[key];
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
					});
				});
			},
			//reset
			reset: function(){
				this.filters = {
					
				};
				this.getList();
			},
			//add
			handleAdd: function(){
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
				this.handleLV1Options();
				this.editFormVisible = true;
				this.editForm = Object.assign({}, row);
				this.editForm.level = lv+"";
				switch (lv) {
				case 1:
					this.editForm.name = row.sStoreType_Name;
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
							message: '失败，'+res.msg,
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
	      	this.user = JSON.parse(localStorage.getItem('loginUser'));
	  		if(this.user　==　null){
	  			parent.window.location.href = "login.html";
	  			return;
	  		}
			this.preloading = true;
			this.handleStationOptions();
			this.getList();
		}
	  });
	
	

