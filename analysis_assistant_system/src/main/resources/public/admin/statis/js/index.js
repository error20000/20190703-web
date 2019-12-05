var baseUrl = '../../';

var dictUrl = baseUrl + "api/dict/findList";
var equipStoreUrl = baseUrl + "api/store/findList";
var equipBrandOptionUrl = baseUrl + "api/equip/brandOption";
var equipLifeUrl = baseUrl + "api/equip/life";
var equipBrandUrl = baseUrl + "api/equip/brand";
var equipBrandRepairUrl = baseUrl + "api/equip/brandRepair";

var chartAidMapUrl = baseUrl + "api/aid/statisMap";
var chartEquipTypeUrl = baseUrl + "api/equip/equipType";
var chartAidUrl = baseUrl + "api/aid/statis";

var msgListUrl = baseUrl + "api/msg/findPage";
var aidListUrl = baseUrl + "api/aid/status";

var storeTimeUrl = baseUrl + "api/store/time2";
var storeInoutUrl = baseUrl + "api/store/inout";

var positionUrl = baseUrl + "api/user/position";
var updatePositionUrl = baseUrl + "api/user/updatePosition";

var weatherUrl = baseUrl + "api/weather/get";

var msgDetailUrl = baseUrl + "api/msg/view";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
					used: '',
					sEquip_Type: ''
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
				fullScreenEnabled: false, 
				isFullScreen: false, 

				bmapCenter: [113.7356, 22.654925],
				bmapZoom: 8,

				storeLv1Options: [],
				equipTypeDictNo: 'EquipType',
				equipTypeOptions: [],
				aidStationDictNo: 'AidStation',
				aidStationOptions: [],
				brandOptions: [],

				
				filtersStoreTime: {
					sStore_Level1: '',
					sEquip_Type: ''
				},
				filtersLife: {
					sEquip_MBrand: '',
					sEquip_Type: ''
				},
				filters3: {
					sAid_Station: '',
					sEquip_Type: ''
				},
				filtersStore: {
					sEquip_StoreLv1: ''
				},
				filtersBrand: {
					sAid_Station: ''
				},
				filtersBrandDump: {
					sAid_Station: ''
				},
				filtersBrandUnusual: {
					sAid_Station: ''
				},
				filtersBrandRepair: {
					sAid_Station: ''
				},
				
				//drag
				myList: [], 
				baseWidth: 0, 
				baseHeight: 0, 
				gridster: '',
				chartBox: {},
				//msg
				msgFormVisible: false,
				msgLoading: false,
				msgFormRules: {},
				msgForm: {},
				
				user: ''
			}
		},
		components: {
			'power-drag' : powerDrag
		},
		created: function() { 
             //屏幕适配，使得当前布局能在所有分辨率下适用，示例是在1366*638分辨率下完成 
             let screenWidth = window.innerWidth; 
             let screenHeight = window.innerHeight; 
             this.baseWidth = 90.8333 * (screenWidth / 1366); 
             this.baseHeight = 110 * (screenHeight / 638); 
             this.baseMarginLeft = 20 * (screenWidth / 1366); 
             this.baseMarginTop = 20 * (screenHeight / 638); 
  
             this.$nextTick(function () { 
                 $(".dragAndResize").css("width", "calc(100% - " + (this.baseMarginLeft) + "px)") 
             }) 
        }, 


		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
			},
			formatDateStr: function(date, str){
				return parent.window.formatDate(date, str);
			},
			handleEquipTypeOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.equipTypeDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.equipTypeOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleAidStationOptions: function(cb){
				var self = this;
				var params = {sDict_DictTypeNO: this.aidStationDictNo};
				ajaxReq(dictUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.aidStationOptions = res.data;
						if(typeof cb == 'function'){
							cb();
						}
					});
				});
			},
			handleStoreLv1Options: function(){
				var self = this;
				var params = {};
				ajaxReq(equipStoreUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.storeLv1Options = res.data;
					});
				});
			},
			handleBrandOptions: function(){
				var self = this;
				var params = {};
				ajaxReq(equipBrandOptionUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.brandOptions = res.data;
					});
				});
			},
			
			//chartAidMap
			chartAidMap: function(filter){
				var chartId = "chartAidMap";
				var self = this;
				// 基于准备好的dom，初始化echarts实例
		        var myChart = echarts.init(document.getElementById(chartId), 'walden');
		        myChart.clear();
		        
		        var series = [];
		        var legendData = [];
		        var unUsedData = [];
		        var usedData = [];
				var params = filter || {};
				ajaxReqSync(chartAidMapUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							usedData.push({
			                       name: node.sAid_Name,
			                       aid: node.sAid_NO,
			                       aidType: node.sAid_Type,
			                       aidTypeName: node.sAid_TypeName,
			                       value: [node.lAid_Lng, node.lAid_Lat, 1]
				            });
						}
						
						var tempHash = {};
						for (var i = 0; i < usedData.length; i++) {
							var node = usedData[i];
							var key = node.aidType;
							var name = node.aidTypeName;
							if(!tempHash[key]){
								tempHash[key] = {};
								tempHash[key].name = name;
								tempHash[key].data = [];
							}
							tempHash[key].data.push(node);
						}
						console.log(tempHash);
						for ( var key in tempHash) {
							var data = tempHash[key].data;
							var name = tempHash[key].name;
							var temp = {
					                name: name,
					                type: 'scatter',
					                coordinateSystem: 'bmap',
					                data: data,
					                symbolSize: function (val) {
					                    return val[2] > 10 ? val[2] / 10 : 10;
					                },
					                label: {
					                    normal: {
					                        formatter: '{b}',
					                        position: 'right',
					                        show: false
					                    },
					                    emphasis: {
					                        show: true
					                    }
					                },
						            tooltip: {
						            	trigger: 'item',
						            	formatter: function (obj) {
						            		return '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
						                    + obj.name
						                    + '</div>'
						                    + '种类' + '：' + obj.seriesName + '<br>'
						                    + '编码' + '：' + obj.data.aid + '<br>';
						            	}
						            }
					            }
								series.push(temp);
								legendData.push(name);
						}
						/*for (var i = 0; i < usedData.length; i++) {
							var node = usedData[i];
							var temp = {
				                name: node.name,
				                type: 'scatter',
				                coordinateSystem: 'bmap',
				                data: [node],
				                symbolSize: function (val) {
				                    return val[2] > 10 ? val[2] / 10 : 10;
				                },
				                label: {
				                    normal: {
				                        formatter: '{b}',
				                        position: 'right',
				                        show: false
				                    },
				                    emphasis: {
				                        show: true
				                    }
				                },
					            tooltip: {
					            	trigger: 'item',
					            	formatter: function (obj) {
					            		return '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
					                    + obj.name
					                    + '</div>'
					                    + '编码' + '：' + obj.seriesName + '<br>';
					            	}
					            }
				            }
							series.push(temp);
							legendData.push(node.name);
						}*/
					});
				});
				
				// 指定图表的配置项和数据
		        var option = {
		        /*	title:{
						text:"{a|航标分布地图}",
				        left: 'center'
		        	},*/
		            tooltip: {
		            	trigger: 'item',
		            	formatter: function (obj) {
		            		return '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
		                    + obj.name
		                    + '</div>'
		                    + obj.seriesName + '：' + obj.value[2] + '<br>';
		            	}
		            },
			        /*legend: {
			        	type: 'scroll',
			        	orient: 'vertical',
			        	align: 'right',
			        	right: 10,
			        	height: 300,
			            data: legendData
			        },*/
		            xAxis:{
		            	show:false
		            },
		            yAxis:{
		            	show:false
		            },
		            bmap: {
		                center: this.bmapCenter,
		                zoom: this.bmapZoom,
		                roam: true,
		                mapStyle: {
		                	styleJson: [{
		                        'featureType': 'water',
		                        'elementType': 'all',
		                        'stylers': {
		                            'color': '#044161'
		                        }
		                    }, {
		                        'featureType': 'land',
		                        'elementType': 'all',
		                        'stylers': {
		                            'color': '#121e30'
		                        }
		                    }, {
		                        'featureType': 'railway',
		                        'elementType': 'all',
		                        'stylers': {
		                            'visibility': 'off'
		                        }
		                    }, {
		                        'featureType': 'highway',
		                        'elementType': 'all',
		                        'stylers': {
		                            'visibility': 'off'
		                        }
		                    }, {
		                        'featureType': 'highway',
		                        'elementType': 'labels',
		                        'stylers': {
		                            'visibility': 'off'
		                        }
		                    }, {
		                        'featureType': 'arterial',
		                        'elementType': 'geometry',
		                        'stylers': {
		                            'color': '#004981'
		                        }
		                    }, {
		                        'featureType': 'arterial',
		                        'elementType': 'geometry.fill',
		                        'stylers': {
		                            'color': '#004981'
		                        }
		                    }, {
		                        'featureType': 'poi',
		                        'elementType': 'all',
		                        'stylers': {
		                            'visibility': 'off'
		                        }
		                    }, {
		                        'featureType': 'green',
		                        'elementType': 'all',
		                        'stylers': {
		                            'visibility': 'off'
		                        }
		                    }, {
		                        'featureType': 'subway',
		                        'elementType': 'all',
		                        'stylers': {
		                            'visibility': 'off'
		                        }
		                    }, {
		                        'featureType': 'manmade',
		                        'elementType': 'all',
		                        'stylers': {
		                            'color': '#d1d1d1'
		                        }
		                    }, {
		                        'featureType': 'local',
		                        'elementType': 'all',
		                        'stylers': {
		                            'color': '#d1d1d1'
		                        }
		                    }, {
		                        'featureType': 'arterial',
		                        'elementType': 'labels',
		                        'stylers': {
		                            'visibility': 'off'
		                        }
		                    }, {
		                        'featureType': 'boundary',
		                        'elementType': 'all',
		                        'stylers': {
		                            'color': '#fefefe'
		                        }
		                    }, {
		                        'featureType': 'building',
		                        'elementType': 'all',
		                        'stylers': {
		                            'color': '#d1d1d1'
		                        }
		                    }, {
		                        'featureType': 'label',
		                        'elementType': 'labels.text.fill',
		                        'stylers': {
		                            'color': '#00ccff'
		                        }
		                    }, {
		                        'featureType': 'label',
		                        'elementType': 'labels.text.stroke',
		                        'stylers': {
		                            'color': '#121e30'
		                        }
		                    }]
		                }
		            },
		            series: series
		        };
				
		        //先调整大小后，再填入数据，这样可以解决散列点与地图位置不匹配的问题。
				this.chartBox[chartId] = myChart;
				this.resizeChart(chartId);

		        // 使用刚指定的配置项和数据显示图表。
		        myChart.setOption($.extend(true, {}, goption, option));

				/*$("#"+chartId).resize(function() {
					myChart.resize();
				});*/
		        
			},
			queryEquipDistribution:function(){
				this.chartEquipDistribution(this.filters);
			},
			resetEquipDistribution: function(){
				this.filters = {
					used: '',
					sEquip_Type: ''
				};
				this.chartEquipDistribution();
			},


			//queryStoreTime
			chartStoreTime: function(filter){
				var chartId = "chartStoreTime";
		        var myChart = echarts.init(document.getElementById(chartId), 'walden');
		        myChart.clear();

				var series = [];
				var legendData = [];
				var xData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(storeTimeUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						var legendHash = {};
						var dateHash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							
							var dateKey = self.formatDateStr(node.dSLog_CreateDate, 'yyyy-MM-dd');
							if(!dateHash[dateKey]){
								var index = xData.push(dateKey);
								dateHash[dateKey] = index;
							}
							
							var legendKey = (node.sSLog_StoreLv1Name ? node.sSLog_StoreLv1Name : '未知') + "-" + (node.sSLog_EquipTypeName ? node.sSLog_EquipTypeName : '未知');
							if(!legendHash[legendKey]){
								var index = legendData.push(legendKey);
								legendHash[legendKey] = index;
							}
							
							var key = dateKey + "_" + legendKey;
							if(!hash[key]){
								hash[key] = node.dSLog_EquipNum;
							}else{
								hash[key] = hash[key] + node.dSLog_EquipNum;
							}
						}
						//legend
						for (var i = 0; i < legendData.length; i++) {
							for (var j = i; j < legendData.length; j++) {
								if(legendData[i] > legendData[j]){
									var temp = legendData[i];
									legendData[i] = legendData[j];
									legendData[j] = temp;
								}
							}
						}
						//x
						for (var i = 0; i < xData.length; i++) {
							for (var j = i; j < xData.length; j++) {
								if(xData[i] > xData[j]){
									var temp = xData[i];
									xData[i] = xData[j];
									xData[j] = temp;
								}
							}
						}
						//y
						for (var i = 0; i < legendData.length; i++) {
							var snode = {
					            name: legendData[i],
					            type: 'line',
					            data: []
					        };
							
							for (var j = 0; j < xData.length; j++) {
								var key = xData[j] + "_" + legendData[i];
								snode.data.push(hash[key] ? hash[key] : 0);
							}
							
							series.push(snode);
						}
					});
				});
				
				var option = {
					title:{
						text:"{a|仓库统计}"		
					},
			        tooltip: {
			            trigger: 'axis'
			        },
			        legend: {
			        	type: 'scroll',
			        	orient: 'vertical',
			        	align: 'right',
			        	right: 10,
			        	height: 110,
			            data: legendData
			        },
			        xAxis: {
			            data: xData
			        },
			        yAxis: {
			            splitLine: {
			                show: false
			            }
			        },
			        toolbox: {
			            left: 'right',
			            feature: {
			                dataZoom: {
			                    yAxisIndex: 'none'
			                },
			                restore: {},
			                saveAsImage: {}
			            }
			        },
			        dataZoom: [{
			        	show: true,
			            start: 0,
			            end: 100
			        },{
			            type: 'inside',
			            zoomOnMouseWheel: 'shift'
			        }],
			        grid:{
			        	containLabel:true,
			        	left:10,
			        	right:10,
			        	top:40,
			        	bottom:40
			        },
			        
			        series: series
			    };
				myChart.setOption($.extend(true, {}, goption, option));
				
				/*$("#"+chartId).resize(function() {
					myChart.resize();
				});*/
				
				this.chartBox[chartId] = myChart;
				this.resizeChart(chartId);
			},
			queryStoreTime:function(){
				this.chartStoreTime(this.filtersStoreTime);
			},
			resetStoreTime: function(){
				this.filtersStoreTime = {
					sStore_Level1: '',
					sEquip_Type: ''
				};
				this.chartStoreTime();
			},
			
			//queryStoreInout
			chartStoreInout: function(filter){
				var chartId = "chartStoreInout";
		        var myChart = echarts.init(document.getElementById(chartId), 'walden');
		        myChart.clear();

				var series = [];
				var legendData = [];
				var xData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(storeInoutUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						var legendHash = {};
						var dateHash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							
							var dateKey = self.formatDateStr(node.dELog_CreateDate, 'yyyy-MM-dd');
							if(!dateHash[dateKey]){
								var index = xData.push(dateKey);
								dateHash[dateKey] = index;
							}
							
							var legendKey = (node.sELog_StoreLv1Name ? node.sELog_StoreLv1Name : '未知') + "-" + (node.sELog_Type == '1' ? '入库' : node.sELog_Type == '2' ? '出库' : '未知');
							if(!legendHash[legendKey]){
								var index = legendData.push(legendKey);
								legendHash[legendKey] = index;
							}
							
							var key = dateKey + "_" + legendKey;
							if(!hash[key]){
								hash[key] = 1;
							}else{
								hash[key] = hash[key] + 1;
							}
						}
						//legend
						for (var i = 0; i < legendData.length; i++) {
							for (var j = i; j < legendData.length; j++) {
								if(legendData[i] > legendData[j]){
									var temp = legendData[i];
									legendData[i] = legendData[j];
									legendData[j] = temp;
								}
							}
						}
						//x
						for (var i = 0; i < xData.length; i++) {
							for (var j = i; j < xData.length; j++) {
								if(xData[i] > xData[j]){
									var temp = xData[i];
									xData[i] = xData[j];
									xData[j] = temp;
								}
							}
						}
						//y
						for (var i = 0; i < legendData.length; i++) {
							var snode = {
					            name: legendData[i],
					            type: 'bar',
					            data: []
					        };
							
							for (var j = 0; j < xData.length; j++) {
								var key = xData[j] + "_" + legendData[i];
								snode.data.push(hash[key] ? hash[key] : 0);
							}
							
							series.push(snode);
						}
					});
				});
				
				var option = {
					title:{
						text:"{a|出入库趋势}"		
					},
			        tooltip: {
			            trigger: 'axis'
			        },
			        legend: {
			        	type: 'scroll',
			        	orient: 'vertical',
			        	align: 'right',
			        	right: 10,
			        	height: 110,
			            data: legendData
			        },
			        xAxis: {
			            data: xData
			        },
			        yAxis: {
			            splitLine: {
			                show: false
			            }
			        },
			        toolbox: {
			            left: 'right',
			            feature: {
			                dataZoom: {
			                    yAxisIndex: 'none'
			                },
			                restore: {},
			                saveAsImage: {}
			            }
			        },
			        dataZoom: [{
			        	show: true,
			            start: 0,
			            end: 100
			        },{
			            type: 'inside',
			            zoomOnMouseWheel: 'shift'
			        }],
			        grid:{
			        	containLabel:true,
			        	left:10,
			        	right:10,
			        	top:40,
			        	bottom:40
			        },
			        
			        series: series
			    };
				myChart.setOption($.extend(true, {}, goption, option));
				
				/*$("#"+chartId).resize(function() {
					myChart.resize();
				});*/
				
				this.chartBox[chartId] = myChart;
				this.resizeChart(chartId);
			},



			//queryEquipType
			chartEquipType: function(filter){
				var chartId = "chartEquipType";
		        var myChart = echarts.init(document.getElementById(chartId), 'walden');
		        myChart.clear();
		        
		        var data = [];
				var legendData = [];
				var xAxisData = [];
				var yData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(chartEquipTypeUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							//xAxisData.push(node.sEquip_TypeName ? node.sEquip_TypeName : "未知");
							//yData.push(node.sEquip_Num);
							yData.push({
								value: node.sEquip_Num,
								name: node.sEquip_TypeName ? node.sEquip_TypeName : "未知"
							});
						}
					});
				});
				
				/*var option = {
						title:{
							text:"{a|器材统计}"		
						},
					    tooltip: {
					        trigger: 'axis',
					    },
					    toolbox: {
					        feature: {
					            dataView: {show: true, readOnly: false},
					            magicType: {show: true, type: ['line', 'bar']},
					            restore: {show: true},
					            saveAsImage: {show: true}
					        }
					    },
					    xAxis: [
					        {
					            type: 'category',
					            data: xAxisData,
					            axisPointer: {
					                type: 'shadow'
					            }
					        }
					    ],
					    yAxis: [
					        {
					            type: 'value',
					            name: '',
					            minInterval: 1
					        }
					    ],
					    series: [
					        {
					            name:'数量',
					            type:'bar',
					            data: yData
					        }
					    ]
					};*/
				var option = {
						title:{
							text:"{a|器材统计}"		
						},
						tooltip : {
					        trigger: 'item',
					        formatter: "{b} <br/>{a} : {c} ({d}%)"
					    },
					    xAxis:{
					    	show: false
					    },
					    yAxis:{
					    	show: false
					    },
					    series: [
					        {
					            name:'数量',
					            type:'pie',
					            radius : '58%',
					            data: yData
					        }
					    ]
					};
				myChart.setOption($.extend(true, {}, goption, option));

				/*$("#"+chartId).resize(function() {
					myChart.resize();
				});*/
				
				this.chartBox[chartId] = myChart;
				this.resizeChart(chartId);
			},


			//queryAid
			chartAid: function(filter){
				var chartId = "chartAid";
		        var myChart = echarts.init(document.getElementById(chartId), 'walden');
		        myChart.clear();
		        
		        var data = [];
				var legendData = [];
				var xAxisData = [];
				var yData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(chartAidUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							//xAxisData.push(node.sAid_TypeName ? node.sAid_TypeName : "未知");
							//yData.push(node.sAid_Num);
							yData.push({
								value: node.sAid_Num, 
								name: node.sAid_TypeName ? node.sAid_TypeName : "未知"
							});
						}
					});
				});
				
				/*var option = {
						title:{
							text:"{a|航标统计}"		
						},
					    tooltip: {
					        trigger: 'axis',
					    },
					    toolbox: {
					        feature: {
					            dataView: {show: true, readOnly: false},
					            magicType: {show: true, type: ['line', 'bar']},
					            restore: {show: true},
					            saveAsImage: {show: true}
					        }
					    },
					    xAxis: {
					            type: 'category',
					            data: xAxisData,
					            axisPointer: {
					                type: 'shadow'
					            }
					        },
					    yAxis: {
					            type: 'value',
					            name: '',
					            minInterval: 1
					        },
					    series: [
					        {
					            name:'数量',
					            type:'bar',
					            data: yData
					        }
					    ]
					};*/
				var option = {
						title:{
							text:"{a|航标统计}"		
						},
						tooltip : {
					        trigger: 'item',
					        formatter: "{b} <br/>{a} : {c} ({d}%)"
					    },
					    xAxis:{
					    	show: false
					    },
					    yAxis:{
					    	show: false
					    },
					    series: [
					        {
					            name:'数量',
					            type:'pie',
					            radius : '58%',
					            data: yData
					        }
					    ]
					};
				
				myChart.setOption($.extend(true, {}, goption, option));

				/*$("#"+chartId).resize(function() {
					myChart.resize();
				});*/
				
				this.chartBox[chartId] = myChart;
				this.resizeChart(chartId);
			},


			//msgList
			msgList: function(){
				var self = this;
				var params = {
					page: 1,
					rows: 10,
				};
				ajaxReq(msgListUrl, params, function(res){
					self.handleResQuery(res, function(){
						var str = '';
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							str += '<div class="msg_im">';
							str += '<a href="javascript:void(0);" class="l-it" title="'+node.sMsg_Title+'" data="'+node.sMsg_ID+'">';
							str += '	<p><i></i>'+node.sMsg_Title+'</p>';
							str += '	<time>'+self.formatDateStr(node.dMsg_CreateDate, 'yyyy-MM-dd')+'</time>';
							str += '</a>';
							str += '</div>';
						}
						$("#msgList").html(str);
						$("#msgList a").on('click',function(){
							self.msgDetail($(this).attr('data'));
						});
					});
				});
			},
			
			//aidList
			aidList: function(){
				/*var self = this;
				var params = {};
				ajaxReq(aidListUrl, params, function(res){
					self.handleResQuery(res, function(){
						var str = '';
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							str += '<div class="msg_im">';
							str += '<span class="l-it" title="'+node.sAid_Name+'">';
							str += '	<p><i></i>'+node.sAid_Name+'</p>';
							str += '	<time>'+(node.sAid_StatusName ? node.sAid_StatusName : '')+'</time>';
							str += '</span>';
							str += '</div>';
						}
						$("#aidList").html(str);
					});
				});*/
				var chartId = "aidList";
		        var myChart = echarts.init(document.getElementById(chartId), 'walden');
		        myChart.clear();
		        
		        var data = [];
				var legendData = [];
				var xAxisData = [];
				var yData = [];
		        var self = this;
				var params = {};
				ajaxReqSync(aidListUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							var key = node.sAid_StatusName ? node.sAid_StatusName : '未知';
							if(!hash[key]){
								hash[key] = 1;
							}else{
								hash[key] = hash[key] + 1;
							}
						}
						for ( var key in hash) {
							yData.push({
								value: hash[key],
								name: key
							});
						}
					});
				});
				
				var option = {
						title:{
							text:"{a|航标状态列表}"		
						},
						tooltip : {
					        trigger: 'item',
					        formatter: "{b} <br/>{a} : {c} ({d}%)"
					    },
					    xAxis:{
					    	show: false
					    },
					    yAxis:{
					    	show: false
					    },
					    series: [
					        {
					            name:'数量',
					            type:'pie',
					            radius : '58%',
					            data: yData
					        }
					    ]
					};
				myChart.setOption($.extend(true, {}, goption, option));
				
				this.chartBox[chartId] = myChart;
				this.resizeChart(chartId);
			},
			
			//weather
			weather: function(){
				//wind风向风速、gust阵风风速、visibility能见度、waves海浪方向，浪高，周期、swell1浪涌方向，浪高，周期,currents洋流
				/*var self = this;
				ajaxReq(weatherUrl, {productName: 'ecmwf', overlayName: 'wind'}, function(res){
					self.handleResQuery(res, function(){
						if(res.data && res.data != 'No data.'){
							var str = res.data.replace(/"/g, '').split("|");
							if(str.length < 5){
								return;
							}
							$('.wind font').html(str[2] + "、" + str[3] + str[4]);
						}
					});
				});
				ajaxReq(weatherUrl, {productName: 'ecmwf', overlayName: 'gust'}, function(res){
					self.handleResQuery(res, function(){
						if(res.data && res.data != 'No data.'){
							var str = res.data.replace(/"/g, '').split("|");
							if(str.length < 4){
								return;
							}
							$('.gust font').html(str[2] + str[3]);
						}
					});
				});
				ajaxReq(weatherUrl, {productName: 'ecmwf', overlayName: 'visibility'}, function(res){
					self.handleResQuery(res, function(){
						if(res.data && res.data != 'No data.'){
							var str = res.data.replace(/"/g, '').split("|");
							if(str.length < 4){
								return;
							}
							$('.visibility font').html(str[2] + str[3]);
						}
					});
				});
				ajaxReq(weatherUrl, {productName: 'ecmwfWaves', overlayName: 'waves'}, function(res){
					self.handleResQuery(res, function(){
						if(res.data && res.data != 'No data.'){
							var str = res.data.replace(/"/g, '').split("|");
							if(str.length < 6){
								return;
							}
							$('.waves font').html(str[2] + "、" + str[3] + str[4] + "、" + str[5].replace("period:", ""));
						}
					});
				});
				ajaxReq(weatherUrl, {productName: 'ecmwfWaves', overlayName: 'swell1'}, function(res){
					self.handleResQuery(res, function(){
						if(res.data && res.data != 'No data.'){
							var str = res.data.replace(/"/g, '').split("|");
							if(str.length < 6){
								return;
							}
							$('.swell1 font').html(str[2] + "、" + str[3] + str[4] + "、" + str[5].replace("period:", ""));
						}
					});
				});
				ajaxReq(weatherUrl, {productName: 'sst', overlayName: 'currents'}, function(res){
					self.handleResQuery(res, function(){
						if(res.data && res.data != 'No data.'){
							var str = res.data.replace(/"/g, '').split("|");
							if(str.length < 5){
								return;
							}
							$('.currents font').html(str[2] + "、" + str[3] + str[4]);
						}
					});
				});*/
				var self = this;
				ajaxReq(weatherUrl, {}, function(res){
					self.handleResQuery(res, function(){
						if(res.data){
							let data = JSON.parse(res.data);
							console.log(data);
							for (var i = 0; i < data.length; i++) {
								let node = data[i];
								if(node){
									let productName = node.productName;
									let layerName = node.layerName;
									//wind
									if(productName == 'ecmwf' && layerName == 'wind'){
										$('.wind font').html( node.direction + "、" + node.dataValue + node.dataUnit );
										
									//gust
									}else if(productName == 'ecmwf' && layerName == 'gust'){
										$('.gust font').html( node.dataValue + node.dataUnit );
										
									//visibility
									}else if(productName == 'ecmwf' && layerName == 'visibility'){
										$('.visibility font').html( node.dataValue + node.dataUnit );

									//waves
									}else if(productName == 'ecmwfWaves' && layerName == 'waves'){
										$('.waves font').html( node.direction  + "、" + node.dataValue + node.dataUnit + "、" + node.period );

									//swell1
									}else if(productName == 'ecmwfWaves' && layerName == 'swell1'){
										$('.swell1 font').html( node.direction  + "、" + node.dataValue + node.dataUnit + "、" + node.period );

									//currents
									}else if(productName == 'sea' && layerName == 'currents'){
										$('.currents font').html( node.direction + "、" + node.dataValue + node.dataUnit );
									}
								}
							}
							
						}
					});
				});
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
			
			
			//full
			handleShowFull: function(){
				var full = document.getElementsByTagName('body')[0];//document.getElementById("chartView");
	            launchIntoFullscreen(full);
	            this.isFullScreen = true;
	            //window.location.reload(); 
				localStorage.setItem('isFullScreen', 1);
				/*$("#fullscrean").hide();
				$("#exitFullscrean").show();*/
	            
			},
			handleHideFull: function(){
				//var full = document.getElementsByTagName('body')[0];
				exitFullscreen();
	            this.isFullScreen = false;
				localStorage.removeItem('isFullScreen');
				/*$("#fullscrean").show();
				$("#exitFullscrean").hide();*/
			},
			handleVisibleChange: function(val){
		        if (document.fullscreen && val) {
		        	/*var top = $("body").scrollTop();
		        	setTimeout(() => {
		        		console.log(top);
		        		var old = $('.el-select-dropdown').css('top');
		        		var old2 = $('.el-select-dropdown').css('display');
		        		console.log(old, old2);
		        		console.log("==================================")
		        		var el = document.getElementsByClassName('el-select-dropdown')[0];
		        		console.log(el);
		        		console.log(el.style);
		        		//$('.el-select-dropdown').css('top', top+261-55);
		        		$('.el-select-dropdown').css('position', 'fixed');
					}, 1000);
		        	var test = setInterval(function(){
		        		var old2 = $('.el-select-dropdown').css('display');
		        		console.log(old2);
		        	    if(old2 !='none'){
		        	    	clearInterval(test);
			        		var old = $('.el-select-dropdown').css('top');
			        		console.log(old, old2);
			        		console.log("----------------------------------")
		        	    }
		        	},100);*/
		        	setTimeout(function() {
		        		$('.el-select-dropdown').css('position', 'fixed');
		        	}, 20);
		        }
			},
			handleTestClick :function(e){
				console.log(e || window.event);
			},
			
			//reset
			reset: function(){
				this.filters = {
					used: '',
					sEquip_Type: ''
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
			
			//drag
			handleDrag: function(cb){
				var self = this;
				ajaxReq(positionUrl, {}, function(res){
					self.handleResQuery(res, function(){
						if(res.data.sUserPosition_Position){
							self.myList = JSON.parse(res.data.sUserPosition_Position);
							if(typeof cb == 'function'){
								cb();
							}
						}
					});
				});
			},
			dragStart: function(e, item, index) {},

            dragging: function(e, item, index) {},

            dragEnd: function(e, item, index) {
            	this.savePosition();
            },

            resizeStart: function(e, item, index) {},

            resizing: function(e, item, index) {
            	this.$nextTick(function () { 
            		if (item.sizey + item.y >= itemMaxY) {
                        fillPositionBox.call(this.gridster, item.y + item.sizey);
                        $(document).scrollTop($(document).height());
                    }
                }); 
            },

            resizeEnd: function(e, item, index) {
            	this.resizeChart(item.id);
            	this.savePosition();
            },
            
            savePosition: function(){
            	var self = this;
            	this.$nextTick(function () { 
            		var params = {
            				style: JSON.stringify(this.gridster.getList())
            		}
            		ajaxReq(updatePositionUrl, params, function(res){
            			self.handleResQuery(res, function(){
            			});
            		});
                }) 
            },
            resizeChart: function(chartId){
            	var item = null;
            	for (var i = 0; i < this.myList.length; i++) {
					if(this.myList[i].id == chartId){
						item = this.myList[i];
						break;
					}
				}
            	var ch = 0;//$("#" + chartId).parents(".box-card").find(".el-card__header")[0].offsetHeight;
            	if($("#" + chartId).parents(".box-card").find(".el-card__header").length != 0){
            		ch = $("#" + chartId).parents(".box-card").find(".el-card__header")[0].offsetHeight;
            	}
            	var bp = 40;
            	var h = (this.gridster.cellHeight * (item.sizey) - this.baseMarginTop) - ch - bp;
            	$("#" + chartId).css('height', h);
            	var myChart = this.chartBox[chartId];
            	if(myChart){
            		myChart.resize();
            	}
            	
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
			this.handleEquipTypeOptions();
			this.handleAidStationOptions();
			this.handleStoreLv1Options();
			this.handleBrandOptions();
			
			
			let self = this;
			this.handleDrag(function(){
				let gridster = self.$refs['cyGridster']; //获取gridster实例
				self.gridster = gridster;
				
				gridster.afterInitOk(function () {
					
					self.weather();
					
					self.msgList();
					self.aidList();
					
					self.chartAidMap();
					self.chartAid();
					self.chartEquipType();
					self.chartStoreTime();
					self.chartStoreInout();
					
					window.onresize = function() {
						var fullscreenElement = document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement;
						var fullscreenEnabled = document.fullscreenEnabled || document.mozFullScreenEnabled || document.webkitFullscreenEnabled;
						window.location.reload();
						
						if(!checkFullscreen()){
							self.isFullScreen = false;
							localStorage.removeItem('isFullScreen');
						}
				    };

					//时钟
				    self.$nextTick(function () { 
						initCanvas();
		            }); 
					
				});
				
	            gridster.init(); //在适当的时候初始化布局组件
	            
			});
			
			//
			if(localStorage.getItem('isFullScreen')){
				this.isFullScreen = true;
			}else{
				this.isFullScreen = false;
			}
			//时间
			/*setInterval(function(){
				$('.time').html(self.formatDate(new Date()));
			}, 1000);*/

			//天气计时器
			setInterval(function(){
				self.weather();
			}, 30 * 60 * 1000);
			
		}
		
	  });
	
	
var goption = {
    	title:{
    		text:"",
    		padding:[5,0],
    		textStyle:{    			
    			rich:{
    				a:{
    					color:"#00ccff",     					
    					fontSize:16
    				}/*,
    				b:{
    					fontFamily:"iconfont",
    					fontSize:16,
    					color:"#00ccff",
    					padding:[0,10]
    				}*/
    			}
    		}
    	},
    	tooltip: {},
	    toolbox: {
	    	show: false
	    },
    	yAxis:{
    		axisLabel:{
    			color:"#c8e8ff"
    		},
    		nameTextStyle:{
    			color:"#c8e8ff"
    		}
    	},
    	xAxis:{
    		axisLabel:{
    			color:"#c8e8ff"
    		},
    		nameTextStyle:{
    			color:"#c8e8ff"
    		}
    	},
        grid:{
        	containLabel:true,
        	left:10,
        	right:10,
        	top:40,
        	bottom:0
        }
    };
