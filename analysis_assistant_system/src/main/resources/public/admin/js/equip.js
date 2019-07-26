var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/equip/findPage";
var addUrl = baseUrl + "api/equip/add";
var modUrl = baseUrl + "api/equip/update";
var delUrl = baseUrl + "api/equip/delete";
var oneUrl = baseUrl + "api/equip/findOne";
var excelUrl = baseUrl + "api/equip/excel";
var importUrl = baseUrl + "api/equip/import";
var nfcUrl = baseUrl + "api/nfc/unbind";
var bindUrl = baseUrl + "api/equip/bind";
var delBindUrl = baseUrl + "api/equip/delBind";
var dictUrl = baseUrl + "api/dict/findList";

var ajaxReq = parent.window.ajaxReq || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					user: '',
					alarm: '',
					connected: '',
					status: ''
				},
				list: [],
				total: 0,
				page: 1,
				rows: 10,
				listLoading: false,
				sels: [],
				preloading: false,
				
				aidTypeDictNo: '',
				aidTypeOptions: [],
				stationDictNo: '',
				stationOptions: [],
				lightDictNo: '',
				lightOptions: [],
				markDictNo: '',
				markOptions: [],

				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					sAid_NO: [
		                { required: true, message: '请输入编号.', trigger: 'blur' },
		              ]
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					sAid_NO: [
		                { required: true, message: '请输入编号.', trigger: 'blur' },
		              ]
				},
				//bind
				nfcOptions: [],
				bindFormVisible: false,
				bindLoading: false,
				bindForm: {},
				bindFormRules: {
					sNfc_ID: [
		                { required: true, message: '请选择NFC标签.', trigger: 'blur' },
			        ]
				},
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
			},
			aidTypeFormatter: function(row){
				var name = row.sAid_Type;
				for (var i = 0; i < this.aidTypeOptions.length; i++) {
					var item = this.aidTypeOptions[i];
					if(row.sAid_Type == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			stationFormatter: function(row){
				var name = row.sAid_Station;
				for (var i = 0; i < this.stationOptions.length; i++) {
					var item = this.stationOptions[i];
					if(row.sAid_Station == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			lightFormatter: function(row){
				var name = row.sAid_Lighting;
				for (var i = 0; i < this.lightOptions.length; i++) {
					var item = this.lightOptions[i];
					if(row.sAid_Lighting == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			markFormatter: function(row){
				var name = row.sAid_Mark;
				for (var i = 0; i < this.markOptions.length; i++) {
					var item = this.markOptions[i];
					if(row.sAid_Mark == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleAidTypeOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.aidTypeDictNo}, function(res){
					self.handleResQuery(res, function(){
						for (var i = 0; i < res.data.length; i++) {
							self.aidTypeOptions.push({name: res.data[i].sDict_Name, value: res.data[i].sDict_NO});
						}
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleStationOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.stationDictNo}, function(res){
					self.handleResQuery(res, function(){
						for (var i = 0; i < res.data.length; i++) {
							self.stationOptions.push({name: res.data[i].sDict_Name, value: res.data[i].sDict_NO});
						}
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleLightOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.lightDictNo}, function(res){
					self.handleResQuery(res, function(){
						for (var i = 0; i < res.data.length; i++) {
							self.lightOptions.push({name: res.data[i].sDict_Name, value: res.data[i].sDict_NO});
						}
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleMarkOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.markDictNo}, function(res){
					self.handleResQuery(res, function(){
						for (var i = 0; i < res.data.length; i++) {
							self.markOptions.push({name: res.data[i].sDict_Name, value: res.data[i].sDict_NO});
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
					user: '',
					connected: '',
					status: ''
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
					ajaxReq(delUrl, {sAid_ID: row.sAid_ID }, function(res){
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
						sAid_ID: row.sAid_ID
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
			//bind
			handleDelBind: function(index, row){
				this.$confirm('确定解除绑定吗? ', '提示', {
					type: 'warning'
				}).then(() => {
					var self = this;
					this.listLoading = true;
					var params = {
							sNfc_ID: row.sAid_NfcID,
							id: row.sAid_ID
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
			handleBind: function(index, row){
				this.nfcOptions = [];
				var self = this;
				ajaxReq(nfcUrl, {}, function(res){
					self.handleResQuery(res, function(){
						for (var i = 0; i < res.data.length; i++) {
							self.nfcOptions.push({name: res.data[i].sNfc_Name, value: res.data[i].sNfc_ID});
						}
						self.bindFormVisible = true;
						self.bindForm = {
								sNfc_ID: '',
								type: 'aid',
								id: row.sAid_ID
						};
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
							ajaxReq(bindUrl, params, function(res){
								self.bindLoading = false;
								self.handleResOperate(res, function(){
									self.bindFormVisible = false;
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
	      	this.user = JSON.parse(localStorage.getItem('loginUser'));
	  		if(this.user　==　null){
	  			parent.window.location.href = "login.html";
	  			return;
	  		}
			this.preloading = true;
			this.handleAidTypeOptions();
			this.handleStationOptions();
			this.handleLightOptions();
			this.handleMarkOptions();
			this.getList();
		}
	  });
	
	
