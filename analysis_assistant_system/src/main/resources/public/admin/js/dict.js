var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/dict/findPage";
var addUrl = baseUrl + "api/dict/add";
var modUrl = baseUrl + "api/dict/update";
var delUrl = baseUrl + "api/dict/delete";
var oneUrl = baseUrl + "api/dict/findOne";
var excelUrl = baseUrl + "api/dict/excel";
var importUrl = baseUrl + "api/dict/import";
var userUrl = baseUrl + "api/user/findAll";
var dictTypeUrl = baseUrl + "api/dictType/findAll";
var uploadImgUrl = baseUrl + "api/file/uploadImg";

var ajaxReq = parent.window.ajaxReq || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sDict_NO: '',
					sDict_Name: '',
					sDict_DictTypeNO: ''
				},
				list: [],
				total: 0,
				page: 1,
				rows: 10,
				listLoading: false,
				sels: [],
				preloading: false,
				
				dictTypeOptions: [],
				userOptions: [],
				uploadImgUrl: uploadImgUrl,

				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					sDict_NO: [
		                { required: true, message: '请输入编码.', trigger: 'blur' },
		              ],
		            sDict_DictTypeNO: [
		                { required: true, message: '请选择字典分类.', trigger: 'blur' },
		              ]
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					sDict_NO: [
		                { required: true, message: '请输入编码.', trigger: 'blur' },
		              ],
		            sDict_DictTypeNO: [
		                { required: true, message: '请选择字典分类.', trigger: 'blur' },
		              ]
				},
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
			},
			userAddFormatter: function(row){
				var name = row.sDict_UserID;
				for (var i = 0; i < this.userOptions.length; i++) {
					var item = this.userOptions[i];
					if(row.sDict_UserID == item.sUser_ID){
						name = item.sUser_Nick;
						break
					}
				}
				return name;
			},
			userModFormatter: function(row){
				var name = row.sDict_UpdateUserID;
				for (var i = 0; i < this.userOptions.length; i++) {
					var item = this.userOptions[i];
					if(row.sDict_UpdateUserID == item.sUser_ID){
						name = item.sUser_Nick;
						break
					}
				}
				return name;
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
			dictTypeFormatter: function(row){
				var name = row.sDict_DictTypeNO;
				for (var i = 0; i < this.dictTypeOptions.length; i++) {
					var item = this.dictTypeOptions[i];
					if(row.sDict_DictTypeNO == item.value){
						name = item.name;
						break
					}
				}
				return name;
			},
			handleDictTypeOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictTypeUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.dictTypeOptions = [];
						for (var i = 0; i < res.data.length; i++) {
							self.dictTypeOptions.push({name: res.data[i].sDictType_Name, value: res.data[i].sDictType_NO});
						}
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleFileUpload: function(res, file, obj, key){
				var self = this;
				this.handleResQuery(res, function(){
					self[obj][key] = res.data.path;
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
					sDict_NO: '',
					sDict_Name: '',
					sDict_DictTypeNO: ''
				};
				this.getList();
			},
			//add
			handleAdd: function(){
				this.addFormVisible = true;
				this.addForm = {
					sDict_NO: '',
					sDict_Name: '',
					sDict_DictTypeNO: '',
					sDict_Describe: '',
					sDict_Picture: '',
					sDict_Link: ''
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
			handleDel: function(index, row){
				this.$confirm('确定删除该条记录吗? ', '提示', {
					type: 'warning'
				}).then(() => {
					var self = this;
					this.listLoading = true;
					ajaxReq(delUrl, {sDict_ID: row.sDict_ID }, function(res){
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
					sDict_ID: row.sDict_ID
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
			getLoginToken();
			this.preloading = true;
			this.handleDictTypeOptions();
			this.handleUserOptions();
			this.getList();
		}
	  });
	
	

