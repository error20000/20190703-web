var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/group/findPage";
var addUrl = baseUrl + "api/group/add";
var modUrl = baseUrl + "api/group/update";
var delUrl = baseUrl + "api/group/delete";
var oneUrl = baseUrl + "api/group/findOne";
var excelUrl = baseUrl + "api/group/excel";
var importUrl = baseUrl + "api/group/import";
var menuAuthUrl = baseUrl + "api/menu/menuAuthOptions";
var modAuthUrl = baseUrl + "api/menu/updateGroupMenuAuth";
var getAuthUrl = baseUrl + "api/menu/groupMenuAuth";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sGroup_Name: ''
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
				

				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					sGroup_Name: [
		                { required: true, message: '请输入分组名称.', trigger: 'blur' },
		              ]
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					sGroup_Name: [
		                { required: true, message: '请输入分组名称.', trigger: 'blur' },
		              ]
				},
				//auth
				authFormVisible: false,
				authLoading: false,
				authFormLoading: true,
				authForm: {},
				authFormRules: {},
				menuAuthOptions:[],
				
				//Tips
				tips: {
				    name: 'tips',
				    effect: 'dark',
				    forms: {
				    	title: {
				            content: "说明：<br/><br/>1、超级管理组默认所有权限，不用分配。<br/><br/>2、选中（蓝色）代表授予该用户组该权限，未选中代表不授予该用户组该权限。",
				            placement: "right"
				        }
				    }
				},
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
			},
			handleMenuAuthOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(menuAuthUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.menuAuthOptions = [];
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							node.lenItem = [];
							node.parray = [];
							node.disabled = false;
							node.checkAll = false;
							node.isIndeterminate = false;
							node.checked = [];
							self.menuAuthOptions.push(node);
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
					sGroup_Name: ''
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
					ajaxReq(delUrl, {sGroup_ID: row.sGroup_ID }, function(res){
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
						sGroup_ID: row.sGroup_ID
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
			//auth
			handleAuth: function (index, row) {
				if(!this.hasAuth('auth')){
					this.$message.error('没有权限！');
					return;
				}
				var params = {
						sGroup_ID: row.sGroup_ID
				};
				var self = this;
				self.authFormVisible = true;
				ajaxReq(getAuthUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.authFormLoading = false;
						self.authForm = {
							sGroup_ID: row.sGroup_ID
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
							let menuID = res.data[i].sGroupMenu_MenuID;
							self.authForm[menuID] = res.data[i].sGroupMenu_MenuFunID.split(",");
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
			handleCheckAllChange: function(val, item){
				this.authForm[item.sMenu_ID] = val ? item.lenItem : [];
				item.isIndeterminate = false;
			},
			handleCheckedChange(val, item) {
		        let checkedCount = val.length;
		        item.checkAll = checkedCount === item.lenItem.length;
		        item.isIndeterminate = checkedCount > 0 && checkedCount < item.lenItem.length;
				//this.menuAuthOptions = Object.assign({}, this.menuAuthOptions);
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
								if(key == 'sGroup_ID'){
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
				console.log(flag);
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
			this.handleMenuAuthOptions();
			this.getList();
			
		}
	  });
	
	

