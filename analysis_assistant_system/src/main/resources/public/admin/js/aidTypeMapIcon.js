var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/aidTypeMapIcon/findPage";
var addUrl = baseUrl + "api/aidTypeMapIcon/add";
var modUrl = baseUrl + "api/aidTypeMapIcon/update";
var delUrl = baseUrl + "api/aidTypeMapIcon/delete";
var oneUrl = baseUrl + "api/aidTypeMapIcon/findOne";
var excelUrl = baseUrl + "api/aidTypeMapIcon/excel";
var importUrl = baseUrl + "api/aidTypeMapIcon/import";

var dictUrl = baseUrl + "api/dict/findList";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sAidTypeIcon_Type: '',
					sAidTypeIcon_Status: ''
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
				
				statusDictNo: 'AidStatus',
				statusOptions: [],
				mapIconDictNo: 'MapIcon',
				mapIconOptions: [],
				aidTypeDictNo: 'AidType',
				aidTypeOptions: [],

				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					sAidTypeIcon_Type: [
		                { required: true, message: '请选择航标种类.', trigger: 'blur' },
		              ],
		            sAidTypeIcon_Status: [
		                { required: true, message: '请选择状态.', trigger: 'blur' },
		              ]
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					sAidTypeIcon_Type: [
		                { required: true, message: '请选择航标种类.', trigger: 'blur' },
		              ],
		            sAidTypeIcon_Status: [
		                { required: true, message: '请选择状态.', trigger: 'blur' },
		              ]
				},
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
			},
			statusFormatter: function(row){
				var name = row.sAidTypeIcon_Status;
				for (var i = 0; i < this.statusOptions.length; i++) {
					var item = this.statusOptions[i];
					if(row.sAidTypeIcon_Status == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleStatusOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.statusDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.statusOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			mapIconFormatter: function(row){
				var name = row.sAidTypeIcon_StatusIcon;
				for (var i = 0; i < this.mapIconOptions.length; i++) {
					var item = this.mapIconOptions[i];
					if(row.sAidTypeIcon_StatusIcon == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			mapIconPicFormatter: function(row){
				var name = row.sAidTypeIcon_StatusIcon;
				for (var i = 0; i < this.mapIconOptions.length; i++) {
					var item = this.mapIconOptions[i];
					if(row.sAidTypeIcon_StatusIcon == item.sDict_NO){
						name = item.sDict_Picture;
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
			aidTypeFormatter: function(row){
				var name = row.sAidTypeIcon_Type;
				for (var i = 0; i < this.aidTypeOptions.length; i++) {
					var item = this.aidTypeOptions[i];
					if(row.sAidTypeIcon_Type == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleAidTypeOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.aidTypeDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.aidTypeOptions = res.data;
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
					sAidTypeIcon_Type: '',
					sAidTypeIcon_Status: ''
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
					sAidTypeIcon_Status: '',
					sAidTypeIcon_StatusIcon: '',
					sAidTypeIcon_Type: ''
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
					ajaxReq(delUrl, {sAidTypeIcon_ID: row.sAidTypeIcon_ID }, function(res){
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
					sAidTypeIcon_ID: row.sAidTypeIcon_ID
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
			this.handleAidTypeOptions();
			this.handleStatusOptions();
			this.handleMapIconOptions();
			this.getList();
		}
	  });
	
	

