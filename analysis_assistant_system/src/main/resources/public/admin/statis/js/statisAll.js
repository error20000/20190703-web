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
			                       value: [node.lAid_Lng, node.lAid_Lat, 1]
				            });
						}
						for (var i = 0; i < usedData.length; i++) {
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
						}
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
		                center: [114.114129, 20.550339],
		                zoom: 5,
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

		        // 使用刚指定的配置项和数据显示图表。
		        myChart.setOption($.extend(true, {}, goption, option));

				/*$("#"+chartId).resize(function() {
					myChart.resize();
				});*/
				
				this.chartBox[chartId] = myChart;
				this.resizeChart(chartId);
		        
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

			//queryEquipLife 
			chartEquipLife: function(filter){
				var chartId = "chartEquipLife";
		        var myChart = echarts.init(document.getElementById(chartId), 'walden');
		        myChart.clear();

				var data = {};
				var allData = {};
				var xAxisData = [];
				var legendData = [];
				var series = [];
				
				var indicator = [];
				var radarMax = 0;
				var seriesRadar = [];

		        var self = this;
				var params = filter || {};
				ajaxReqSync(equipLifeUrl, params, function(res){
					self.handleResQuery(res, function(){
						if(res.data.length == 0){
							return;
						}
						var temp = {}
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							node.sEquip_StationName = node.sEquip_StationName ? node.sEquip_StationName : '未知';
							node.sEquip_MBrand = node.sEquip_MBrand ? node.sEquip_MBrand : '未知';
							var key = node.sELog_EquipID;
							if(node.sELog_Type == '9'){ //入库 取最小值
								if(!temp[key]){
									temp[key] = {
										start: node.dELog_CreateDate
									};
								}else{
									var start = temp[key].start ? temp[key].start : 0;
									if(start == 0 || start > node.dELog_CreateDate){
										temp[key].start = node.dELog_CreateDate;
									}
								}
							}else if(node.sELog_Type == '8'){ //报废  取最大值 
								if(!temp[key]){
									temp[key] = {
										end: node.dELog_CreateDate
									};
								}else{
									var end = temp[key].end ? temp[key].end : 0;
									if(end == 0 || end < node.dELog_CreateDate){
										temp[key].end = node.dELog_CreateDate;
									}
								}
							}
							temp[key].node = node;
						}
						
						var hash = {};
						for (var okey in temp) {
							var start = temp[okey].start;
							var end = temp[okey].end;
							var node = temp[okey].node;
							var life = (end - start)/(365*24*3600*1000);
							radarMax = radarMax < life ? life : radarMax;
							//海区总平均寿命
							var key = node.sEquip_StationName;
							if(!hash[key]){
								allData[key] = {
									station: node.sEquip_StationName,
									total: life,
									count: 1,
									avg: Number(Number(life / 1).toFixed(2))
								};
								hash[key] = 1;
							}else{
								allData[key].total = allData[key].total + life;
								allData[key].count = allData[key].count + 1;
								allData[key].avg = Number(Number(allData[key].total / allData[key].count).toFixed(2));
							}
							//海区某品牌平均寿命
							var key2 = node.sEquip_StationName+"_"+node.sEquip_MBrand;
							if(!hash[key2]){
								data[key2] = {
									station: node.sEquip_StationName,
									brand: node.sEquip_MBrand,
									total: life,
									count: 1,
									avg: Number(Number(life / 1).toFixed(2))
								};
								hash[key2] = 1;
							}else{
								data[key2].total = data[key2].total + life;
								data[key2].count = data[key2].count + 1;
								data[key2].avg = Number(Number(data[key2].total / data[key2].count).toFixed(2));
							}
						}
						
						//组装数据 
						var sKey = {};
						var bKey = {};
						var tempHash = {};
						var seriesAll = {
								name: '全部平均',
						        data: [],
						        type: 'line',
						        smooth: true
						};
						for (var okey in temp) {
							var node = temp[okey].node;
							sKey[node.sEquip_StationName] = 1;
							bKey[node.sEquip_MBrand] = 1;
						}
						//全部平均
						for ( var okey in sKey) {
							xAxisData.push(okey);
							seriesAll.data.push(allData[okey].avg);
							indicator.push({
								name: okey,
								max: radarMax
							});
						}
						//品牌平均
						for ( var okey in bKey) {
							var name = okey + ' 平均';
							var node = {
								name: name,
						        data: [],
						        type: 'line',
						        smooth: true
							};
							for ( var okey2 in sKey) { 
								node.data.push(data[okey2+"_"+okey] ? data[okey2+"_"+okey].avg : null );
							}
							series.push(node);
							legendData.push(name);
							
							seriesRadar.push({
								 value : node.data,
					             name : name
							});
						}
						series.push(seriesAll);
						legendData.push(seriesAll.name);
						seriesRadar.push({
							 value : seriesAll.data,
				             name : seriesAll.name
						});
						
					});
				});
				
		        
				var option = {
			        tooltip: {
			            trigger: 'axis'
			        },
			        legend: {
			        	type: 'scroll',
			        	orient: 'vertical',
			        	align: 'right',
			        	right: 10,
			            data: legendData
			        },
				    xAxis: {
				        type: 'category',
				        data: xAxisData
				    },
				    yAxis: {
				        type: 'value',
			            name: '寿命',
			            axisLabel: {
			                formatter: '{value} 年'
			            }
				    },
				    series: series
				};
				myChart.setOption($.extend(true, {}, goption, option));

				/*$("#"+chartId).resize(function() {
					myChart.resize();
				});*/
				

				var chartId2 = "chartEquipLife2";
		        var myChart2 = echarts.init(document.getElementById(chartId2), 'walden');
		        myChart2.clear();
				var option2 = {
					    tooltip: {},
				        legend: {
				        	type: 'scroll',
				        	orient: 'vertical',
				        	align: 'right',
				        	right: 10,
				            data: legendData
				        },
					    radar: {
					        // shape: 'circle',
					        name: {
					            textStyle: {
					                color: '#fff',
					                backgroundColor: '#999',
					                borderRadius: 3,
					                padding: [3, 5]
					           }
					        },
					        indicator: indicator
					    },
					    series: [{
					        type: 'radar',
					        // areaStyle: {normal: {}},
					        data : seriesRadar
					    }]
					};

				myChart2.setOption($.extend(true, {}, goption, option2));

				/*$("#"+chartId2).resize(function() {
					myChart2.resize();
				});*/
				
				this.chartBox[chartId] = myChart;
				this.chartBox[chartId2] = myChart2;
				this.resizeChart(chartId);
			},
			queryEquipLife:function(){
				this.chartEquipLife(this.filtersLife);
			},
			resetEquipLife: function(){
				this.filtersLife = {
					sEquip_MBrand: '',
					sEquip_Type: ''
				};
				this.chartEquipLife();
			},


			//queryEquipBrand
			chartEquipBrand: function(filter){
				var chartId = "chartEquipBrand";
		        var myChart = echarts.init(document.getElementById(chartId), 'walden');
		        myChart.clear();
		        
		        var data = [];
				var legendData = [];
				var xAxisData = [];
				var yData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(equipBrandUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							var key = node.sEquip_MBrand+"_"+node.sEquip_MModel;
							if(!hash[key]){
								var index = data.push({
				                       brand: node.sEquip_MBrand,
				                       model: node.sEquip_MModel,
				                       value: 1
					            });
								hash[key] = index;
							}else{
								var index = hash[key] - 1;
								data[index].value = data[index].value + 1;
							}
						}
						var hash = {};
						var temp = {};
						for (var i = 0; i < data.length; i++) {
							var node = data[i];
							var key = node.brand;
							if(!hash[key]){
								temp[key] = [];
								temp[key].push(node);
								var xIndex = xAxisData.push(node.brand);
								var index = yData.push([xIndex-1, node.value, temp[key]]);
								hash[key] = index;
							}else{
								var index = hash[key] - 1;
								yData[index][1] = yData[index][1] + node.value;
								temp[key].push(node);
							}
						}
					});
				});
				
				var option = {
					    tooltip: {
					        trigger: 'axis',
			            	formatter: function (objs) {
			            		var obj = objs[0];
			            		var str = '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
			                    + obj.name
			                    + '</div>';
			            		for (var i = 0; i < obj.value[2].length; i++) {
				                    str += obj.value[2][i].model + '：' + obj.value[2][i].value + '<br>';
								}
			                    return str;
			            	}
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
					            name: '数量',
					            minInterval: 1
					        }
					    ],
					    series: [
					        {
					            name:'品牌',
					            type:'bar',
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
			queryEquipBrand:function(){
				this.chartEquipBrand(this.filtersBrand);
			},
			resetEquipBrand: function(){
				this.filtersBrand = {
					sAid_Station: ''
				};
				this.chartEquipBrand();
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
					            radius : '30%',
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
			queryEquipBrandDump:function(){
				this.chartEquipBrandDump(this.filtersBrandDump);
			},
			resetEquipBrandDump: function(){
				this.filtersBrandDump = {
					sAid_Station: ''
				};
				this.chartEquipBrandDump();
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
					            radius : '30%',
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
			queryEquipBrandUnusual:function(){
				this.chartEquipBrandUnusual(this.filtersBrandUnusual);
			},
			resetEquipBrandUnusual: function(){
				this.filtersBrandUnusual = {
					sAid_Station: ''
				};
				this.chartEquipBrandUnusual();
			},


			//queryEquipBrandRepair
			chartEquipBrandRepair: function(filter){
				var chartId = "chartEquipBrandRepair";
		        var myChart = echarts.init(document.getElementById(chartId), 'walden');
		        myChart.clear();
		        
		        var data = [];
				var legendData = [];
				var xAxisData = [];
				var yData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(equipBrandRepairUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							var key = node.sEquip_MBrand+"_"+node.sEquip_MModel;
							if(!hash[key]){
								var index = data.push({
				                       brand: node.sEquip_MBrand,
				                       model: node.sEquip_MModel,
				                       value: 1
					            });
								hash[key] = index;
							}else{
								var index = hash[key] - 1;
								data[index].value = data[index].value + 1;
							}
						}
						var hash = {};
						var temp = {};
						for (var i = 0; i < data.length; i++) {
							var node = data[i];
							var key = node.brand;
							if(!hash[key]){
								temp[key] = [];
								temp[key].push(node);
								var xIndex = xAxisData.push(node.brand);
								var index = yData.push([xIndex-1, node.value, temp[key]]);
								hash[key] = index;
							}else{
								var index = hash[key] - 1;
								yData[index][1] = yData[index][1] + node.value;
								temp[key].push(node);
							}
						}
					});
				});
				
				var option = {
					    tooltip: {
					        trigger: 'axis',
			            	formatter: function (objs) {
			            		var obj = objs[0];
			            		var str = '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
			                    + obj.name
			                    + '</div>';
			            		for (var i = 0; i < obj.value[2].length; i++) {
				                    str += obj.value[2][i].model + '：' + obj.value[2][i].value + '<br>';
								}
			                    return str;
			            	}
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
					            name: '数量',
					            minInterval: 1
					        }
					    ],
					    series: [
					        {
					            name:'品牌',
					            type:'bar',
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
			queryEquipBrandRepair:function(){
				this.chartEquipBrandRepair(this.filtersBrandRepair);
			},
			resetEquipBrandRepair: function(){
				this.filtersBrandRepair = {
					sAid_Station: ''
				};
				this.chartEquipBrandRepair();
			},
			
			//msgList
			msgList: function(){
				var self = this;
				var params = {
					page: 1,
					rows: 10
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
					            radius : '30%',
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
				var self = this;
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
			
			/*this.chartEquipDistribution();
			this.chartStoreTime();
			this.chartEquipLife();
			
			this.chartEquipBrand();
			this.chartEquipBrandDump();
			this.chartEquipBrandUnusual();
			this.chartEquipBrandRepair();*/
			
			/*window.onresize = function() {
				if(this.fullScreenEnabled){
					console.log("onresize");
					if (!this.isFullScreen) {
						$("section").css('padding', '0px');
						$(".el-tabs__header").hide();
						this.isFullScreen = true;
						console.log("onresize true");
					}else{
						$("section").css('padding', '20px');
						$(".el-tabs__header").show();
						console.log("onresize false");
			            this.fullScreenEnabled = false;
					}
				}
		    }*/
			
			/*var self = this;
			$(document).on('keydown', function (e) {
				//e = e || event || window.event;
				if(e && e.keyCode == 122){//捕捉F11键盘动作
					console.log(e);
					$(".el-header").hide();
					$(".el-main").css('top', '0px');
		            $(".el-tabs__header").hide();
		            $("section").css('padding', '0px');
		            e.preventDefault();  //阻止F11默认动作
		            self.handleShowFull();
				}
	        });*/

			/*let isFullScreen = localStorage.getItem('isFullScreen');
			console.log("isFullScreen----->"+isFullScreen);
			if(isFullScreen){
				$("#fullscrean").hide();
				$("#exitFullscrean").show();
			}else{
				$("#fullscrean").show();
				$("#exitFullscrean").hide();
			}*/
			
			let self = this;
			this.handleDrag(function(){
				let gridster = self.$refs['cyGridster']; //获取gridster实例
				self.gridster = gridster;
				
				gridster.afterInitOk(function () {
					
					/*
					self.chartEquipLife();
					
					self.chartEquipBrand();
					self.chartEquipBrandRepair();*/
					
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
						
						
				    }
					
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
			setInterval(function(){
				$('.time').html(self.formatDate(new Date()));
			}, 1000);

			//天气
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
    				},
    				b:{
    					fontFamily:"iconfont",
    					fontSize:16,
    					color:"#00ccff",
    					padding:[0,10]
    				}
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
