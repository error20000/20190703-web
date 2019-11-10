var baseUrl = parent.window.baseUrl || '../';

var queryUrl = baseUrl + "api/equip/findPage";
var addUrl = baseUrl + "api/equip/add";
var modUrl = baseUrl + "api/equip/update";
var delUrl = baseUrl + "api/equip/delete";
var oneUrl = baseUrl + "api/equip/findOne";
var excelUrl = baseUrl + "api/equip/excel";
var importUrl = baseUrl + "api/equip/import";
var nfcUrl = baseUrl + "api/nfc/unbind";
var nfcAllUrl = baseUrl + "api/nfc/findAll";
var aidAllUrl = baseUrl + "api/aid/findAll";
var bindUrl = baseUrl + "api/equip/bind";
var delBindUrl = baseUrl + "api/equip/delBind";
var dictUrl = baseUrl + "api/dict/findList";
var storeUrl = baseUrl + "api/store/findAll";
var storeListUrl = baseUrl + "api/store/findList";
var detailUrl = baseUrl + "api/equip/detail";
var historyUrl = baseUrl + "api/equip/history";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";



var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					sEquip_NO: '',
					store: [],
					sEquip_Status: '',
					sEquip_Type: '',
					sEquip_StoreLv1: '',
					sEquip_StoreLv2: '',
					sEquip_StoreLv3: '',
					sEquip_StoreLv4: ''
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
				
				storeOptions: [],
				storeProps: {
		          value: 'sStore_ID',
		          label: 'sStore_Name',
		          children: 'children'
		        },
				filtersLv1Options: [],
				filtersLv2Options: [],
				filtersLv3Options: [],
				filtersLv4Options: [],
				statusDictNo: 'EquipStatus',
				statusOptions: [],
				typeDictNo: 'EquipType',
				typeOptions: [],
				nfcAllOptions: [],
				aidOptions: [],
				mfDictNo: 'EquipManufacturer',
				mfOptions: [],
				
				equipTypeOptions: {
					EquipType_AIS: "EquipAIS", //AIS
					EquipType_Radar: "EquipRadar", //雷达应答器
					EquipType_Telemetry: "EquipTelemetry", //遥测遥控
					EquipType_Battery:  "EquipBattery", //蓄电池	
					EquipType_SolarEnergy:  "EquipSolarEnergy", //太阳能板
					EquipType_SpareLamp:  "EquipSpareLamp", //备灯器	
					EquipType_ViceLamp:  "EquipViceLamp", //副灯器	
					EquipType_Lamp:  "EquipLamp" //灯器
				},
				aisMMSIXDictNo: 'EquipAisMMSIX',
				aisMMSIXOptions: [],
				batteryTypeDictNo: 'EquipBatteryType',
				batteryTypeOptions: [],
				lampTelemetryDictNo: 'EquipLampTelemetry',
				lampTelemetryOptions: [],
				lampTypeDictNo: 'EquipLampType',
				lampTypeOptions: [],
				lampLensDictNo: 'EquipLampLens',
				lampLensOptions: [],
				radarNODictNo: 'EquipRadarNO',
				radarNOOptions: [],
				radarBandDictNo: 'EquipRadarBand',
				radarBandOptions: [],
				solarTypeDictNo: 'EquipSolarEnergyType',
				solarTypeOptions: [],
				telemetryModeDictNo: 'EquipTelemetryMode',
				telemetryModeOptions: [],

				//add
				addFormVisible: false,
				addLoading: false, 
				addForm: {},
				addFormRules: {
					sEquip_NO: [
		                { required: true, message: '请输入编码.', trigger: 'blur' },
		              ],
					/*sEquip_Name: [
		                { required: true, message: '请输入名称.', trigger: 'blur' },
		              ],*/
					sEquip_Type: [
		                { required: true, message: '请选择器材种类.', trigger: 'blur' },
		            ],
		            /*sEquip_Manufacturer: [
		                { required: true, message: '请选择生产厂家.', trigger: 'blur' },
			        ],
			        sEquip_MModel: [
		                { required: true, message: '请输入厂方型号.', trigger: 'blur' },
			        ],
			        sEquip_MBrand: [
		                { required: true, message: '请输入品牌.', trigger: 'blur' },
			        ]*/
				},
				//edit
				editFormVisible: false,
				editLoading: false,
				editForm: {},
				editFormRules: {
					sEquip_NO: [
		                { required: true, message: '请输入编码.', trigger: 'blur' },
		              ],
					/*sEquip_Name: [
		                { required: true, message: '请输入名称.', trigger: 'blur' },
		              ],*/
					sEquip_Type: [
		                { required: true, message: '请选择器材种类.', trigger: 'blur' },
		            ],
		            /*sEquip_Manufacturer: [
		                { required: true, message: '请选择生产厂家.', trigger: 'blur' },
			        ],
			        sEquip_MModel: [
		                { required: true, message: '请输入厂方型号.', trigger: 'blur' },
			        ],
			        sEquip_MBrand: [
		                { required: true, message: '请输入品牌.', trigger: 'blur' },
			        ]*/
				},
				//view
				viewFormVisible: false,
				viewForm: {},
				viewHistory: [],
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
				
				uploadVisible: false,
				uploadTemp1: [],
				uploadTemp2: [],
				uploadTemp3: [],
				importUrl: "",
				uploadActiveName: 'first',
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
			},
			formatDateStr: function(date, str){
				return parent.window.formatDate(date, str);
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
						self.statusOptions = res.data;
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
			nfcAllFormatter: function(row){
				var name = row.sEquip_NfcID;
				for (var i = 0; i < this.nfcAllOptions.length; i++) {
					var item = this.nfcAllOptions[i];
					if(row.sEquip_NfcID == item.sNfc_ID){
						name = item.sNfc_NO;
						break
					}
				}
				return name;
			},
			handleNfcAllOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(nfcAllUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.nfcAllOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			mfFormatter: function(row){
				var name = row.sEquip_Manufacturer;
				for (var i = 0; i < this.mfOptions.length; i++) {
					var item = this.mfOptions[i];
					if(row.sEquip_Manufacturer == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleMfOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.mfDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.mfOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},

			aidFormatter: function(row){
				var name = row.sEquip_AidID;
				for (var i = 0; i < this.aidOptions.length; i++) {
					var item = this.aidOptions[i];
					if(row.sEquip_AidID == item.sAid_ID){
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

			storeFormatter: function(row){
				var name = "";
				var name1 = "";
				var name2 = "";
				var name3 = "";
				var name4 = "";
				for (var i = 0; i < this.storeOptions.length; i++) {
					var item = this.storeOptions[i];
					if(row.sEquip_StoreLv1 == item.sStore_ID){
						name1 = item.sStore_Name;
						for (var j = 0; item.children && j < item.children.length; j++) {
							var item2 = item.children[j];
							if(row.sEquip_StoreLv2 == item2.sStore_ID){
								name2 = item2.sStore_Name;
								for (var m = 0; item2.children && m < item2.children.length; m++) {
									var item3 = item2.children[m];
									if(row.sEquip_StoreLv3 == item3.sStore_ID){
										name3 = item3.sStore_Name;
										for (var n = 0; item3.children && n < item3.children.length; n++) {
											var item4 = item3.children[n];
											if(row.sEquip_StoreLv4 == item4.sStore_ID){
												name4 = item4.sStore_Name;
												break;
											}
										}
										break;
									}
								}
								break;
							}
						}
						break;
					}
					
				}
				name = name + (name1 ? name1 : "");
				name = name + (name2 ? " / "+name2 : "");
				name = name + (name3 ? " / "+name3 : "");
				name = name + (name4 ? " / "+name4 : "");
				return name;
			},
			store1Formatter: function(row){
				let str = this.storeFormatter(row);
				let strArray = str.split(" / ");
				return strArray[0];
			},
			store2Formatter: function(row){
				let str = this.storeFormatter(row);
				let strArray = str.split(" / ");
				return strArray.length < 2 ? "" : strArray[1];
			},
			store3Formatter: function(row){
				let str = this.storeFormatter(row);
				let strArray = str.split(" / ");
				return strArray.length < 3 ? "" : strArray[2];
			},
			store4Formatter: function(row){
				let str = this.storeFormatter(row);
				let strArray = str.split(" / ");
				return strArray.length < 4 ? "" : strArray[3];
			},
			handleTypeChange: function(sEquip_Type){
				var type = sEquip_Type ||  this.addForm.sEquip_Type;
				switch (type) {
				case this.equipTypeOptions.EquipType_AIS:
					this.handleAISMMSIXOptions();
					break;
				case this.equipTypeOptions.EquipType_Battery:
					this.handleBatteryTypeOptions();
					break;
				case this.equipTypeOptions.EquipType_Lamp:
					this.handleLampTypeOptions();
					this.handleLampLensOptions();
					this.handleLampTelemetryOptions();
					break;
				case this.equipTypeOptions.EquipType_Radar:
					this.handleRadarNOOptions();
					this.handleRadarBandOptions();
					break;
				case this.equipTypeOptions.EquipType_SolarEnergy:
					this.handleSolarTypeOptions();
					break;
				case this.equipTypeOptions.EquipType_Telemetry:
					this.handleTelemetryModeOptions();
					break;
					
				default:
					break;
				}
			},
			handleAISMMSIXOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.aisMMSIXDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.aisMMSIXOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleBatteryTypeOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.batteryTypeDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.batteryTypeOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleLampTypeOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.lampTypeDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.lampTypeOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleLampLensOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.lampLensDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.lampLensOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleLampTelemetryOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.lampTelemetryDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.lampTelemetryOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleRadarNOOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.radarNODictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.radarNOOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleRadarBandOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.radarBandDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.radarBandOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleSolarTypeOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.solarTypeDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.solarTypeOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleTelemetryModeOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.telemetryModeDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.telemetryModeOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			//filter store
			handleFiltersInitOptions: function(){
				var self = this;
				var params = {};
				ajaxReq(storeListUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.filtersLv1Options = res.data;
						self.filtersLv2Options = [];
						self.filtersLv3Options = [];
						self.filtersLv4Options = [];
						self.filters.sEquip_StoreLv2 = "";
						self.filters.sEquip_StoreLv3 = "";
						self.filters.sEquip_StoreLv4 = "";
					});
				});
			},
			handleFiltersLV1Options: function(id){
				var self = this;
				var params = {parent: id};
				ajaxReq(storeListUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.filtersLv2Options = res.data;
						self.filtersLv3Options = [];
						self.filtersLv4Options = [];
						self.filters.sEquip_StoreLv2 = "";
						self.filters.sEquip_StoreLv3 = "";
						self.filters.sEquip_StoreLv4 = "";
					});
				});
			},
			handleFiltersLV2Options: function(id){
				var self = this;
				var params = {parent: id};
				ajaxReq(storeListUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.filtersLv3Options = res.data;
						self.filtersLv4Options = [];
						self.filters.sEquip_StoreLv3 = "";
						self.filters.sEquip_StoreLv4 = "";
					});
				});
			},
			handleFiltersLV3Options: function(id){
				var self = this;
				var params = {parent: id};
				ajaxReq(storeListUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.filtersLv4Options = res.data;
						self.filters.sEquip_StoreLv4 = "";
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
						if(key == 'store'){
//							this.filters.store[0] ? params.sEquip_StoreLv1 = this.filters.store[0] : "";
//							this.filters.store[1] ? params.sEquip_StoreLv2 = this.filters.store[1] : "";
//							this.filters.store[2] ? params.sEquip_StoreLv3 = this.filters.store[2] : "";
//							this.filters.store[3] ? params.sEquip_StoreLv4 = this.filters.store[3] : "";
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
					store: [],
					sEquip_Status: '',
					sEquip_Type: '',
					sEquip_StoreLv1: '',
					sEquip_StoreLv2: '',
					sEquip_StoreLv3: '',
					sEquip_StoreLv4: ''
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
					store: []
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
							params.sEquip_StoreLv1 = this.addForm.store[0] ? this.addForm.store[0] : " ";
							params.sEquip_StoreLv2 = this.addForm.store[1] ? this.addForm.store[1] : " ";
							params.sEquip_StoreLv3 = this.addForm.store[2] ? this.addForm.store[2] : " ";
							params.sEquip_StoreLv4 = this.addForm.store[3] ? this.addForm.store[3] : " ";
							params.sEquip_Name = params.sEquip_NO;
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
				if(!this.hasAuth('delete')){
					this.$message.error('没有权限！');
					return;
				}
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
				if(!this.hasAuth('edit')){
					this.$message.error('没有权限！');
					return;
				}
				var params = {
						sEquip_ID: row.sEquip_ID
				};
				var self = this;
				ajaxReq(detailUrl, params, function(res2){
					self.handleResQuery(res2, function(){
						self.handleTypeChange(row.sEquip_Type);
						self.editForm = Object.assign({}, res2.data);
						
						self.editFormVisible = true;
						self.editForm.store = [];
						self.editForm.store.push(self.editForm.sEquip_StoreLv1); 
						self.editForm.store.push(self.editForm.sEquip_StoreLv2); 
						self.editForm.store.push(self.editForm.sEquip_StoreLv3); 
						self.editForm.store.push(self.editForm.sEquip_StoreLv4); 
						/*ajaxReq(oneUrl, params, function(res){
							self.handleResQuery(res, function(){
								self.editFormVisible = true;
								self.editForm = Object.assign({}, self.editForm, res.data);
								self.editForm.store = [];
								self.editForm.store.push(self.editForm.sEquip_StoreLv1); 
								self.editForm.store.push(self.editForm.sEquip_StoreLv2); 
								self.editForm.store.push(self.editForm.sEquip_StoreLv3); 
								self.editForm.store.push(self.editForm.sEquip_StoreLv4); 
							});
						});*/
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
							params.sEquip_Name = params.sEquip_NO;
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
				var self = this;
				ajaxReq(nfcUrl, {}, function(res){
					self.handleResQuery(res, function(){
						self.nfcOptions = res.data;
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
			//detail
			handleView: function(index, row){
				var params = {
						sEquip_ID: row.sEquip_ID
				};
				var self = this;
				ajaxReq(detailUrl, params, function(res2){
					self.handleResQuery(res2, function(){
						self.handleTypeChange(row.sEquip_Type);
						self.viewForm = Object.assign({}, res2.data);
						
						self.viewForm.store = [];
						self.viewForm.store.push(self.viewForm.sEquip_StoreLv1); 
						self.viewForm.store.push(self.viewForm.sEquip_StoreLv2); 
						self.viewForm.store.push(self.viewForm.sEquip_StoreLv3); 
						self.viewForm.store.push(self.viewForm.sEquip_StoreLv4); 
						/*ajaxReq(oneUrl, params, function(res){
							self.handleResQuery(res, function(){
								self.viewFormVisible = true;
								self.viewForm = Object.assign({}, self.viewForm, res.data);
								self.viewForm.store = [];
								self.viewForm.store.push(self.viewForm.sEquip_StoreLv1); 
								self.viewForm.store.push(self.viewForm.sEquip_StoreLv2); 
								self.viewForm.store.push(self.viewForm.sEquip_StoreLv3); 
								self.viewForm.store.push(self.viewForm.sEquip_StoreLv4); 
							});
						});*/
					});
				});
				
				ajaxReq(historyUrl, params, function(res){
					self.handleResQuery(res, function(){
						console.log(res.data);
						//显示
						self.viewFormVisible = true;
						self.$nextTick(function(){
							//chart
							$('#chart').hide();
							if(res.data.length > 1){
								$('#chart').show();
						        var myChart = echarts.init(document.getElementById("chart"), 'walden');
						        myChart.clear();
						        var timeInterval = 1000;
						        var data = [];
						        var startTime = Math.floor(res.data[0].dELog_CreateDate/1000);
						        var categories = [row.sEquip_NO];
						        var types = {
						            '1': {id: 1, name: '仓库待用', color: '#7b9ce1'},
						            '2': {id: 2, name: '出库', color: '#bd6d6c'},
						            '3': {id: 3, name: '拆除', color: '#75d874'},
						            '4': {id: 4, name: '运输', color: '#e0bc78'},
						            '5': {id: 5, name: '待检测', color: '#dc77dc'},
						            '6': {id: 6, name: '检测', color: '#72b362'},
						            '7': {id: 7, name: '维修', color: '#71b362'},
						            '8': {id: 8, name: '报废', color: '#71b362'},
						            '9': {id: 9, name: '使用', color: '#71b362'},
						            '0': {id: 0, name: '空闲', color: '#71b362'},
						            '10': {id: 10, name: '异常', color: '#71b362'}
						        };

						        // Generate mock data
						        echarts.util.each(categories, function (category, index) {
						        	var baseTime = startTime;
						            for (var i = 0; i < res.data.length - 1; i++) {
						            	var node = res.data[i];
						            	var next = res.data[i+1];
						                var typeItem = types[node.sELog_Type];
						                var duration = Math.floor(next.dELog_CreateDate/1000) - Math.floor(node.dELog_CreateDate/1000);
						                data.push({
						                    name: typeItem.name,
						                    value: [
						                        index,
						                        baseTime,
						                        baseTime += duration,
						                        duration
						                    ],
						                    itemStyle: {
						                        normal: {
						                            color: typeItem.color
						                        }
						                    }
						                });
						                //baseTime += 3600;
						            }
						        });
						        

						        function renderItem(params, api) {
						            
						            var categoryIndex = api.value(0);
						            var start = api.coord([api.value(1), categoryIndex]);
						            var end = api.coord([api.value(2), categoryIndex]);
						            var height = api.size([0, 1])[1] * 0.6;

						            var rectShape = echarts.graphic.clipRectByRect({
						                x: start[0],
						                y: start[1] - height / 2,
						                width: end[0] - start[0],
						                height: height
						            }, {
						                x: params.coordSys.x,
						                y: params.coordSys.y,
						                width: params.coordSys.width,
						                height: params.coordSys.height
						            });
						            
						            return rectShape && {
						                type: 'rect',
						                shape: rectShape,
						                style: api.style()
						            };
						        }


						        var option = {
						            tooltip: {
						                formatter: function (params) {
						                    return params.marker + params.name + ': ' + formatSeconds(params.value[3]);
						                }
						            },
						            title: {
						                text: '概述',
						                left: 'center'
						            },
						            dataZoom: [{
						                type: 'slider',
						                filterMode: 'weakFilter',
						                showDataShadow: false,
						                height: 10,
						                bottom: 10,
						                borderColor: 'transparent',
						                backgroundColor: '#e2e2e2',
						                handleIcon: 'M10.7,11.9H9.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4h1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7v-1.2h6.6z M13.3,22H6.7v-1.2h6.6z M13.3,19.6H6.7v-1.2h6.6z', // jshint ignore:line
						                handleSize: 20,
						                handleStyle: {
						                    shadowBlur: 6,
						                    shadowOffsetX: 1,
						                    shadowOffsetY: 2,
						                    shadowColor: '#aaa'
						                },
						                labelFormatter: ''
						            }, {
						                type: 'inside',
						                filterMode: 'weakFilter'
						            }],
						            grid: {
						                bottom: 120
						            },
						            xAxis: {
						                min: startTime,
						                scale: true,
						                axisLabel: {
						                    formatter: function (val) {
						                        //return Math.floor(Math.max(0, val - startTime)/3600) + ' h';
						                    	return self.formatDate(val);
						                    },
						                    rotate: 50
						                }
						            },
						            yAxis: {
						                data: categories
						            },
						            series: [{
						                type: 'custom',
						                renderItem: renderItem,
						                itemStyle: {
						                    normal: {
						                        opacity: 0.8
						                    }
						                },
						                encode: {
						                    x: [1, 2],
						                    y: 0
						                },
						                data: data
						            }]
						        };

						        myChart.setOption($.extend(true, {}, option));
							}
							//time line
							var str = '';
							for (var i = res.data.length - 1; i >= 0 ; i--) {
								var node = res.data[i];
								str += '<li class="el-timeline-item">';
								str += '	<div class="el-timeline-item__tail"></div>';
								if(i == res.data.length - 1){
									str += '	<div class="el-timeline-item__node el-timeline-item__node--normal el-timeline-item__node--" style="background-color: #0bbd87;">';
								}else{
									str += '	<div class="el-timeline-item__node el-timeline-item__node--normal el-timeline-item__node--">';
								}
								str += '	</div>';
								str += '	<div class="el-timeline-item__wrapper">';
								str += '		<div class="el-timeline-item__content">'+node.sELog_Describe+'</div>';
								str += '		<div class="el-timeline-item__timestamp is-bottom">'+self.formatDate(node.dELog_CreateDate)+'</div>';
								str += '	</div>';
								str += '</li>';
							}
							$('#timeline').html(str);
						});

					});
				});
			},
			viewClose: function () {
				this.viewFormVisible = false;
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
					if(key == 'store'){
						continue;
					}
					if(this.filters[key]){
						params += "&"+key+"="+this.filters[key];
					}
				}
				parent.window.open(excelUrl + "?token=" + loginToken + params);
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
				this.uploadTemp1 = [
					{
						sEquip_Name: '测试1', 
						sEquip_NO: 'test1', 
						sEquip_NfcID: '' , 
						sEquip_StoreLv1: '' , 
						sEquip_StoreLv2: '' , 
						sEquip_StoreLv3: '', 
						sEquip_StoreLv4: '', 
						sEquip_AidID: '',
						sEquip_Manufacturer: '生产厂商1',  
						sEquip_MModel: 'abc',
						sEquip_MBrand: '',
						dEquip_ArrivalDate: '' ,
						sEquip_Type: 'AIS',
						sAis_MMSIX: 'MMSIX1'
					},
					{
						sEquip_Name: '测试2', 
						sEquip_NO: 'test2', 
						sEquip_NfcID: '' , 
						sEquip_StoreLv1: '' , 
						sEquip_StoreLv2: '' , 
						sEquip_StoreLv3: '', 
						sEquip_StoreLv4: '', 
						sEquip_AidID: '',
						sEquip_Manufacturer: '生产厂商2',  
						sEquip_MModel: 'abc',
						sEquip_MBrand: '',
						dEquip_ArrivalDate: '' ,
						sEquip_Type: 'AIS',
						sAis_MMSIX: 'MMSIX2'
					},
					{
						sEquip_Name: '测试3', 
						sEquip_NO: 'test3', 
						sEquip_NfcID: '' , 
						sEquip_StoreLv1: '' , 
						sEquip_StoreLv2: '' , 
						sEquip_StoreLv3: '', 
						sEquip_StoreLv4: '', 
						sEquip_AidID: '',
						sEquip_Manufacturer: '生产厂商3',  
						sEquip_MModel: 'abc',
						sEquip_MBrand: '',
						dEquip_ArrivalDate: '' ,
						sEquip_Type: 'AIS',
						sAis_MMSIX: 'MMSIX3'   
					}
				];
				this.uploadTemp2 = [
					{
						sEquip_Name: '测试1', 
						sEquip_NO: 'test1', 
						sEquip_NfcID: '' , 
						sEquip_StoreLv1: '' , 
						sEquip_StoreLv2: '' , 
						sEquip_StoreLv3: '', 
						sEquip_StoreLv4: '', 
						sEquip_AidID: '',
						sEquip_Manufacturer: '生产厂商1',  
						sEquip_MModel: 'abc',
						sEquip_MBrand: '',
						dEquip_ArrivalDate: '' ,
						sEquip_Type: '雷达应答器',
						sRadar_NO: '编码1' ,
						sRadar_Band: '波段1'  
					},
					{
						sEquip_Name: '测试2', 
						sEquip_NO: 'test2', 
						sEquip_NfcID: '' , 
						sEquip_StoreLv1: '' , 
						sEquip_StoreLv2: '' , 
						sEquip_StoreLv3: '', 
						sEquip_StoreLv4: '', 
						sEquip_AidID: '',
						sEquip_Manufacturer: '生产厂商2',  
						sEquip_MModel: 'abc',
						sEquip_MBrand: '',
						dEquip_ArrivalDate: '' ,
						sEquip_Type: '雷达应答器',
						sRadar_NO: '编码1' ,
						sRadar_Band: '波段1'  
					},
					{
						sEquip_Name: '测试3', 
						sEquip_NO: 'test3', 
						sEquip_NfcID: '' , 
						sEquip_StoreLv1: '' , 
						sEquip_StoreLv2: '' , 
						sEquip_StoreLv3: '', 
						sEquip_StoreLv4: '', 
						sEquip_AidID: '',
						sEquip_Manufacturer: '生产厂商3',  
						sEquip_MModel: 'abc',
						sEquip_MBrand: '',
						dEquip_ArrivalDate: '' ,
						sEquip_Type: '雷达应答器',
						sRadar_NO: '编码1' ,
						sRadar_Band: '波段1'    
					}
				];
				this.uploadTemp3 = [
					{
						sEquip_Name: '测试1', 
						sEquip_NO: 'test1', 
						sEquip_NfcID: '' , 
						sEquip_StoreLv1: '' , 
						sEquip_StoreLv2: '' , 
						sEquip_StoreLv3: '', 
						sEquip_StoreLv4: '', 
						sEquip_AidID: '',
						sEquip_Manufacturer: '生产厂商1',  
						sEquip_MModel: 'abc',
						sEquip_MBrand: '',
						dEquip_ArrivalDate: '' ,
						sEquip_Type: '蓄电池',
						sBattery_NO: '编码1' ,
						sBattery_Type: '锂电池'  ,
						lBattery_Volt: '24'  ,
						lBattery_Watt: '60'  ,
						sBattery_Connect: '连接方式1'  
					},
					{
						sEquip_Name: '测试2', 
						sEquip_NO: 'test2', 
						sEquip_NfcID: '' , 
						sEquip_StoreLv1: '' , 
						sEquip_StoreLv2: '' , 
						sEquip_StoreLv3: '', 
						sEquip_StoreLv4: '', 
						sEquip_AidID: '',
						sEquip_Manufacturer: '生产厂商2',  
						sEquip_MModel: 'abc',
						sEquip_MBrand: '',
						dEquip_ArrivalDate: '' ,
						sEquip_Type: '蓄电池',
						sBattery_NO: '编码1' ,
						sBattery_Type: '锂电池'  ,
						lBattery_Volt: '24'  ,
						lBattery_Watt: '60'  ,
						sBattery_Connect: '连接方式1' 
					},
					{
						sEquip_Name: '测试3', 
						sEquip_NO: 'test3', 
						sEquip_NfcID: '' , 
						sEquip_StoreLv1: '' , 
						sEquip_StoreLv2: '' , 
						sEquip_StoreLv3: '', 
						sEquip_StoreLv4: '', 
						sEquip_AidID: '',
						sEquip_Manufacturer: '生产厂商3',  
						sEquip_MModel: 'abc',
						sEquip_MBrand: '',
						dEquip_ArrivalDate: '' ,
						sEquip_Type: '蓄电池',
						sBattery_NO: '编码1' ,
						sBattery_Type: '锂电池'  ,
						lBattery_Volt: '24'  ,
						lBattery_Watt: '60'  ,
						sBattery_Connect: '连接方式1' 
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
			this.handleStatusOptions();
			this.handleTypeOptions();
			this.handleNfcAllOptions();
			this.handleAidOptions();
			this.handleMfOptions();
			this.handleFiltersInitOptions();
			this.handleStoreOptions();
			this.getList();
		}
	  });
	
	

