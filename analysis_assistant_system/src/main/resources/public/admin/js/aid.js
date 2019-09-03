var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/aid/findPage";
var addUrl = baseUrl + "api/aid/add";
var modUrl = baseUrl + "api/aid/update";
var delUrl = baseUrl + "api/aid/delete";
var oneUrl = baseUrl + "api/aid/findOne";
var excelUrl = baseUrl + "api/aid/excel";
var importUrl = baseUrl + "api/aid/import";
var nfcUrl = baseUrl + "api/nfc/unbind";
var nfcAllUrl = baseUrl + "api/nfc/findAll";
var bindUrl = baseUrl + "api/aid/bind";
var delBindUrl = baseUrl + "api/aid/delBind";
var dictUrl = baseUrl + "api/dict/findList";
var userUrl = baseUrl + "api/user/findAll";
var aidUserUrl = baseUrl + "api/aid/user";
var aidUpdateUserUrl = baseUrl + "api/aid/updateUser";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sAid_NO: '',
					sAid_Type: '',
					sAid_Station: '',
					sAid_Status: ''
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
				
				aidTypeDictNo: 'AidType',
				aidTypeOptions: [],
				stationDictNo: 'AidStation',
				stationOptions: [],
				lightDictNo: 'AidLighting',
				lightOptions: [],
				markDictNo: 'AidMark',
				markOptions: [],
				iconDictNo: 'AidIcon',
				iconOptions: [],
				statusDictNo: 'AidStatus',
				statusOptions: [],
				nfcAllOptions: [],
				userOptions: [],
				
				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					sAid_NO: [
		                { required: true, message: '请输入编码.', trigger: 'blur' },
		              ],
					sAid_Name: [
		                { required: true, message: '请输入名称.', trigger: 'blur' },
		              ]
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					sAid_NO: [
		                { required: true, message: '请输入编码.', trigger: 'blur' },
		              ],
					sAid_Name: [
		                { required: true, message: '请输入名称.', trigger: 'blur' },
		              ]
				},
				//bind
				nfcOptions: [],
				bindFormVisible: false,
				bindLoading: false,
				bindForm: {},
				bindFormRules: {
					sNfc_ID: [
		                { required: true, message: '请选择NFC标签.', trigger: 'blur' },
			        ]
				},
				//user
				userFormVisible: false,
				userLoading: false,
				userForm: {
					user: []
				},
				userFormRules: {},
				
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
			aidTypeFormatter: function(row){
				var name = row.sAid_Type;
				for (var i = 0; i < this.aidTypeOptions.length; i++) {
					var item = this.aidTypeOptions[i];
					if(row.sAid_Type == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
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
			lightFormatter: function(row){
				var name = row.sAid_Lighting;
				for (var i = 0; i < this.lightOptions.length; i++) {
					var item = this.lightOptions[i];
					if(row.sAid_Lighting == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			markFormatter: function(row){
				var name = row.sAid_Mark;
				for (var i = 0; i < this.markOptions.length; i++) {
					var item = this.markOptions[i];
					if(row.sAid_Mark == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleAidTypeOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.aidTypeDictNo}, function(res){
					self.handleResQuery(res, function(){
						self.aidTypeOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleStationOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.stationDictNo}, function(res){
					self.handleResQuery(res, function(){
						self.stationOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleLightOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.lightDictNo}, function(res){
					self.handleResQuery(res, function(){
						self.lightOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleMarkOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.markDictNo}, function(res){
					self.handleResQuery(res, function(){
						self.markOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			iconFormatter: function(row){
				var name = row.sAid_Icon;
				for (var i = 0; i < this.iconOptions.length; i++) {
					var item = this.iconOptions[i];
					if(row.sAid_Icon == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleIconOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.iconDictNo}, function(res){
					self.handleResQuery(res, function(){
						self.iconOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			statusFormatter: function(row){
				var name = row.sAid_Status;
				for (var i = 0; i < this.statusOptions.length; i++) {
					var item = this.statusOptions[i];
					if(row.sAid_Status == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleStatusOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.statusDictNo}, function(res){
					self.handleResQuery(res, function(){
						self.statusOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			nfcAllFormatter: function(row){
				var name = row.sAid_NfcID;
				for (var i = 0; i < this.nfcAllOptions.length; i++) {
					var item = this.nfcAllOptions[i];
					if(row.sAid_NfcID == item.sNfc_ID){
						name = item.sNfc_NO;
						break
					}
				}
				return name;
			},
			handleNfcAllOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(nfcAllUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.nfcAllOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleUserOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(userUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.userOptions = res.data;
						if(typeof cb == 'function'){
							cb();
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
					sAid_NO: '',
					sAid_Type: '',
					sAid_Station: '',
					sAid_Status: ''
				};
				this.getList();
			},
			//add
			handleAdd: function(){
				if(!this.hasAuth('add')){
					this.$message.error('没有权限！');
					return;
				}
				this.addFormVisible = true;
				this.addForm = {
					sAid_Status: 'normal',
					lAid_Lat_du: '',
					lAid_Lat_fen: '',
					lAid_Lat_miao: '',
					lAid_Lng_du: '',
					lAid_Lng_fen: '',
					lAid_Lng_miao: ''
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
							params.lAid_Lat = this.formatToDegree(params.lAid_Lat_du, params.lAid_Lat_fen, params.lAid_Lat_miao);
							params.lAid_Lng = this.formatToDegree(params.lAid_Lng_du, params.lAid_Lng_fen, params.lAid_Lng_miao);
							delete params.lAid_Lat_du;
							delete params.lAid_Lat_fen;
							delete params.lAid_Lat_miao;
							delete params.lAid_Lng_du;
							delete params.lAid_Lng_fen;
							delete params.lAid_Lng_miao;
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
			handleDel: function(index, row){
				if(!this.hasAuth('delete')){
					this.$message.error('没有权限！');
					return;
				}
				this.$confirm('确定删除该条记录吗? ', '提示', {
					type: 'warning'
				}).then(() => {
					var self = this;
					this.listLoading = true;
					ajaxReq(delUrl, {sAid_ID: row.sAid_ID }, function(res){
						self.listLoading = false;
						self.handleResOperate(res, function(){
							self.getList();
						});
					});
					
				}).catch(() => {
				});
			},
			//edit
			handleEdit: function (index, row) {
				if(!this.hasAuth('edit')){
					this.$message.error('没有权限！');
					return;
				}
				var params = {
						sAid_ID: row.sAid_ID
				};
				var self = this;
				ajaxReq(oneUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.editFormVisible = true;
						self.editForm = Object.assign({}, res.data)
						self.editForm.lAid_Lat_du = self.formatToDu(self.editForm.lAid_Lat);
						self.editForm.lAid_Lat_fen = self.formatToFen(self.editForm.lAid_Lat);
						self.editForm.lAid_Lat_miao = self.formatToMiao(self.editForm.lAid_Lat);
						self.editForm.lAid_Lng_du = self.formatToDu(self.editForm.lAid_Lng);
						self.editForm.lAid_Lng_fen = self.formatToFen(self.editForm.lAid_Lng);
						self.editForm.lAid_Lng_miao = self.formatToMiao(self.editForm.lAid_Lng);
					});
				});
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
							params.lAid_Lat = this.formatToDegree(params.lAid_Lat_du, params.lAid_Lat_fen, params.lAid_Lat_miao);
							params.lAid_Lng = this.formatToDegree(params.lAid_Lng_du, params.lAid_Lng_fen, params.lAid_Lng_miao);
							delete params.lAid_Lat_du;
							delete params.lAid_Lat_fen;
							delete params.lAid_Lat_miao;
							delete params.lAid_Lng_du;
							delete params.lAid_Lng_fen;
							delete params.lAid_Lng_miao;
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
			//bind
			handleDelBind: function(index, row){
				this.$confirm('确定解除绑定吗? ', '提示', {
					type: 'warning'
				}).then(() => {
					var self = this;
					this.listLoading = true;
					var params = {
							sNfc_ID: row.sAid_NfcID,
							id: row.sAid_ID
					};
					ajaxReq(delBindUrl, params, function(res){
						self.listLoading = false;
						self.handleResOperate(res, function(){
							self.getList();
						});
					});
					
				}).catch(() => {
				});
			},
			handleBind: function(index, row){
				var self = this;
				ajaxReq(nfcUrl, {}, function(res){
					self.handleResQuery(res, function(){
						self.nfcOptions = res.data;
						self.bindFormVisible = true;
						self.bindForm = {
								sNfc_ID: '',
								type: 'aid',
								id: row.sAid_ID
						};
					});
				});
			},
			bindClose: function () {
				this.bindFormVisible = false;
				this.bindLoading = false;
				this.$refs.bindForm.resetFields();
			},
			bindSubmit: function () {
				this.$refs.bindForm.validate((valid) => {
					if (valid) {
						this.$confirm('确认提交吗?', '提示', {}).then(() => {
							var self = this;
							this.bindLoading = true;
							var params = Object.assign({}, this.bindForm);
							ajaxReq(bindUrl, params, function(res){
								self.bindLoading = false;
								self.handleResOperate(res, function(){
									self.bindFormVisible = false;
									self.getList();
								});
							});
						});
					}
				});
			},
			//user
			handleUser: function(index, row){
				if(!this.hasAuth('user')){
					this.$message.error('没有权限！');
					return;
				}
				var self = this;
				ajaxReq(aidUserUrl, {sAid_ID: row.sAid_ID}, function(res){
					self.handleResQuery(res, function(){
						self.userFormVisible = true;
						self.userForm.sAid_ID = row.sAid_ID;
						self.userForm.user = [];
						for (var i = 0; i < res.data.length; i++) {
							self.userForm.user.push(res.data[i].sUser_ID);
						}
					});
				});
			},
			userClose: function () {
				this.userFormVisible = false;
				this.userLoading = false;
				this.$refs.userForm.resetFields();
			},
			userSubmit: function () {
				this.$refs.userForm.validate((valid) => {
					if (valid) {
						this.$confirm('确定提交吗?', '提示', {}).then(() => {
							var self = this;
							this.userLoading = true;
							var params = Object.assign({}, this.userForm);
							params.user = params.user.join(",");
							ajaxReq(aidUpdateUserUrl, params, function(res){
								self.userLoading = false;
								self.handleResOperate(res, function(){
									self.userFormVisible = false;
									//self.getList();
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
							message: '失败',
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
			this.handleAidTypeOptions();
			this.handleStationOptions();
			this.handleIconOptions();
			this.handleLightOptions();
			this.handleMarkOptions();
			this.handleNfcAllOptions();
			this.handleStatusOptions();
			this.getList();
			this.handleUserOptions();
		}
	  });
	
	

