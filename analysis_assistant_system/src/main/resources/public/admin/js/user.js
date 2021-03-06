var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/user/findPage";
var addUrl = baseUrl + "api/user/add";
var modUrl = baseUrl + "api/user/update";
var delUrl = baseUrl + "api/user/delete";
var oneUrl = baseUrl + "api/user/findOne";
var excelUrl = baseUrl + "api/user/excel";
var importUrl = baseUrl + "api/user/import";
var groupUrl = baseUrl + "api/group/findAll";
var resetPwdUrl = baseUrl + "api/user/resetPWD";
var menuAuthUrl = baseUrl + "api/menu/menuAuthOptions";
var modAuthUrl = baseUrl + "api/menu/updateUserMenuAuth";
var getAuthUrl = baseUrl + "api/menu/userMenuAuth";
var getGroupAuthUrl = baseUrl + "api/menu/groupMenuAuth";
var aidAllUrl = baseUrl + "api/aid/findAll";
var userAidUrl = baseUrl + "api/user/aid";
var userUpdateAidUserUrl = baseUrl + "api/user/updateAid";
var storeAllUrl = baseUrl + "api/store/findAll";
var userStoreUrl = baseUrl + "api/user/store";
var userUpdateStoreUserUrl = baseUrl + "api/user/updateStore";
var dictUrl = baseUrl + "api/dict/findList";
var userStationUrl = baseUrl + "api/user/station";
var userUpdateStationUserUrl = baseUrl + "api/user/updateStation";


var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";
var pwdReg = parent.window.pwdReg || "";
var pwdRegStr = parent.window.pwdRegStr || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sUser_UserName: '',
					sUser_Nick: '',
					sUser_GroupID: ''
				},
				list: [],
				tableMaxWidth: {
					'1': 0,
					'2': 0,
					'3': 0,
					'4': 0,
					'5': 0,
					'6': 0,
					'7': 0,
					'8': 0,
					'9': 0,
					'10': 0,
					'11': 0,
				},
				total: 0,
				page: 1,
				rows: 10,
				listLoading: false,
				sels: [],
				preloading: false,
				
				menuFuns: gMenuFuns,
				authCache: {},
				
				groupOptions: [],
				pwdReg: pwdReg,
				pwdRegStr: pwdRegStr,
				aidOptions: [],
				stationDictNo: 'AidStation',
				stationOptions: [],

				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					sUser_UserName: [
		                { required: true, message: '请输入用户名.', trigger: 'blur' },
		              ],
		            sUser_PassWord: [
		                { required: true, message: '请输入密码.', trigger: 'blur' },
						/*{ validator: (rule, value, callback) => {
					          if (this.addForm.sUser_PassWord2 && value !== this.addForm.sUser_PassWord2 ) {
					            callback(new Error('两次输入密码不匹配!'));
					          } else {
					            callback();
					          }
						}, trigger: 'blur' },*/
						{ validator: (rule, value, callback) => {
					          if (this.pwdReg && !this.pwdReg.test(this.addForm.sUser_PassWord) ) {
					            callback(new Error('密码格式不正确!'+this.pwdRegStr));
					          } else {
					            callback();
					          }
						}, trigger: 'blur' }
		              ],
		            sUser_PassWord2: [
						{ required: true, message: '请再次输入密码.', trigger: 'blur' },
						{ validator: (rule, value, callback) => {
					          if (this.addForm.sUser_PassWord && value !== this.addForm.sUser_PassWord) {
					            callback(new Error('两次输入密码不匹配!'));
					          } else {
					            callback();
					          }
						}, trigger: 'blur' }
				      ],
				    sUser_Nick: [
		                { required: true, message: '请输入用户昵称.', trigger: 'blur' },
		              ],
		            sUser_GroupID: [
		                { required: true, message: '请选择用户组.', trigger: 'blur' },
		              ]
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					sUser_UserName: [
		                { required: true, message: '请输入用户名.', trigger: 'blur' },
		              ],
				    sUser_Nick: [
		                { required: true, message: '请输入用户昵称.', trigger: 'blur' },
		              ],
		            sUser_GroupID: [
		                { required: true, message: '请选择用户组.', trigger: 'blur' },
		              ]
				},
				//reset
				pwdFormVisible: false,
				pwdLoading: false,
				pwdForm: {},
				pwdFormRules: {
		            sUser_PassWord: [
		                { required: true, message: '请输入密码.', trigger: 'blur' },
						/*{ validator: (rule, value, callback) => {
					          if (this.pwdForm.sUser_PassWord2 && value !== this.pwdForm.sUser_PassWord2 ) {
					            callback(new Error('两次输入密码不匹配!'));
					          } else {
					            callback();
					          }
						}, trigger: 'blur' },*/
						{ validator: (rule, value, callback) => {
					          if (this.pwdReg && !this.pwdReg.test(this.pwdForm.sUser_PassWord) ) {
					            callback(new Error('密码格式不正确!'+this.pwdRegStr));
					          } else {
					            callback();
					          }
						}, trigger: 'blur' }
		              ],
		            sUser_PassWord2: [
						{ required: true, message: '请再次输入密码.', trigger: 'blur' },
						{ validator: (rule, value, callback) => {
					          if (this.pwdForm.sUser_PassWord && value !== this.pwdForm.sUser_PassWord) {
					            callback(new Error('两次输入密码不匹配!'));
					          } else {
					            callback();
					          }
						}, trigger: 'blur' }
				      ]
				},
				//auth
				authFormVisible: false,
				authLoading: false,
				authForm: {},
				authFormRules: {},
				menuAuthOptions:[],
				loginAuthOptions:[],
				userAuthOptions:[],
				groupAuthOptions:[],
				userAuthWidthChange: false,
				userAuthWidthName: '展开>>',
				leftClassObject: {
					large: false
				},
				rightClassObject: {
					small: false
				},
				//aid
				aidFormVisible: false,
				aidLoading: false,
				aidForm: {
					aid: []
				},
				aidFormRules: {},
				activeAidName: '1',
				stationFormVisible: false,
				stationLoading: false,
				stationForm: {
					station: []
				},
				stationFormRules: {},
				//store
				storeFormVisible: false,
				storeLoading: false,
				storeForm: {},
				storeFormRules: {},
				storeTree: '',
				storeChecked: [],        
				defaultProps: {
			          children: 'children',
			          label: 'sStore_Name'
			    },
				
				//Tips
				tips: {
				    name: 'tips',
				    effect: 'dark',
				    forms: {
				    	title: {
				            content: "说明：<br/><br/>1、超级管理员默认所有权限，可不用分配。<br/><br/>2、选中（蓝色）代表授予该用户该权限，未选中代表不授予该用户该权限。",
				            placement: "right"
				        },
				    	station: {
				            content: "说明：<br/><br/>1、超级管理员默认所有权限，可不用分配。<br/><br/>2、选中（蓝色）代表授予该用户该权限，未选中代表不授予该用户该权限。<br/><br/>3、如果用户拥有该航标站权限，即用户拥有该航标站下所有航标权限。",
				            placement: "right"
				        }
				    }
				},
				
				uploadVisible: false,
				uploadTemp: [],
				importUrl: "",
				
				user: ''
			}
		},
		watch:{

			list: function(){
				this.$nextTick(function () { 
					for ( var key in this.tableMaxWidth) {
						let tempMaxWidth = 0;
						try {
							for (let i = 0; i <  document.getElementsByClassName("table-drugs-"+key).length; i++){
								let element =  document.getElementsByClassName("table-drugs-"+key)[i];
								let width = element.querySelectorAll('div')[0].offsetWidth;
								tempMaxWidth = tempMaxWidth < width ? width : tempMaxWidth;
							}
						} catch (error) {
							console.error(error);
						}
						this.$set(this.tableMaxWidth, key, tempMaxWidth);
					}
	            });
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm');
			},
			groupFormatter: function(row){
				var name = row.sUser_GroupID;
				for (var i = 0; i < this.groupOptions.length; i++) {
					var item = this.groupOptions[i];
					if(row.sUser_GroupID == item.value){
						name = item.name;
						break
					}
				}
				return name;
			},
			handleGroupOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(groupUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.groupOptions = [];
						for (var i = 0; i < res.data.length; i++) {
							self.groupOptions.push({name: res.data[i].sGroup_Name, value: res.data[i].sGroup_ID});
						}
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleMenuAuthOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(menuAuthUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.menuAuthOptions = [];
						self.groupAuthOptions = [];
						for (var i = 0; i < res.data.length; i++) {
							var node = Object.assign({}, res.data[i]);
							node.lenItem = [];
							node.parray = [];
							node.disabled = false;
							node.checkAll = false;
							node.isIndeterminate = false;
							node.checked = [];
							self.menuAuthOptions.push(Object.assign({}, node));
							self.groupAuthOptions.push(Object.assign({}, node));
						}
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleAidOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(aidAllUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.aidOptions = res.data;
						//排序--名称
						for (var i = 0; i < self.aidOptions.length; i++) {
							for (var j = i; j < self.aidOptions.length; j++) {
								if(self.aidOptions[i].sAid_Name > self.aidOptions[j].sAid_Name){
									let temp = self.aidOptions[i];
									self.aidOptions[i] = self.aidOptions[j];
									self.aidOptions[j] = temp;
								}
							}
						}
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleStoreOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(storeAllUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.storeTree = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleStationOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.stationDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.stationOptions = res.data;
						//排序--名称
						for (var i = 0; i < self.stationOptions.length; i++) {
							for (var j = i; j < self.stationOptions.length; j++) {
								if(self.stationOptions[i].sDict_Name > self.stationOptions[j].sDict_Name){
									let temp = self.stationOptions[i];
									self.stationOptions[i] = self.stationOptions[j];
									self.stationOptions[j] = temp;
								}
							}
						}
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
					sUser_UserName: '',
					sUser_Nick: '',
					sUser_GroupID: ''
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
				this.addForm = {};
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
					ajaxReq(delUrl, {sUser_ID: row.sUser_ID }, function(res){
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
					sUser_ID: row.sUser_ID
				};
				var self = this;
				ajaxReq(oneUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.editFormVisible = true;
						self.editForm = Object.assign({}, res.data)
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
			//pwd
			handleResetPWD: function (index, row) {
				if(!this.hasAuth('resetPwd')){
					this.$message.error('没有权限！');
					return;
				}
				this.pwdFormVisible = true;
				this.pwdForm = {
						sUser_ID: row.sUser_ID
				};
			},
			pwdClose: function () {
				this.pwdFormVisible = false;
				this.pwdLoading = false;
				this.$refs.pwdForm.resetFields();
			},
			pwdSubmit: function () {
				this.$refs.pwdForm.validate((valid) => {
					if (valid) {
						this.$confirm('确认重置该用户的密码吗?', '提示', {}).then(() => {
							var self = this;
							this.pwdLoading = true;
							var params = Object.assign({}, this.pwdForm);
							ajaxReq(resetPwdUrl, params, function(res){
								self.pwdLoading = false;
								self.handleResOperate(res, function(){
									self.pwdFormVisible = false;
									self.getList();
								});
							});
							
						});
					}
				});
			},
			//auth
			handleGroupAuth: function (sGroup_ID) {
				var params = {
						sGroup_ID: sGroup_ID
				};
				var self = this;
				ajaxReq(getGroupAuthUrl, params, function(res){
					self.handleResQuery(res, function(){
						for (var i = 0; i < self.groupAuthOptions.length; i++) {
							var node = self.groupAuthOptions[i];
							var array = [];
							array.push(node.sMenu_Name);
							self.findParent(node, array);
							node.parray = array;
							node.disabled = true;
							//默认选中
							var lenItem = []; 
							for (var j = 0; j < res.data.length; j++) {
								let menuID = res.data[j].sGroupMenu_MenuID;
								if(menuID == node.sMenu_ID){
									node.checked = res.data[j].sGroupMenu_MenuFunID.split(",");
									//只显示选中项
									for (var m = 0; m < node.checked.length; m++) {
										for (var k = 0; k < node.children.length; k++) {
											if(node.children[k].sMFun_ID == node.checked[m]){
												lenItem.push(node.children[k]);
											}
										}
										
									}
									break;
								}
							}
							node.lenItem = lenItem;
							
						}
						
					});
				});
			},
			handleAuth: function (index, row) {
				if(!this.hasAuth('auth')){
					this.$message.error('没有权限！');
					return;
				}
				this.handleGroupAuth(row.sUser_GroupID);
				var params = {
						sUser_ID: row.sUser_ID
				};
				var self = this;
				self.authFormVisible = true;
				ajaxReq(getAuthUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.authForm = {
								sUser_ID: row.sUser_ID
						};
						for (var i = 0; i < self.menuAuthOptions.length; i++) {
							var node = self.menuAuthOptions[i];
							var array = [];
							//array.push(node.sMenu_Name);
							self.findParent(node, array);
							node.parray = array;
							node.disabled = node.lMenu_StatusFlag ? false : true;
							//可用子集
							var lenItem = []; 
							for (var j = 0; j < node.children.length; j++) {
								if(node.children[j].lMFun_StatusFlag){
									lenItem.push(node.children[j].sMFun_ID);
								}
							}
							node.lenItem = lenItem;
							node.checkAll = false;
							node.isIndeterminate = false;
					        
							self.$set(self.authForm, node.sMenu_ID, []);
						}
						//默认选中
						for (var i = 0; i < res.data.length; i++) {
							let menuID = res.data[i].sUserMenu_MenuID;
							self.authForm[menuID] = res.data[i].sUserMenu_MenuFunID.split(",");
							//默认选中状态
							for (var j = 0; j < self.menuAuthOptions.length; j++) {
								var node = self.menuAuthOptions[j];
								if(menuID == node.sMenu_ID){
									let cdata = self.authForm[node.sMenu_ID];
									node.checkAll = node.lenItem.length === cdata.length;
									node.isIndeterminate = cdata.length > 0 && cdata.length < node.lenItem.length;
									break;
								}
							}
						}
						
					});
				});
			},
			findParent: function(node, array){
				var parent = node.parent;
				for (var i = 0; i < parent.length; i++) {
					array.unshift(parent[i].sMenu_Name);
					this.findParent(parent[i], array);
				}
			},
			stopClick: function(){
				$(".auth_label").click(function(event){
		            alert("stopClick");
		            event.stopPropagation();    //  阻止事件冒泡
		            return false
		        });
			},
			handleChangeWidth: function(){
				this.userAuthWidthChange = !this.userAuthWidthChange;
				if(this.userAuthWidthChange){
					this.userAuthWidthName = '收起<<';
					this.leftClassObject.large = true;
					this.rightClassObject.small = true;
				}else{
					this.userAuthWidthName = '展开>>';
					this.leftClassObject.large = false;
					var self = this;
					setTimeout(function(){
						self.rightClassObject.small = false;
					}, 500);
				}
			},
			handleCheckAllChange: function(val, item){
				this.authForm[item.sMenu_ID] = val ? item.lenItem : [];
				item.isIndeterminate = false;
			},
			handleCheckedChange(val, item) {
		        let checkedCount = val.length;
		        item.checkAll = checkedCount === item.lenItem.length;
		        item.isIndeterminate = checkedCount > 0 && checkedCount < item.lenItem.length;
		    },
			authClose: function () {
				this.authFormVisible = false;
				this.authLoading = false;
				this.$refs.authForm.resetFields();
			},
			authSubmit: function () {
				this.$refs.authForm.validate((valid) => {
					if (valid) {
						this.$confirm('确认提交吗?', '提示', {}).then(() => {
							var self = this;
							this.authLoading = true;
							var params = Object.assign({}, this.authForm);
							for ( var key in params) {
								if(key == 'sUser_ID'){
									continue;
								}
								params[key] = params[key].join(",");
							}
							ajaxReq(modAuthUrl, params, function(res){
								self.authLoading = false;
								self.handleResOperate(res, function(){
									self.authFormVisible = false;
									self.getList();
								});
							});
							
						});
					}
				});
			},
			//aid
			handleAid: function(index, row){
				if(!this.hasAuth('aid')){
					this.$message.error('没有权限！');
					return;
				}
				var self = this;
				self.aidForm.sUser_ID = row.sUser_ID;
				self.aidForm.aid = [];
				ajaxReq(userAidUrl, {sUser_ID: row.sUser_ID}, function(res){
					self.handleResQuery(res, function(){
						self.aidFormVisible = true;
						for (var i = 0; i < res.data.length; i++) {
							self.aidForm.aid.push(res.data[i].sAid_ID);
						}
					});
				});
				self.stationForm.sUser_ID = row.sUser_ID;
				self.stationForm.station = [];
				ajaxReq(userStationUrl, {sUser_ID: row.sUser_ID}, function(res){
					self.handleResQuery(res, function(){
						for (var i = 0; i < res.data.length; i++) {
							self.stationForm.station.push(res.data[i].sUserStation_Station);
						}
					});
				});
			},
			aidClose: function () {
				this.aidFormVisible = false;
				this.aidLoading = false;
				this.$refs.aidForm.resetFields();
			},
			aidSubmit: function () {
				this.$refs.aidForm.validate((valid) => {
					if (valid) {
						this.$confirm('确定提交吗?', '提示', {}).then(() => {
							var self = this;
							this.userLoading = true;
							var params = Object.assign({}, this.aidForm);
							params.aid = params.aid.join(",");
							ajaxReq(userUpdateAidUserUrl, params, function(res){
								self.userLoading = false;
								self.handleResOperate(res, function(){
									self.aidFormVisible = false;
									//self.getList();
								});
							});
						});
					}
				});
			},
			stationClose: function () {
				this.aidFormVisible = false;
				this.stationLoading = false;
				this.$refs.stationForm.resetFields();
			},
			stationSubmit: function () {
				this.$refs.stationForm.validate((valid) => {
					if (valid) {
						this.$confirm('确定提交吗?', '提示', {}).then(() => {
							var self = this;
							this.stationLoading = true;
							var params = Object.assign({}, this.stationForm);
							params.station = params.station.join(",");
							ajaxReq(userUpdateStationUserUrl, params, function(res){
								self.stationLoading = false;
								self.handleResOperate(res, function(){
									self.aidFormVisible = false;
									//self.getList();
								});
							});
						});
					}
				});
			},
			//store
			handleStore: function(index, row){
				if(!this.hasAuth('store')){
					this.$message.error('没有权限！');
					return;
				}
				var self = this;
				self.storeForm.sUser_ID = row.sUser_ID;
				self.storeForm.store = [];
				ajaxReq(userStoreUrl, {sUser_ID: row.sUser_ID}, function(res){
					self.handleResQuery(res, function(){
						self.storeFormVisible = true;
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							var storeLeaf = node.sUserStore_StoreLv1ID;
							storeLeaf = node.sUserStore_StoreLv2ID ? node.sUserStore_StoreLv2ID : storeLeaf;
							storeLeaf = node.sUserStore_StoreLv3ID ? node.sUserStore_StoreLv3ID : storeLeaf;
							storeLeaf = node.sUserStore_StoreLv4ID ? node.sUserStore_StoreLv4ID : storeLeaf;
							self.storeForm.store.push(storeLeaf);
						}
					});
				});
			},
			storeClose: function () {
				this.storeFormVisible = false;
				this.storeLoading = false;
				this.$refs.storeForm.resetFields();
			},
			storeSubmit: function () {
				this.$refs.storeForm.validate((valid) => {
					if (valid) {
						this.$confirm('确定提交吗?', '提示', {}).then(() => {
							var self = this;
							this.storeLoading = true;
							var params = {
								sUser_ID: this.storeForm.sUser_ID,
								store: []
							};
							var checkedNodes = this.$refs.storeTree.getCheckedNodes();
							for (var i = 0; i < checkedNodes.length; i++) {
								var temp = checkedNodes[i];
								if(temp.children){
									continue;
								}
								var node = {};
								if(temp.sStore_Level1){
									node.sStore_Level1 = temp.sStore_Level1;
									if(temp.sStore_Level2){
										node.sStore_Level2 = temp.sStore_Level2;
										if(temp.sStore_Level3){
											node.sStore_Level3 = temp.sStore_Level3;
											node.sStore_Level4 = temp.sStore_ID;
										}else{
											node.sStore_Level3 = temp.sStore_ID;
										}
									}else{
										node.sStore_Level2 = temp.sStore_ID;
									}
								}else{
									node.sStore_Level1 = temp.sStore_ID;
								}
								params.store.push(node);
							}
							params.store = JSON.stringify(params.store);
							
							ajaxReq(userUpdateStoreUserUrl, params, function(res){
								self.storeLoading = false;
								self.handleResOperate(res, function(){
									self.storeFormVisible = false;
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
				parent.window.open(excelUrl + "?token=" + loginToken);
			},
			//import
			handleImportSuccess: function(res){
				var self = this;
				this.handleResOperate(res, function(){
					self.uploadVisible = false;
					self.getList();
				});
			},
			importClose: function(){
				this.uploadVisible = false;
			},
			getImport: function(){
				this.importUrl = importUrl + "?token=" + loginToken;
				this.uploadVisible = true;
				this.uploadTemp = [
					{
						sUser_UserName: 'test1', 
						sUser_PassWord: 'e10adc3949ba59abbe56e057f20f883e', 
						sUser_Nick: '张三', 
						sUser_GroupID: '超级管理组' 
					},
					{
						sUser_UserName: 'test2', 
						sUser_PassWord: 'e10adc3949ba59abbe56e057f20f883e', 
						sUser_Nick: '李四', 
						sUser_GroupID: '管理员组'  
					},
					{
						sUser_UserName: 'test3', 
						sUser_PassWord: 'e10adc3949ba59abbe56e057f20f883e', 
						sUser_Nick: '王五', 
						sUser_GroupID: '普通用户组'
					}
				];
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
			this.handleGroupOptions();
			this.handleMenuAuthOptions();
			this.getList();
			this.handleAidOptions();
			this.handleStoreOptions();
			this.handleStationOptions();
		}
	  });
	
	

