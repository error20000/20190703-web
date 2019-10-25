var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/msg/findPage";
var excelUrl = baseUrl + "api/msg/excel";
var dictUrl = baseUrl + "api/dict/findList";
var userUrl = baseUrl + "api/user/options";
var msgDetailUrl = baseUrl + "api/msg/view";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sSLog_Type: '',
					startDate: '',
					endDate: ''
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
				
				userOptions: [],
				typeDictNo: 'MsgType',
				typeOptions: [],
				statusDictNo: 'MsgStatus',
				statusOptions: [],
				
				//msg detail
				msgFormVisible: false,
				msgLoading: false,
				msgFormRules: {},
				msgForm: {},

				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
			},
			typeFormatter: function(row){
				var name = row.sMsg_Type;
				for (var i = 0; i < this.typeOptions.length; i++) {
					var item = this.typeOptions[i];
					if(row.sMsg_Type == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleTypeOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.typeDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.typeOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			statusFormatter: function(row){
				var name = row.sMsg_Status;
				for (var i = 0; i < this.statusOptions.length; i++) {
					var item = this.statusOptions[i];
					if(row.sMsg_Status == item.sDict_NO){
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
			userFormatter: function(row, c){
				var name = row[c.property];
				for (var i = 0; i < this.userOptions.length; i++) {
					var item = this.userOptions[i];
					if(row[c.property] == item.sUser_ID){
						name = item.sUser_Nick;
						if(!name){
							name = item.sUser_UserName;
						}
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
					sMsg_ToUserID: '',
					sMsg_Type: '',
					sMsg_Status: '',
					startDate: '',
					endDate: ''
				};
				this.getList();
			},
			
			//msg detail
			msgDetail: function(sMsg_ID){
				var self = this;
				ajaxReq(msgDetailUrl, {sMsg_ID: sMsg_ID}, function(res){
					self.handleResQuery(res, function(){
						self.msgFormVisible = true;
						self.msgForm = res.data;
						self.msgForm.dMsg_CreateDateStr = self.formatDate(self.msgForm.dMsg_CreateDate);
						self.msgForm.dMsg_UpdateDateStr = self.formatDate(self.msgForm.dMsg_UpdateDate);
					});
				});
			},
			msgClose:function(){
				this.msgFormVisible = false;
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
				var params = "";
				for ( var key in this.filters) {
					if(this.filters[key]){
						params += "&"+key+"="+this.filters[key];
					}
				}
				parent.window.open(excelUrl + "?token=" + loginToken + params);
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
			this.handleTypeOptions();
			this.handleStatusOptions();
			this.handleUserOptions();
			this.getList();
		}
	  });
	
	

