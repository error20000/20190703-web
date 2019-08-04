var baseUrl = parent.window.baseUrl || '../';

var aidUrl = baseUrl + "api/aid/findAll";
var storeTypeUrl = baseUrl + "api/store/findType";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					type: '1',
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
				storeTypeOptions: [],
				
				pointArray: [],
				
				detailFormVisible: false,
				detailForm: {},
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
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
				        url: "http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"
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
							console.log(self);
							ArGis.view.hitTest(evt).then(function(response) {
							    var result = response.results[0];
							    if (result) {
							    	self.handleDetail(result);
							    }
						    });
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
							type: 'aid'
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
							type: 'store'
						},
						color: "red",
						width: "10px"
					}));
				}
				console.log("=============initData==============");
				console.log(this.pointArray);
				ArGis.view.graphics.addMany(this.pointArray);
			},
			createPoint: function(params){
				var geometry = {
					type: "point",
				    longitude: params.lng ,
				    latitude: params.lat
				  };
					
			     var symbol  = {
		  		    type: "simple-marker",  
		  		    color: params.color ? params.color : [226, 119, 40],
		  		    size: params.width ? params.width : "4px",
				    outline: {
				    	style:"none"
				    }
		  		  };
				/*var symbol = {};
			     require(["esri/symbols/WebStyleSymbol"], 
							function (WebStyleSymbol) {
			    	 symbol = {
			    			 type: "web-style", 
			    			 name: "tear-pin-2",
			    			 styleName: "Esri2DPointSymbolsStyle"
			    	 };

			     });*/
			     
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
				let type = result.graphic.attributes.type;
				
				for (var i = 0; i < this.$children.length; i++) {
					var id = this.$children[i].$attrs.id;
					if(id == "details"){
						ArGis.view.ui.add(this.$children[i].$el, "top-right");
					}
				}
				this.detailFormVisible = true;

				switch (type) {
				case "aid":
					this.detailAid(pid);
					break;
				case "store":
					this.detailStore(pid);
					break;

				default:
					break;
				}
			},
			detailAid: function(id){
				for (var i = 0; i < this.aidOptions.length; i++) {
					let node = this.aidOptions[i];
					if(id == node.sAid_ID){
						this.detailForm = node;
						break;
					}
				}
			},
			detailStore: function(id){
				for (var i = 0; i < this.storeTypeOptions.length; i++) {
					let node = this.storeTypeOptions[i];
					if(id == node.sStoreType_ID){
						this.detailForm = node;
						break;
					}
				}
			},
			//reset
			reset: function(){
				this.filters = {
					type: '1',
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
			this.handleStoreTypeOptions(this.handleAidOptions(this.initMap()));
			//this.handleAidOptions();
			//this.initMap();
		}
	  });
	
	

