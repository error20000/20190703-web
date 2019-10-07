var baseUrl = parent.window.baseUrl || '../';

var oneUrl = baseUrl + "api/sys/findOne";
var modUrl = baseUrl + "api/sys/update";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
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
				

				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {
					lSys_StoreValue1: '',
					lSys_StoreValue2: '',
					lSys_EquipValue1: '',
					lSys_EquipValue2: ''
				},
				editFormRules: {
				},
				
				//Tips
				tips: {
				    name: 'tips',
				    effect: 'dark',
				    forms: {
				    	sSys_MapService: {
				            content: "说明：<br/><br/>1、该项可以修改地图的底图。",
				            placement: "right"
				        },
				        lSys_MapLng: {
				            content: "说明：<br/><br/>1、当定位失败或者没有定位时，地图以该经度为中心的经度显示地图。<br/><br/>2、单位：度。",
				            placement: "right"
				        },
				        lSys_MapLat: {
				            content: "说明：<br/><br/>1、当定位失败或者没有定位时，地图以该纬度为中心的纬度显示地图。<br/><br/>2、单位：度。",
				            placement: "right"
				        },
				        lSys_MapIconWidth: {
				            content: "说明：<br/><br/>1、设置图标在地图上显示的宽度。<br/><br/>2、单位：像素。",
				            placement: "right"
				        },
				        lSys_MapIconHeight: {
				            content: "说明：<br/><br/>1、设置图标在地图上显示的高度。<br/><br/>2、单位：像素。",
				            placement: "right"
				        },
				        lSys_EquipRate: {
				            content: "说明：<br/><br/>1、当器材使用寿命大于平均使用寿命的xx%时，进行消息提醒。",
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

				var params = {};
				var self = this;
				ajaxReq(oneUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.editFormVisible = true;
						self.editForm = Object.assign({}, res.data);
						if(self.editForm.lSys_StoreMode == 1){
							self.editForm.lSys_StoreValue1 = self.editForm.lSys_StoreValue;
							self.editForm.lSys_StoreValue2 = "";
						}else{
							self.editForm.lSys_StoreValue2 = self.editForm.lSys_StoreValue;
							self.editForm.lSys_StoreValue1 = "";
						}
						if(self.editForm.lSys_EquipMode == 1){
							self.editForm.lSys_EquipValue1 = self.editForm.lSys_EquipValue;
							self.editForm.lSys_EquipValue2 = "";
						}else{
							self.editForm.lSys_EquipValue2 = self.editForm.lSys_EquipValue;
							self.editForm.lSys_EquipValue1 = "";
						}
						self.editForm = Object.assign({}, self.editForm);
					});
				});
			},
			//edit
			handleEdit: function (index, row) {
				if(!this.hasAuth('edit')){
					this.$message.error('没有权限！');
					return;
				}
				var params = {};
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
			editSubmit2: function () {
				this.$refs.editForm.validate((valid) => {
					if (valid) {
						this.$confirm('确认提交吗?', '提示', {}).then(() => {
							var self = this;
							this.editLoading = true;
							var params = Object.assign({}, this.editForm);

							if(params.lSys_StoreMode == 1){
								params.lSys_StoreValue = params.lSys_StoreValue1;
							}else{
								params.lSys_StoreValue = params.lSys_StoreValue2;
							}
							delete params.lSys_StoreValue1;
							delete params.lSys_StoreValue2;
							if(params.lSys_EquipMode == 1){
								params.lSys_EquipValue = params.lSys_EquipValue1;
							}else{
								params.lSys_EquipValue = params.lSys_EquipValue2;
							}
							delete params.lSys_EquipValue1;
							delete params.lSys_EquipValue2;
							params.update = 1;
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
	
	

