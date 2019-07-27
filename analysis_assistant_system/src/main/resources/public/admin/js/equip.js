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
var storeUrl = baseUrl + "api/store/findAll";

var ajaxReq = parent.window.ajaxReq || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sEquip_NO: '',
					store: '',
					sEquip_Status: ''
				},
				list: [],
				total: 0,
				page: 1,
				rows: 10,
				listLoading: false,
				sels: [],
				preloading: false,
				
				storeOptions: [],
				storeProps: {
		          value: 'sStore_ID',
		          label: 'sStore_Name',
		          children: 'children'
		        },
				statusDictNo: '',
				statusOptions: [],
				typeDictNo: '',
				typeOptions: [],

				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					sEquip_NO: [
		                { required: true, message: '请输入编码.', trigger: 'blur' },
		              ],
					sEquip_Name: [
		                { required: true, message: '请输入名称.', trigger: 'blur' },
		              ]
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					sEquip_NO: [
		                { required: true, message: '请输入编码.', trigger: 'blur' },
		              ],
					sEquip_Name: [
		                { required: true, message: '请输入名称.', trigger: 'blur' },
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
			statusFormatter: function(row){
				var name = row.sEquip_Status;
				for (var i = 0; i < this.statusOptions.length; i++) {
					var item = this.statusOptions[i];
					if(row.sEquip_Status == item.sDict_NO){
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
						self.statusOptions = [];
						for (var i = 0; i < res.data.length; i++) {
							self.statusOptions.push({name: res.data[i].sDict_Name, value: res.data[i].sDict_NO});
						}
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			typeFormatter: function(row){
				var name = row.sEquip_Type;
				for (var i = 0; i < this.typeOptions.length; i++) {
					var item = this.typeOptions[i];
					if(row.sEquip_Type == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleTypeOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.statusDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.typeOptions = [];
						for (var i = 0; i < res.data.length; i++) {
							self.typeOptions.push({name: res.data[i].sDict_Name, value: res.data[i].sDict_NO});
						}
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			storeFormatter: function(row){
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
			handleStoreOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(storeUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.storeOptions = res.data;
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
						if(key == 'store'){
							this.filters.store[0] ? params.sEquip_StoreLv1 = this.filters.store[0] : "";
							this.filters.store[1] ? params.sEquip_StoreLv2 = this.filters.store[1] : "";
							this.filters.store[2] ? params.sEquip_StoreLv3 = this.filters.store[2] : "";
							this.filters.store[3] ? params.sEquip_StoreLv4 = this.filters.store[3] : "";
						}else{
							params[key] = this.filters[key];
						}
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
					sEquip_NO: '',
					store: '',
					sEquip_Status: ''
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
							params.sEquip_StoreLv1 = this.addForm.store[0] ? this.addForm.store[0] : " ";
							params.sEquip_StoreLv2 = this.addForm.store[1] ? this.addForm.store[1] : " ";
							params.sEquip_StoreLv3 = this.addForm.store[2] ? this.addForm.store[2] : " ";
							params.sEquip_StoreLv4 = this.addForm.store[3] ? this.addForm.store[3] : " ";
							delete params.store;
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
					ajaxReq(delUrl, {sEquip_ID: row.sEquip_ID }, function(res){
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
						sEquip_ID: row.sEquip_ID
				};
				var self = this;
				ajaxReq(oneUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.editFormVisible = true;
						self.editForm = Object.assign({}, res.data);
						self.editForm.store = [];
						self.editForm.store.push(self.editForm.sEquip_StoreLv1); 
						self.editForm.store.push(self.editForm.sEquip_StoreLv2); 
						self.editForm.store.push(self.editForm.sEquip_StoreLv3); 
						self.editForm.store.push(self.editForm.sEquip_StoreLv4); 
						console.log(self.editForm);
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
							params.sEquip_StoreLv1 = this.editForm.store[0] ? this.editForm.store[0] : " ";
							params.sEquip_StoreLv2 = this.editForm.store[1] ? this.editForm.store[1] : " ";
							params.sEquip_StoreLv3 = this.editForm.store[2] ? this.editForm.store[2] : " ";
							params.sEquip_StoreLv4 = this.editForm.store[3] ? this.editForm.store[3] : " ";
							delete params.store;
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
							sNfc_ID: row.sEquip_NfcID,
							id: row.sEquip_ID
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
								id: row.sEquip_ID
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
			this.handleStatusOptions();
			this.handleTypeOptions();
			this.handleStoreOptions(this.getList);
		}
	  });
	
	

