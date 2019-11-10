var baseUrl = parent.window.baseUrl || '../';

var aidUrl = baseUrl + "api/aid/map";
var storeTypeUrl = baseUrl + "api/store/map";
var dictUrl = baseUrl + "api/dict/findList";
var aidEquipUrl = baseUrl + "api/aid/equip";
var storeEquipUrl = baseUrl + "api/store/equip";
var msgAidUrl = baseUrl + "api/aid/msg";
var msgStoreUrl = baseUrl + "api/store/msg";
var storeAllUrl = baseUrl + "api/store/findAll";
var msgDetailUrl = baseUrl + "api/msg/view";

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
				msgStatusDictNo: 'MsgStatus',
				msgStatusOptions: [],
				
				pointArray: [],
				defaultAidStatus: 'normal',
				defaultStoreStatus: 'normal',
				maxZoom: 10,
				maxZoomPoint: 6,
				defaultWidth: '24px',
				defaultHeight: '24px',
				
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
				iconBodyData: [],
				iconAnchorData: [],
				iconStoneData: [],
				
				detailStoreAll: [],
				detailStoreLoading: false,
				detailStoreSels: [],
				expands1: [],
				expands2: [],
				expands3: [],
				expands4: [],
				breadcrumbData: [],

				storeData1: {},
				storeEquipContainer1: false,
				storeEquipData1: {},
				detailStoreEquipTotal1: {},
				detailStoreEquipPage1: {},
				detailStoreEquipRows1: 10,
				storeId1: '',

				storeData2: {},
				storeEquipContainer2: false,
				storeEquipData2: {},
				detailStoreEquipTotal2: {},
				detailStoreEquipPage2: {},
				detailStoreEquipRows2: 10,
				storeId2: '',

				storeData3: {},
				storeEquipContainer3: false,
				storeEquipData3: {},
				detailStoreEquipTotal3: {},
				detailStoreEquipPage3: {},
				detailStoreEquipRows3: 10,
				storeId3: '',

				storeData4: {},
				storeEquipContainer4: false,
				storeEquipData4: {},
				detailStoreEquipTotal4: {},
				detailStoreEquipPage4: {},
				detailStoreEquipRows4: 10,
				storeId4: '',
				
				msgStoreData: [],
				msgStoreTotal: 0,
				msgStorePage: 1,
				msgStoreRows: 10,
				
				msgAidData: [],
				msgAidTotal: 0,
				msgAidPage: 1,
				msgAidRows: 10,
				
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
						break;
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
						break;
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
						break;
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
						break;
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
						break;
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
						break;
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
			msgStatusFormatter: function(row){
				var name = row.sMsg_Status;
				for (var i = 0; i < this.msgStatusOptions.length; i++) {
					var item = this.msgStatusOptions[i];
					if(row.sMsg_Status == item.sDict_NO){
						name = item.sDict_Name;
						break;
					}
				}
				return name;
			},
			handleMsgStatusOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.msgStatusDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.msgStatusOptions = res.data;
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
				
				var zoom = params.zoom ? params.zoom : ArGis.view.zoom;
				
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
				
				var self = this;
				var symbol = {};
				
				if(zoom <= self.maxZoomPoint){
					var color = "green";
					var size = "4px";
					if(params.attr.type == 'aid'){
						color = params.attr.status == this.defaultAidStatus ? "green" : "red";
						size = sysData.lSys_MapIconWidthPoint ? sysData.lSys_MapIconWidthPoint + 'px' : "4px";
					}else{
						size = sysData.lSys_StoreIconWidthPoint ? sysData.lSys_StoreIconWidthPoint + 'px' : "4px";
					}
					 symbol = {
			  		    type: "simple-marker",  
			  		    color: color,
			  		    size: size,
					    outline: {
					    	style:"none"
					    }
			  		  };
				}else{
					var iconUrl = "";
					if(zoom <= this.maxZoom){
						iconUrl = "/admin/images/map1.png";
						if(params.attr.type == 'aid'){
							iconUrl = params.attr.status == this.defaultAidStatus ? "/admin/images/map1.png" : "/admin/images/map2.png";
						}
					}else{
						iconUrl = params.attr.pic ? "/"+params.attr.pic : "/admin/images/map.png";
					}
					require(["esri/symbols/PictureMarkerSymbol"], 
							function (PictureMarkerSymbol) {
						if(zoom <= self.maxZoom){
							if(params.attr.type == 'aid'){
								symbol = {
										type: "picture-marker",
										url: iconUrl,
										width: sysData.lSys_MapIconWidthDef == 0 ? self.defaultWidth : sysData.lSys_MapIconWidthDef + 'px',
										height: sysData.lSys_MapIconHeightDef == 0 ? self.defaultHeight : sysData.lSys_MapIconHeightDef + 'px'
								};
							}else{
								symbol = {
										type: "picture-marker",
										url: iconUrl,
										width: sysData.lSys_StoreIconWidthDef == 0 ? self.defaultWidth : sysData.lSys_StoreIconWidthDef + 'px',
										height: sysData.lSys_StoreIconHeightDef == 0 ? self.defaultHeight : sysData.lSys_StoreIconHeightDef + 'px'
								};
							}
						}else{
							if(params.attr.type == 'aid'){
								symbol = {
										type: "picture-marker",
										url: iconUrl,
										width: sysData.lSys_MapIconWidth == 0 ? self.defaultWidth : sysData.lSys_MapIconWidth + 'px',
										height: sysData.lSys_MapIconHeight == 0 ? self.defaultHeight : sysData.lSys_MapIconHeight + 'px'
								};
							}else{
								symbol = {
										type: "picture-marker",
										url: iconUrl,
										width: sysData.lSys_StoreIconWidth == 0 ? self.defaultWidth : sysData.lSys_StoreIconWidth + 'px',
										height: sysData.lSys_StoreIconHeight == 0 ? self.defaultHeight : sysData.lSys_StoreIconHeight + 'px'
								};
							}
						}
						
					});
				}
				
			     
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
			updatePoint: function(zoom){
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
						width: "10px",
						zoom: zoom
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
						width: "10px",
						zoom: zoom
					}));
				}
				ArGis.view.graphics.addMany(this.pointArray);
			},
			changePoint: function(evt){
				var self = this;
				var graphics = ArGis.view.graphics;
				var zoom = evt.deltaY > 0 ? ArGis.view.zoom - 1 : ArGis.view.zoom + 1;
				var flag = true;
				if(zoom <= self.maxZoomPoint){
					if(graphics.getItemAt(0).symbol.type == "picture-marker"){
						graphics.removeAll();
						self.updatePoint(zoom);
						flag = false;
					}
				}else{
					if(graphics.getItemAt(0).symbol.type == "simple-marker"){
						graphics.removeAll();
						self.updatePoint(zoom);
						flag = false;
					}
				}
				if(!flag){
					return;
				}
				graphics.forEach(function(item, i){
					var status = item.attributes.status
					var pic = item.attributes.pic
					var iconUrl = "";
					var color = "";
					var symbol = item.symbol;
					if(zoom > self.maxZoomPoint){
						if(zoom <= self.maxZoom){
							iconUrl = "/admin/images/map1.png";
							if(item.attributes.type == 'aid'){
								iconUrl = status == self.defaultAidStatus ? "/admin/images/map1.png" : "/admin/images/map2.png";
								symbol.width = sysData.lSys_MapIconWidthDef == 0 ? self.defaultWidth : sysData.lSys_MapIconWidthDef + 'px';
								symbol.height = sysData.lSys_MapIconHeightDef == 0 ? self.defaultHeight : sysData.lSys_MapIconHeightDef + 'px';
							}else{
								symbol.width = sysData.lSys_StoreIconWidthDef == 0 ? self.defaultWidth : sysData.lSys_StoreIconWidthDef + 'px';
								symbol.height = sysData.lSys_StoreIconHeightDef == 0 ? self.defaultHeight : sysData.lSys_StoreIconHeightDef + 'px';
							}
						}else{
							iconUrl = pic ? "/" + pic : "/admin/images/map.png";

							if(item.attributes.type == 'aid'){
								symbol.width = sysData.lSys_MapIconWidth == 0 ? self.defaultWidth : sysData.lSys_MapIconWidth + 'px';
								symbol.height = sysData.lSys_MapIconHeight == 0 ? self.defaultHeight : sysData.lSys_MapIconHeight + 'px';
							}else{
								symbol.width = sysData.lSys_StoreIconWidth == 0 ? self.defaultWidth : sysData.lSys_StoreIconWidth + 'px';
								symbol.height = sysData.lSys_StoreIconHeight == 0 ? self.defaultHeight : sysData.lSys_StoreIconHeight + 'px';
							}
						} 
						symbol.url = iconUrl;
					}
					
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
						this.detailStoreTree();
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
						self.iconBodyData = [];
						self.iconAnchorData = [];
						self.iconStoneData = [];
						for (var i = 0; i < res.data.length; i++) {
							let node = res.data[i];
							if(node.sEquip_Type == 'EquipBattery'){
								self.iconBatteryData.push(node);
							}else if(node.sEquip_Type == 'EquipSolarEnergy'){
								self.iconSolarData.push(node);
							}else if(node.sEquip_Type == 'EquipSpareLamp' ||　node.sEquip_Type == 'EquipViceLamp'　||　node.sEquip_Type == 'EquipLamp'){
								self.iconLampData.push(node);
							}else if(node.sEquip_Type == 'EquipSinkingstone'){
								self.iconStoneData.push(node);
							}else if(node.sEquip_Type == 'Equipbuoy'){
								self.iconBodyData.push(node);
							}else if(node.sEquip_Type == 'EquipAnchorchain'){
								self.iconAnchorData.push(node);
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
			detailStoreTree: function(){
				var self = this;
				var params = {
						sStore_Level1: this.storeId
				};
				ajaxReq(storeAllUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.detailStoreAll = res.data;
						self.expandChange1(self.detailStoreAll[0]);
					});
				});
			},
			goback: function(item, index){
				
				this.breadcrumbData = this.breadcrumbData.slice(0, index);
				
				switch (index) {
				case 0:
					this.expandChange1(item.data);
					break;
				case 1:
					this.expandChange2(item.data);
					break;
				case 2:
					this.expandChange3(item.data);
					break;
				case 3:
					this.expandChange4(item.data);
					break;

				default:
					break;
				}
			},
			//store equip lv 1
			expandChange1: function(row){
				this.storeEquipContainer1 = true;
				this.storeEquipContainer2 = false;
				this.storeEquipContainer3 = false;
				this.storeEquipContainer4 = false;
				this.storeId1 = row.sStore_ID;
				this.breadcrumbData = [];
				this.breadcrumbData.push({data: row, name: row.sStore_Name});
				if(row.children){
					this.$set(this.storeData1, row.sStore_ID, row.children);
					return;
				}
				this.$set(this.detailStoreEquipPage1, row.sStore_ID, 1);
				this.detailEquipStore1(row.sStore_ID);
			},
			detailEquipStore1: function(id){
				var self = this;
				var params = {
						page: this.detailStoreEquipPage1[id],
						rows: this.detailStoreEquipRows1,
						sEquip_StoreLv1: id
				};
				ajaxReq(storeEquipUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.$set(self.storeEquipData1, id, res.data);
						self.$set(self.detailStoreEquipTotal1, id, res.total);
					});
				});
			},
			handleDetailStoreEquipSizeChange1: function (val, id) {
				this.detailStoreEquipRows1[id] = val;
				this.detailEquipStore1(id);
			},
			handleDetailStoreEquipCurrentChange1: function (val, id) {
				this.detailStoreEquipPage1[id] = val;
				this.detailEquipStore1(id);
			},
			//store equip lv 2
			expandChange2: function(row){
				this.storeEquipContainer1 = false;
				this.storeEquipContainer2 = true;
				this.storeEquipContainer3 = false;
				this.storeEquipContainer4 = false;
				this.storeId2 = row.sStore_ID;
				this.breadcrumbData.push({data: row, name: row.sStore_Name});
				if(row.children){
					this.$set(this.storeData2, row.sStore_ID, row.children);
					return;
				}
				this.$set(this.detailStoreEquipPage2, row.sStore_ID, 1);
				this.detailEquipStore2(row.sStore_ID);
			},
			detailEquipStore2: function(id){
				var self = this;
				var params = {
						page: this.detailStoreEquipPage2[id],
						rows: this.detailStoreEquipRows2,
						sEquip_StoreLv1: this.storeId,
						sEquip_StoreLv2: id
				};
				ajaxReq(storeEquipUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.$set(self.storeEquipData2, id, res.data);
						self.$set(self.detailStoreEquipTotal2, id, res.total);
					});
				});
			},
			handleDetailStoreEquipSizeChange2: function (val, id) {
				this.detailStoreEquipRows2[id] = val;
				this.detailEquipStore2(id);
			},
			handleDetailStoreEquipCurrentChange2: function (val, id) {
				this.detailStoreEquipPage2[id] = val;
				this.detailEquipStore2(id);
			},
			//store equip lv 3
			expandChange3: function(row){
				this.storeEquipContainer1 = false;
				this.storeEquipContainer2 = false;
				this.storeEquipContainer3 = true;
				this.storeEquipContainer4 = false;
				this.storeId3 = row.sStore_ID;
				this.breadcrumbData.push({data: row, name: row.sStore_Name});
				if(row.children){
					this.$set(this.storeData3, row.sStore_ID, row.children);
					return;
				}
				this.$set(this.detailStoreEquipPage3, row.sStore_ID, 1);
				this.detailEquipStore3(row.sStore_ID);
			},
			detailEquipStore3: function(id){
				var self = this;
				var params = {
						page: this.detailStoreEquipPage3[id],
						rows: this.detailStoreEquipRows3,
						sEquip_StoreLv1: this.storeId,
						sEquip_StoreLv2: this.storeId2,
						sEquip_StoreLv3: id
				};
				ajaxReq(storeEquipUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.$set(self.storeEquipData3, id, res.data);
						self.$set(self.detailStoreEquipTotal3, id, res.total);
					});
				});
			},
			handleDetailStoreEquipSizeChange3: function (val, id) {
				this.detailStoreEquipRows3[id] = val;
				this.detailEquipStore3(id);
			},
			handleDetailStoreEquipCurrentChange3: function (val, id) {
				this.detailStoreEquipPage3[id] = val;
				this.detailEquipStore3(id);
			},
			//store equip lv 4
			expandChange4: function(row){
				console.log(this.storeId4, this.detailStoreEquipPage4);
				this.storeEquipContainer1 = false;
				this.storeEquipContainer2 = false;
				this.storeEquipContainer3 = false;
				this.storeEquipContainer4 = true;
				this.storeId4 = row.sStore_ID;
				this.breadcrumbData.push({data: row, name: row.sStore_Name});
				if(row.children){
					this.$set(this.storeData4, row.sStore_ID, row.children);
					return;
				}
				this.$set(this.detailStoreEquipPage4, row.sStore_ID, 1);
				this.detailEquipStore4(row.sStore_ID);
			},
			detailEquipStore4: function(id){
				var self = this;
				var params = {
						page: this.detailStoreEquipPage4[id],
						rows: this.detailStoreEquipRows4,
						sEquip_StoreLv1: this.storeId,
						sEquip_StoreLv2: this.storeId2,
						sEquip_StoreLv3: this.storeId3,
						sEquip_StoreLv4: id
				};
				ajaxReq(storeEquipUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.$set(self.storeEquipData4, id, res.data);
						self.$set(self.detailStoreEquipTotal4, id, res.total);
					});
				});
			},
			handleDetailStoreEquipSizeChange4: function (val, id) {
				this.detailStoreEquipRows4[id] = val;
				this.detailEquipStore4(id);
			},
			handleDetailStoreEquipCurrentChange4: function (val, id) {
				this.detailStoreEquipPage4[id] = val;
				this.detailEquipStore4(id);
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

			this.maxZoomPoint = sysData.lSys_MapLevelPoint;
			this.maxZoom = sysData.lSys_MapLevelDef;
			
			//this.handleAidStatusIconOptions();
			//this.handleStoreMapIconOptions();
			
			//aid
			this.handleAidTypeOptions();
			this.handleStationOptions();
			this.handleIconOptions();
			this.handleLightOptions();
			this.handleMarkOptions();
			this.handleStatusOptions();
			this.handleMsgStatusOptions();
			
			let self = this;
			this.handleStoreTypeOptions(function(){
				self.handleAidOptions(function(){
					self.initMap();
				});
			});
			//this.handleAidOptions();
			//this.initMap();
		}
	  });
	
	

