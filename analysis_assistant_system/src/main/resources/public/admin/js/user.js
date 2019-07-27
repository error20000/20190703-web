var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/user/findPage";
var addUrl = baseUrl + "api/user/add";
var modUrl = baseUrl + "api/user/update";
var delUrl = baseUrl + "api/user/delete";
var oneUrl = baseUrl + "api/user/findOne";
var excelUrl = baseUrl + "api/user/excel";
var importUrl = baseUrl + "api/user/import";
var groupUrl = baseUrl + "api/group/findAll";

var ajaxReq = parent.window.ajaxReq || "";


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
				total: 0,
				page: 1,
				rows: 10,
				listLoading: false,
				sels: [],
				preloading: false,
				
				groupOptions: [],

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
						{ validator: (rule, value, callback) => {
					          if (this.addForm.sUser_PassWord2 && value !== this.addForm.sUser_PassWord2 ) {
					            callback(new Error('两次输入密码不匹配!'));
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
		              ]
				},
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
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
					sUser_UserName: '',
					sUser_Nick: '',
					sUser_GroupID: ''
				};
				this.getList();
			},
			//add
			handleAdd: function(){
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
				//this.editFormVisible = true;
				//this.editForm = Object.assign({}, row);
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
	      	this.user = JSON.parse(localStorage.getItem('loginUser'));
	  		if(this.user　==　null){
	  			parent.window.location.href = "login.html";
	  			return;
	  		}
			this.preloading = true;
			this.handleGroupOptions();
			this.getList();
		}
	  });
	
	

