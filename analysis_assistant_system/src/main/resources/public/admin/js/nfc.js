var baseUrl = parent.window.baseUrl || '../';

var addUrl = baseUrl + "api/nfc/add";
var modUrl = baseUrl + "api/nfc/update";
var delUrl = baseUrl + "api/nfc/delete";
var queryUrl = baseUrl + "api/nfc/findPage";
var oneUrl = baseUrl + "api/nfc/findOne";
var excelUrl = baseUrl + "api/nfc/excel";
var importUrl = baseUrl + "api/nfc/import";
var viewBindUrl = baseUrl + "api/nfc/viewBind";
var delBindUrl = baseUrl + "api/nfc/delBind";
var aidUnbindUrl = baseUrl + "api/aid/unbind";
var aidBindUrl = baseUrl + "api/aid/bind";
var equipUnbindUrl = baseUrl + "api/equip/unbind";
var equipBindUrl = baseUrl + "api/equip/bind";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sNfc_NO: '',
					lNfc_StatusFlag: ''
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
				
				statusOptions: [
					{name: '未使用', value: '0'},
					{name: '已使用', value: '1'}
				],

				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					sNfc_NO: [
		                { required: true, message: '请输入NFC编码', trigger: 'blur' },
		              ]
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					sNfc_NO: [
		                { required: true, message: '请输入NFC编码', trigger: 'blur' },
		              ]
				},
				//view
				viewFormVisible: false,
				viewForm: {
					nfc: {},
					type: "",
					aid: {},
					equip: {}
				},
				
				bindTypeOptions: [
					{name: '器材', value: 'equip'},
					{name: '航标', value: 'aid'}
				],
				bindIdOptions: [],
				bindFormVisible: false,
				bindLoading: false,
				bindForm: {},
				bindFormRules: {},
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
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
			//add
			handleAdd: function(){
				if(!this.hasAuth('add')){
					this.$message.error('没有权限！');
					return;
				}
				this.addFormVisible = true;
				this.addForm = {
						sNfc_Name: '',
						sNfc_NO: ''
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
			//edit
			handleEdit: function (index, row) {
				if(!this.hasAuth('edit')){
					this.$message.error('没有权限！');
					return;
				}
				var params = {
						sNfc_ID: row.sNfc_ID
				};
				var self = this;
				ajaxReq(oneUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.editFormVisible = true;
						self.editForm = Object.assign({}, res.data)
					});
				});

				//this.editFormVisible = true;
				//this.editForm = Object.assign({}, row);
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
					ajaxReq(delUrl, {sNfc_ID: row.sNfc_ID }, function(res){
						self.listLoading = false;
						self.handleResOperate(res, function(){
							self.getList();
						});
					});
					
				}).catch(() => {
				});
			},
			//view
			handleView: function(index, row){
				var self = this;
				ajaxReq(viewBindUrl, {sNfc_ID: row.sNfc_ID }, function(res){
					self.handleResQuery(res, function(){
						self.viewFormVisible = true;
						self.viewForm = Object.assign({}, res.data);
					});
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
							sNfc_ID: row.sNfc_ID,
							id: ''
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
			bindTypeChange: function(){
				var type = this.bindForm.type;
				var self = this;
				switch (type) {
				case 'equip':
					ajaxReq(equipUnbindUrl, {}, function(res){
						self.handleResQuery(res, function(){
							self.bindIdOptions = [];
							for (var i = 0; i < res.data.length; i++) {
								self.bindIdOptions.push({name: res.data[i].sEquip_Name, value: res.data[i].sEquip_ID});
							}
						});
					});
					break;
				case 'aid':
					ajaxReq(aidUnbindUrl, {}, function(res){
						self.handleResQuery(res, function(){
							self.bindIdOptions = [];
							for (var i = 0; i < res.data.length; i++) {
								self.bindIdOptions.push({name: res.data[i].sAid_Name, value: res.data[i].sAid_ID});
							}
						});
					});
					break;

				default:
					break;
				}
			},
			handleBind: function(index, row){
				var self = this;
				ajaxReq(oneUrl, {sNfc_ID: row.sNfc_ID }, function(res){
					self.handleResQuery(res, function(){
						if(!res.data.lNfc_StatusFlag){
							self.bindFormVisible = true;
							self.bindForm = {
									sNfc_ID: row.sNfc_ID,
									type: '',
									id: ''
							};
						}
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
							var type = this.bindForm.type;
							switch (type) {
							case 'equip':
								ajaxReq(equipBindUrl, params, function(res){
									self.bindLoading = false;
									self.handleResOperate(res, function(){
										self.bindFormVisible = false;
										self.getList();
									});
								});
								break;
							case 'aid':
								ajaxReq(aidBindUrl, params, function(res){
									self.bindLoading = false;
									self.handleResOperate(res, function(){
										self.bindFormVisible = false;
										self.getList();
									});
								});
								break;

							default:
								break;
							}
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
			
			//reset
			reset: function(){
				this.filters = {
					sNfc_NO: '',
					lNfc_StatusFlag: ''
				};
				this.getList();
			},
			getExcel: function(){
				this.query();
				var params = "";
				for ( var key in this.filters) {
					if(this.filters[key]){
						params += "&"+key+"="+this.filters[key];
					}
				}
				params += "&userId="+this.user.pid;
				parent.window.open(excelUrl+(params ? "?"+params.substring(1) : ""));
			},
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
			this.getList();
		}
	  });
	
	

