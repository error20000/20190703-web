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
var delBatchUrl = baseUrl + "api/dict/delBatch";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


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
					'12': 0,
				},
				total: 0,
				page: 1,
				rows: 10,
				listLoading: false,
				sels: [],
				preloading: false,
				
				menuFuns: gMenuFuns,
				authCache: {},
				
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
					if(row.sDict_DictTypeNO == item.sDictType_NO){
						name = item.sDictType_Name;
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
						self.dictTypeOptions = res.data;
						for (var i = 0; i < self.dictTypeOptions.length; i++) {
							for (var j = i; j < self.dictTypeOptions.length; j++) {
								if(self.dictTypeOptions[i].sDictType_Name > self.dictTypeOptions[j].sDictType_Name){
									var temp = self.dictTypeOptions[i];
									self.dictTypeOptions[i] = self.dictTypeOptions[j];
									self.dictTypeOptions[j] = temp;
								}
							}
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
					sDict_NO: '',
					sDict_Name: '',
					sDict_DictTypeNO: ''
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
				if(!this.hasAuth('delete')){
					this.$message.error('没有权限！');
					return;
				}
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
			//BatchDel
			handleBatchDel: function(index, row){
				if(!this.hasAuth('delBatch')){
					this.$message.error('没有权限！');
					return;
				}
				var ids = "";
				for (var i = 0; i < this.sels.length; i++) {
					ids += "," + this.sels[i].sDict_ID;
				}
				ids = ids ? ids.substring(1) : "";
				this.$confirm('确定删除这些记录吗? ', '提示', {
					type: 'warning'
				}).then(() => {
					var self = this;
					this.listLoading = true;
					ajaxReq(delBatchUrl, {ids: ids }, function(res){
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
						sDict_NO: 'test1', 
						sDict_Name: '测试一', 
						sDict_DictTypeNO: '航标种类', 
						lDict_SysFlag: 1 , 
						sDict_Describe: '' , 
						sDict_Picture: '' , 
						sDict_Link: '' , 
						sDict_Color: '#000000' 
					},
					{
						sDict_NO: 'test2', 
						sDict_Name: '测试二', 
						sDict_DictTypeNO: '航标种类', 
						lDict_SysFlag: 1 , 
						sDict_Describe: '' , 
						sDict_Picture: '' , 
						sDict_Link: '' , 
						sDict_Color: '#ffffff' 
					},
					{
						sDict_NO: 'test3', 
						sDict_Name: '测试三', 
						sDict_DictTypeNO: '灯质明灭', 
						lDict_SysFlag: 0 , 
						sDict_Describe: '' , 
						sDict_Picture: '' , 
						sDict_Link: '' , 
						sDict_Color: '' 
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
			this.handleDictTypeOptions();
			this.handleUserOptions();
			this.getList();
		}
	  });
	
	

