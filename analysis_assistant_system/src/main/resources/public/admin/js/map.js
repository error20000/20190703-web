var baseUrl = parent.window.baseUrl || '../';

var aidUrl = baseUrl + "api/aid/map";
var storeTypeUrl = baseUrl + "api/store/map";
var dictUrl = baseUrl + "api/dict/findList";
var aidEquipUrl = baseUrl + "api/aid/equip";
var storeEquipUrl = baseUrl + "api/store/equip";
var msgAidUrl = baseUrl + "api/aid/msg";
var msgStoreUrl = baseUrl + "api/store/msg";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					type: '',
					sAid_ID: '',
					sStoreType_ID: ''
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

				aidOptions: [],
				aidEquipData: [],
				storeTypeOptions: [],
				storeEquipData: [],
				//aidStatusIconDictNo: 'MapIcon',
				//aidStatusIconOptions: [],
				//storeMapIconDictNo: 'MapIcon',
				//storeMapIconOptions: [],
				
				aidTypeDictNo: 'AidType',
				aidTypeOptions: [],
				stationDictNo: 'AidStation',
				stationOptions: [],
				lightDictNo: 'AidLighting',
				lightOptions: [],
				markDictNo: 'AidMark',
				markOptions: [],
				iconDictNo: 'AidIcon',
				iconOptions: [],
				statusDictNo: 'AidStatus',
				statusOptions: [],
				
				pointArray: [],
				defaultAidStatus: 'normal',
				defaultStoreStatus: 'normal',
				maxZoom: 10,
				
				detailFormVisible: false,
				detailForm: {},
				detailType: "aid",
				detailTitle: "",
				activeAidDetailName: '1',
				activeStoreDetailName: '1',
				aidId: '',
				storeId: '',
				detailStoreEquipTotal: 0,
				detailStoreEquipPage: 1,
				detailStoreEquipRows: 10,
				detailIcon: '',
				iconBatteryData: [],
				iconSolarData: [],
				iconLampData: [],
				
				msgStoreData: [],
				msgStoreTotal: 0,
				msgStorePage: 1,
				msgStoreRows: 10,
				
				msgAidData: [],
				msgAidTotal: 0,
				msgAidPage: 1,
				msgAidRows: 10,
				
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
			formatDegree: function(value) { 
				var v = value < 0 ? '-' : '';
				//将度转换成为度分秒                
				value = Math.abs(value);                
				var v1 = Math.floor(value);//度               
				var v2 = Math.floor((value - v1) * 60);//分                
				var v3 = Math.round((value - v1) * 3600 % 60);//秒                
				return v + v1 + '°' + v2 + '\'' + v3 + '"';            
			},
			latFormatterAid: function(row){
				return row.lAid_LatDu + '°' + row.lAid_LatFen + '\'' + row.lAid_LatMiao + '"' + " N";
			},
			lngFormatterAid: function(row){
				return row.lAid_LngDu + '°' + row.lAid_LngFen + '\'' + row.lAid_LngMiao + '"' + " E";
			},
			latFormatterStore: function(row){
				return row.lStoreType_LatDu + '°' + row.lStoreType_LatFen + '\'' + row.lStoreType_LatMiao + '"' + " N";
			},
			lngFormatterStore: function(row){
				return row.lStoreType_LngDu + '°' + row.lStoreType_LngFen + '\'' + row.lStoreType_LngMiao + '"' + " E";
			},
			/*handleAidStatusIconOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.aidStatusIconDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.aidStatusIconOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			findAidStatusIcon: function(status){
				for (var i = 0; i < this.aidStatusIconOptions.length; i++) {
					if(status == this.aidStatusIconOptions[i].sDict_NO){
						return this.aidStatusIconOptions[i];
					}
					
				}
				return null;
			},
			handleStoreMapIconOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.storeMapIconDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.storeMapIconOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			findStoreMapIcon: function(status){
				for (var i = 0; i < this.storeMapIconOptions.length; i++) {
					if(status == this.storeMapIconOptions[i].sDict_NO){
						return this.storeMapIconOptions[i];
					}
					
				}
				return this.storeMapIconOptions[0];
			},*/
			

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
						name = item.sDict_Name + (item.sDict_Describe ? " ("+item.sDict_Describe+")" : "");
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
						self.aidTypeOptions = res.data;
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
						self.stationOptions = res.data;
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
						self.lightOptions = res.data;
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
						self.markOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			iconFormatter: function(row){
				var name = row.sAid_Icon;
				for (var i = 0; i < this.iconOptions.length; i++) {
					var item = this.iconOptions[i];
					if(row.sAid_Icon == item.sDict_NO){
						name = item.sDict_Picture;
						break
					}
				}
				return name;
			},
			handleIconOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.iconDictNo}, function(res){
					self.handleResQuery(res, function(){
						self.iconOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			statusFormatter: function(row){
				var name = row.sAid_Status;
				for (var i = 0; i < this.statusOptions.length; i++) {
					var item = this.statusOptions[i];
					if(row.sAid_Status == item.sDict_NO){
						name = item.sDict_Name;
						break
					}
				}
				return name;
			},
			handleStatusOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(dictUrl, {sDict_DictTypeNO: this.statusDictNo}, function(res){
					self.handleResQuery(res, function(){
						self.statusOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			
			handleAidOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(aidUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.aidOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleStoreTypeOptions: function(cb){
				var self = this;
				var params = {};
				ajaxReq(storeTypeUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.storeTypeOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			
			initMap: function(){
				var self = this;
				 require([
				      "esri/Map",
				      "esri/views/MapView",
				      "esri/layers/MapImageLayer"
				    ], function(Map, MapView, MapImageLayer) {

					 ArGis.map = new Map({
				        basemap: "streets"
				      });
				      
					 ArGis.layer = new MapImageLayer({
				        url: ArGis.mapUrl
				      });
				      
					 ArGis.map.add(ArGis.layer);

					 ArGis.view = new MapView({
				        container: "mapView",
				        map: ArGis.map,
				        center: ArGis.center,
				        zoom: ArGis.zoom
				      });
				      
				      /* view.on("mouse-wheel", function(evt){
				    	  evt.stopPropagation ();
				   	  }); */
					 
					 ArGis.view.on("click", function(evt){
						 console.log(evt);
						 ArGis.view.hitTest(evt).then(function(response) {
						    var result = response.results[0];
							 console.log(result);
						    if (result) {
						    	//self.activeAidDetailName = '1';
						    	//self.activeStoreDetailName = '1';
						    	self.handleDetail(result);
						    }
						 });
					 });
					 /*$('#mapView').on('mousemove', function(evt) {
						 ArGis.view.hitTest(new ScreenPoint({
						        x: evt.x,
						        y: evt.y
						    })).then(function(response) {
						        var graphics = response.results;
						        console.log(graphics);
						    });
						});*/

					 ArGis.view.on("pointer-move", function(evt){
						 if(evt.x < 5){ //解决鼠标移动到左边报错的问题。
							 return;
						 }
						 ArGis.view.hitTest(evt).then(function(response) {
						    var result = response.results[0];
						    if (result) {
								 let name = result.graphic.attributes.name;
								 ArGis.view.popup.open({
						    	    title: name,
						    	    location: result.mapPoint 
						    	 });
						    }else{
						    	 ArGis.view.popup.close();
						    }
						 });
					 });
					 
					 ArGis.view.on("mouse-wheel", function(evt){
						 console.log(evt);
						 console.log(ArGis.view.zoom);
						 self.changePoint(evt);
				   	 });
					 
					 self.initData();
					 
				 });
			},
			initData: function(){
				if(!this.hasAuth('query')){
					this.$message.error('没有权限！');
					return;
				}
				this.pointArray = [];
				for (var i = 0; i < this.aidOptions.length; i++) {
					let node = this.aidOptions[i];
					this.pointArray.push(this.createPoint({
						lat: node.lAid_Lat,
						lng: node.lAid_Lng,
						attr:{
							id: node.sAid_ID,
							name: node.sAid_Name,
							no: node.sAid_NO,
							type: 'aid',
							//status: this.findAidStatusIcon(node.sAid_Status || "normal")
							status: node.sAid_Status || this.defaultAidStatus,
							pic: node.sAid_StatusIcon ? node.sAid_StatusIcon : node.sAid_TypeIcon
						},
						color: "blue",
						width: "10px"
					}));
				}
				for (var i = 0; i < this.storeTypeOptions.length; i++) {
					let node = this.storeTypeOptions[i];
					this.pointArray.push(this.createPoint({
						lat: node.lStoreType_Lat,
						lng: node.lStoreType_Lng,
						attr:{
							id: node.sStoreType_ID,
							name: node.sStoreType_Name,
							type: 'store',
							//status: this.findStoreMapIcon(node.sStoreType_MapIcon)
							status: node.status,
							pic: node.sStoreType_MapIconPic
						},
						color: "red",
						width: "10px"
					}));
				}
				//图例
				this.initLegend();
				ArGis.view.graphics.addMany(this.pointArray);
			},
			initLegend: function(){
				require([
			        "esri/widgets/Legend",
			      ], function(Legend) {
					
					var legend = new Legend({
			            view: ArGis.view,
			            container: document.createElement("div")
			          });
					
					ArGis.view.ui.add(legend, "bottom-left");
				});
			},
			createPoint: function(params){
				var geometry = {
					type: "point",
				    longitude: params.lng ,
				    latitude: params.lat
				  };
					
			     /*var symbol  = {
		  		    type: "simple-marker",  
		  		    color: params.color ? params.color : [226, 119, 40],
		  		    size: params.width ? params.width : "4px",
				    outline: {
				    	style:"none"
				    }
		  		  };*/
				//var iconUrl = params.attr.status ? params.attr.status.sDict_Picture ? "/"+params.attr.status.sDict_Picture : "/admin/images/map.png" : "/admin/images/map.png";
				var iconUrl = "";
				if(ArGis.view.zoom <= this.maxZoom){
					iconUrl = params.attr.status == this.defaultAidStatus ? "/admin/images/map1.png" : "/admin/images/map2.png";
				}else{
					iconUrl = params.attr.pic ? "/"+params.attr.pic : "/admin/images/map.png";
				}
				var symbol = {};
					require(["esri/symbols/PictureMarkerSymbol"], 
							function (PictureMarkerSymbol) {
						symbol = {
								type: "picture-marker",
								url: iconUrl,
								width: "24px",
								height: "24px"
						};
						
					});
			     
			     return this.createGraphic(geometry, symbol, params.attr, params.template);
			},
			createGraphic: function(geometry, symbol, attr, template){
				var graphic;
				require(["esri/Graphic"], 
						function (Graphic) {
					      
						graphic = new Graphic({
				    	  	geometry: geometry,
						    symbol: symbol
				      	});
						
				      if(attr){
				    	  graphic.attributes = attr;
				      }
				      if(template){
				    	  graphic.popupTemplate = template;
				      }
				});
				return graphic;
			},
			drawPoint: function(params){
				var point = this.createPoint(params);
				ArGis.view.graphics.add(point)
			},
			changePoint: function(evt){
				var self = this;
				var graphics = ArGis.view.graphics;
				var zoom = evt.deltaY > 0 ? ArGis.view.zoom - 1 : ArGis.view.zoom + 1;
				graphics.forEach(function(item, i){
					var status = item.attributes.status
					var pic = item.attributes.pic
					var iconUrl = "";
					if(zoom <= self.maxZoom){
						iconUrl = status == self.defaultAidStatus ? "/admin/images/map1.png" : "/admin/images/map2.png";
					}else{
						iconUrl = pic ? "/" + pic : "/admin/images/map.png";
					} 
					item.symbol.url = iconUrl;
				});
			},
			//query
			query:function(){
				if(!this.hasAuth('query')){
					this.$message.error('没有权限！');
					return;
				}
				let lat = "";
				let lng = "";
				switch (this.filters.type) {
				case "1":
					for (var i = 0; i < this.aidOptions.length; i++) {
						let node = this.aidOptions[i];
						if(this.filters.sAid_ID == node.sAid_ID){
							lat = node.lAid_Lat;
							lng = node.lAid_Lng;
							break;
						}
					}
					break;
				case "2":
					for (var i = 0; i < this.storeTypeOptions.length; i++) {
						let node = this.storeTypeOptions[i];
						if(this.filters.sStoreType_ID == node.sStoreType_ID){
							lat = node.lStoreType_Lat;
							lng = node.lStoreType_Lng;
							break;
						}
					}
					break;

				default:
					break;
				}
				
				ArGis.view.goTo([lng, lat]);
			},
			//detail
			handleDetail: function(result){
				
				let pid = result.graphic.attributes.id;
				let name = result.graphic.attributes.name;
				let type = result.graphic.attributes.type;
				
				for (var i = 0; i < this.$children.length; i++) {
					var id = this.$children[i].$attrs.id;
					if(id == "details"){
						ArGis.view.ui.add(this.$children[i].$el, "top-right");
					}
				}
				this.detailFormVisible = true;
				this.detailTitle = name;

				switch (type) {
				case "aid":
					this.detailAid(pid, result);
					this.detailType = 'aid';
					break;
				case "store":
					this.detailStore(pid, result);
					this.detailType = 'store';
					break;

				default:
					break;
				}
			},
			detailAid: function(id, result){
				for (var i = 0; i < this.aidOptions.length; i++) {
					let node = this.aidOptions[i];
					if(id == node.sAid_ID){
						this.detailForm = node;
						this.detailForm.lat = this.latFormatterAid(node);//this.formatDegree(node.lAid_Lat);
						this.detailForm.lng = this.lngFormatterAid(node);//this.formatDegree(node.lAid_Lng);
						
						this.detailForm.sAid_TypeName = this.aidTypeFormatter(node);
						this.detailForm.sAid_StationName = this.stationFormatter(node);
						this.detailForm.sAid_IconName = this.iconFormatter(node);
						this.detailForm.sAid_LightingName = this.lightFormatter(node);
						this.detailForm.sAid_MarkName = this.markFormatter(node);
						this.detailForm.sAid_StatusName = this.statusFormatter(node);
						
						this.aidId = id;
						this.detailEquipAid(id, result);
						this.msgAid(id, result);
						this.detailIcon = node.sAid_Type;
						break;
					}
				}
			},
			detailStore: function(id, result){
				for (var i = 0; i < this.storeTypeOptions.length; i++) {
					let node = this.storeTypeOptions[i];
					if(id == node.sStoreType_ID){
						this.detailForm = node;
						this.detailForm.lat = this.latFormatterStore(node);//this.formatDegree(node.lStoreType_Lat);
						this.detailForm.lng = this.lngFormatterStore(node);//this.formatDegree(node.lStoreType_Lng);
						let temp = {
							sAid_Station: node.sStoreType_Station
						};
						this.detailForm.sStoreType_StationName = this.stationFormatter(temp);

						this.storeId = id;
						this.detailEquipStore();
						this.msgStore();
						break;
					}
				}
			},
			detailEquipAid: function(){
				var self = this;
				var params = {sAid_ID: this.aidId};
				ajaxReq(aidEquipUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.aidEquipData = res.data;
						//分类
						self.iconBatteryData = [];
						self.iconSolarData = [];
						self.iconLampData = [];
						for (var i = 0; i < res.data.length; i++) {
							let node = res.data[i];
							if(node.sEquip_Type == 'EquipBattery'){
								self.iconBatteryData.push(node);
							}else if(node.sEquip_Type == 'EquipSolarEnergy'){
								self.iconSolarData.push(node);
							}else if(node.sEquip_Type == 'EquipSpareLamp' ||　node.sEquip_Type == 'EquipViceLamp'　||　node.sEquip_Type == 'EquipLamp'){
								self.iconLampData.push(node);
							}
						}
					});
				});
			},
			detailEquipStore: function(){
				var self = this;
				var params = {
						page: this.detailStoreEquipPage,
						rows: this.detailStoreEquipRows,
						sEquip_StoreLv1: this.storeId
				};
				ajaxReq(storeEquipUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.storeEquipData = res.data;
						self.detailStoreEquipTotal = res.total;
					});
				});
			},
			handleDetailStoreEquipSizeChange: function (val) {
				this.detailStoreEquipRows = val;
				this.detailEquipStore();
			},
			handleDetailStoreEquipCurrentChange: function (val) {
				this.detailStoreEquipPage = val;
				this.detailEquipStore();
			},
			handleIconMaskShow: function(evt){
				$(evt.target).css("opacity", "0.5");
			},
			handleIconMaskHide: function(evt){
				$(evt.target).css("opacity", "0");
			},
			
			msgAid: function(){
				var self = this;
				var params = {
						page: this.msgAidPage,
						rows: this.msgAidRows,
						sMsg_AidID: this.aidId
				};
				ajaxReq(msgAidUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.msgAidData = res.data;
						self.msgAidTotal = res.total;
					});
				});
			},	
			handleMsgAidSizeChange: function (val) {
				this.msgAidRows = val;
				this.msgAid();
			},
			handleMsgAidCurrentChange: function (val) {
				this.msgAidPage = val;
				this.msgAid();
			},
			
			msgStore: function(){
				var self = this;
				var params = {
						page: this.msgStorePage,
						rows: this.msgStoreRows,
						sMsg_StoreLv1: this.storeId
				};
				ajaxReq(msgStoreUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.msgStoreData = res.data;
						self.msgStoreTotal = res.total;
					});
				});
			},
			handleMsgStoreSizeChange: function (val) {
				this.msgStoreRows = val;
				this.msgStore();
			},
			handleMsgStoreCurrentChange: function (val) {
				this.msgStorePage = val;
				this.msgStore();
			},

			detailClose: function () {
				this.detailFormVisible = false;
				this.$refs.detailForm.resetFields();
			},
			
			//reset
			reset: function(){
				this.filters = {
					type: '',
					sAid_ID: '',
					sStoreType_ID: ''
				};
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
			
			//this.handleAidStatusIconOptions();
			//this.handleStoreMapIconOptions();
			
			//aid
			this.handleAidTypeOptions();
			this.handleStationOptions();
			this.handleIconOptions();
			this.handleLightOptions();
			this.handleMarkOptions();
			this.handleStatusOptions();
			
			this.handleStoreTypeOptions(this.handleAidOptions(this.initMap()));
			//this.handleAidOptions();
			//this.initMap();
		}
	  });
	
	

