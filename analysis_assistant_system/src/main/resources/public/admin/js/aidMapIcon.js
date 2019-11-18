var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/aidMapIcon/findPage";
var addUrl = baseUrl + "api/aidMapIcon/add";
var modUrl = baseUrl + "api/aidMapIcon/update";
var delUrl = baseUrl + "api/aidMapIcon/delete";
var oneUrl = baseUrl + "api/aidMapIcon/findOne";
var excelUrl = baseUrl + "api/aidMapIcon/excel";
var importUrl = baseUrl + "api/aidMapIcon/import";

var dictUrl = baseUrl + "api/dict/findList";
var aidAllUrl = baseUrl + "api/aid/findAll";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sAidIcon_AidID: '',
					sAidIcon_Status: ''
				},
				list: [],
				tableMaxWidth: {
					'1': 0,
					'2': 0,
					'3': 0,
					'4': 0,
					'5': 0,
				},
				total: 0,
				page: 1,
				rows: 10,
				listLoading: false,
				sels: [],
				preloading: false,
				
				menuFuns: gMenuFuns,
				authCache: {},
				
				aidOptions: [],
				statusDictNo: 'AidStatus',
				statusOptions: [],
				mapIconDictNo: 'MapIcon',
				mapIconOptions: [],

				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					sAidIcon_AidID: [
		                { required: true, message: '请选择航标.', trigger: 'blur' },
		              ],
		            sAidIcon_Status: [
		                { required: true, message: '请选择状态.', trigger: 'blur' },
		              ]
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					sAidIcon_AidID: [
		                { required: true, message: '请选择航标.', trigger: 'blur' },
		              ],
		            sAidIcon_Status: [
		                { required: true, message: '请选择状态.', trigger: 'blur' },
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
			statusFormatter: function(row){
				var name = row.sAidIcon_Status;
				for (var i = 0; i < this.statusOptions.length; i++) {
					var item = this.statusOptions[i];
					if(row.sAidIcon_Status == item.sDict_NO){
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
				var name = row.sAidIcon_StatusIcon;
				for (var i = 0; i < this.mapIconOptions.length; i++) {
					var item = this.mapIconOptions[i];
					if(row.sAidIcon_StatusIcon == item.sDict_NO){
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
			aidFormatter: function(row){
				var name = row.sAidIcon_AidID;
				for (var i = 0; i < this.aidOptions.length; i++) {
					var item = this.aidOptions[i];
					if(row.sAidIcon_AidID == item.sAid_ID){
						name = item.sAid_Name;
						break
					}
				}
				return name;
			},
			handleAidOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(aidAllUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.aidOptions = res.data;
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
					sAidIcon_AidID: '',
					sAidIcon_Status: ''
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
					sAidIcon_Status: '',
					sAidIcon_StatusIcon: '',
					sAidIcon_AidID: ''
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
					ajaxReq(delUrl, {sAidIcon_ID: row.sAidIcon_ID }, function(res){
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
					sAidIcon_ID: row.sAidIcon_ID
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
						sAidIcon_AidID: '航标1', 
						sAidIcon_Status: '正常', 
						sAidIcon_StatusIcon: '正常', 
					},
					{

						sAidIcon_AidID: '航标1', 
						sAidIcon_Status: '异常', 
						sAidIcon_StatusIcon: '异常',  
					},
					{

						sAidIcon_AidID: '航标2', 
						sAidIcon_Status: '正常', 
						sAidIcon_StatusIcon: '正常', 
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
			this.handleAidOptions();
			this.handleStatusOptions();
			this.handleMapIconOptions();
			this.getList();
		}
	  });
	
	

