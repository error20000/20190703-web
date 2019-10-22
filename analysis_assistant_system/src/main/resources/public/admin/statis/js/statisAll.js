var baseUrl = parent.window.baseUrl || '../../';

var dictUrl = baseUrl + "api/dict/findList";
var equipStoreUrl = baseUrl + "api/store/findList";
var equipBrandOptionUrl = baseUrl + "api/equip/brandOption";
var equipDistributionUrl = baseUrl + "api/equip/distribution";
var equipLifeUrl = baseUrl + "api/equip/life";
var equipBrandUrl = baseUrl + "api/equip/brand";
var equipBrandDumpUrl = baseUrl + "api/equip/brandDump";
var equipBrandUnusualUrl = baseUrl + "api/equip/brandUnusual";
var equipBrandRepairUrl = baseUrl + "api/equip/brandRepair";

var storeTimeUrl = baseUrl + "api/store/time";

var positionUrl = baseUrl + "api/user/position";
var updatePositionUrl = baseUrl + "api/user/updatePosition";

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
				myList: [{ 
                    "id": "chartEquipDistribution", 
                    "x": 1, 
                    "y": 1, 
                    "sizex": 15, 
                    "sizey": 10 
                }, { 
                    "id": "chartStoreTime", 
                    "x": 1, 
                    "y": 11, 
                    "sizex": 15, 
                    "sizey": 10
                }, { 
                    "id": "chartEquipLife", 
                    "x": 1, 
                    "y": 21, 
                    "sizex": 15, 
                    "sizey": 10 
                },{ 
                    "id": "chartEquipBrandRepair", 
                    "x": 7, 
                    "y": 31, 
                    "sizex": 6, 
                    "sizey": 10 
                }, { 
                    "id": "chartEquipBrandUnusual", 
                    "x": 1, 
                    "y": 31, 
                    "sizex": 6, 
                    "sizey": 10 
                },{ 
                    "id": "chartEquipBrandDump", 
                    "x": 7, 
                    "y": 41, 
                    "sizex": 6, 
                    "sizey": 10 
                }, { 
                    "id": "chartEquipBrand", 
                    "x": 1, 
                    "y": 41, 
                    "sizex": 6, 
                    "sizey": 10 
                }], 
				baseWidth: 0, 
				baseHeight: 0, 
				gridster: '',
				chartBox: {},
				
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
             this.baseHeight = 100 * (screenHeight / 638); 
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
			
			//Equip Distribution
			chartEquipDistribution: function(filter){
				var chartId = "chartEquipDistribution";
				var self = this;
				// 基于准备好的dom，初始化echarts实例
		        var myChart = echarts.init(document.getElementById(chartId));
		        myChart.clear();
		        
		        var series = [];
		        var legendData = [];
		        var unUsedData = [];
		        var usedData = [];
				var params = filter || {};
				ajaxReqSync(equipDistributionUrl, params, function(res){
					self.handleResQuery(res, function(){
						//未使用
						var hash = {};
						for (var i = 0; i < res.data.unused.length; i++) {
							var node = res.data.unused[i];
							var key = node.sEquip_Type+"_"+node.sStoreType_ID;
							if(!hash[key]){
								var index = unUsedData.push({
				                       name: node.sDict_Name,
				                       store: node.sStoreType_Name,
				                       value: [node.lStoreType_Lng, node.lStoreType_Lat, 1]
					            });
								hash[key] = index;
							}else{
								var index = hash[key] - 1;
								unUsedData[index].value[2] = unUsedData[index].value[2] + 1;
							}
						}
						for (var i = 0; i < unUsedData.length; i++) {
							var node = unUsedData[i];
							var temp = {
				                name: node.store,
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
				                }/*,
				                itemStyle: {
				                    normal: {
				                        color: 'purple'
				                    }
				                }*/,
					            tooltip: {
					            	trigger: 'item',
					            	formatter: function (obj) {
					            		return '<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">'
					                    + obj.name
					                    + '</div>'
					                    + '仓库' + '：' + obj.seriesName + '<br>'
					                    + '数量' + '：' + obj.value[2] + '<br>';
					            	}
					            }
				            }
							series.push(temp);
							legendData.push(node.store);
						}
						//已使用
						var hash = {};
						for (var i = 0; i < res.data.used.length; i++) {
							var node = res.data.used[i];
							var key = node.sEquip_Type+"_"+node.sAid_ID;
							if(!hash[key]){
								var index = usedData.push({
				                       name: node.sDict_Name,
				                       aid: node.sAid_Name,
				                       value: [node.lAid_Lng, node.lAid_Lat, 1]
					            });
								hash[key] = index;
							}else{
								var index = hash[key] - 1;
								usedData[index].value[2] = usedData[index].value[2] + 1;
							}
						}
						for (var i = 0; i < usedData.length; i++) {
							var node = usedData[i];
							var temp = {
				                name: node.aid,
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
					                    + '航标' + '：' + obj.seriesName + '<br>'
					                    + '数量' + '：' + obj.value[2] + '<br>';
					            	}
					            }
				            }
							series.push(temp);
							legendData.push(node.aid);
						}
					});
				});
				
				// 指定图表的配置项和数据
		        var option = {
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
		                data: legendData,
		                left: 'right'
		            },*/
		            bmap: {
		                center: [114.114129, 20.550339],
		                zoom: 5,
		                roam: true,
		                mapStyle: {
		                    styleJson: [{
		                        'featureType': 'water',
		                        'elementType': 'all',
		                        'stylers': {
		                            'color': '#d1d1d1'
		                        }
		                    }, {
		                        'featureType': 'land',
		                        'elementType': 'all',
		                        'stylers': {
		                            'color': '#f3f3f3'
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
		                            'color': '#fdfdfd'
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
		                            'color': '#fefefe'
		                        }
		                    }, {
		                        'featureType': 'arterial',
		                        'elementType': 'geometry.fill',
		                        'stylers': {
		                            'color': '#fefefe'
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
		                            'color': '#999999'
		                        }
		                    }]
		                }
		            },
		            series: series
		        };

		        // 使用刚指定的配置项和数据显示图表。
		        myChart.setOption(option);

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
		        var myChart = echarts.init(document.getElementById(chartId));
		        myChart.clear();

				var data = [];
				var legendData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(storeTimeUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							var key = self.formatDateStr(node.dSLog_CreateDate, 'yyyy-MM-dd');
							if(!hash[key]){
								var index = data.push([key, node.dSLog_EquipNum]);
								hash[key] = index;
							}else{
								var index = hash[key] - 1;
								data[index][1] = data[index][1] + node.dSLog_EquipNum;
							}
						}
						for (var i = 0; i < data.length; i++) {
							for (var j = i; j < data.length; j++) {
								if(data[i][0] > data[j][0]){
									var temp = data[i];
									data[i] = data[j];
									data[j] = temp;
								}
							}
						}
						console.log(data);
						for (var i = 0; i < data.length; i++) {
							legendData.push(data[i][0]);
						}
						console.log(legendData);
					});
				});
				
				var option = {
			        tooltip: {
			            trigger: 'axis'
			        },
			        xAxis: {
			            data: legendData
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
			            type: 'inside'
			        }],
			        
			        series: {
			            name: '库存',
			            type: 'line',
			            data: data
			        }
			    };
				myChart.setOption(option);

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

			//queryEquipLife 
			chartEquipLife: function(filter){
				var chartId = "chartEquipLife";
		        var myChart = echarts.init(document.getElementById(chartId));
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
				myChart.setOption(option);

				/*$("#"+chartId).resize(function() {
					myChart.resize();
				});*/
				

				var chartId2 = "chartEquipLife2";
		        var myChart2 = echarts.init(document.getElementById(chartId2));
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

				myChart2.setOption(option2);

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
		        var myChart = echarts.init(document.getElementById(chartId));
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
					            minInterval: 1,
					            axisLabel: {
					                formatter: '{value} 个'
					            }
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
				myChart.setOption(option);

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


			//queryEquipBrandDump
			chartEquipBrandDump: function(filter){
				var chartId = "chartEquipBrandDump";
		        var myChart = echarts.init(document.getElementById(chartId));
		        myChart.clear();
		        
		        var data = [];
				var legendData = [];
				var xAxisData = [];
				var yData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(equipBrandDumpUrl, params, function(res){
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
					            minInterval: 1,
					            axisLabel: {
					                formatter: '{value} 个'
					            }
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
				myChart.setOption(option);

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


			//queryEquipBrandUnusual
			chartEquipBrandUnusual: function(filter){
				var chartId = "chartEquipBrandUnusual";
		        var myChart = echarts.init(document.getElementById(chartId), 'walden');
		        myChart.clear();
		        
		        var data = [];
				var legendData = [];
				var xAxisData = [];
				var yData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(equipBrandUnusualUrl, params, function(res){
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
						title:{
							text:"{a|来源网站TOP5}"		
						},
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
					            minInterval: 1,
					            axisLabel: {
					                formatter: '{value} 个'
					            }
					        },
					    series: [
					        {
					            name:'品牌',
					            type:'bar',
					            data: yData
					        }
					    ],
					    grid:{
			            	containLabel:false,
			            	left:40,
			            	right:40,
			            	top:45,
			            	bottom:20
			            }
					};
				console.log(goption);
				console.log(option);
				console.log($.extend(true, {}, goption, option));
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
					            minInterval: 1,
					            axisLabel: {
					                formatter: '{value} 个'
					            }
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
				myChart.setOption(option);

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
			
			
			//full
			handleShowFull: function(){
				var full = document.getElementsByTagName('body')[0];//document.getElementById("chartView");
	            launchIntoFullscreen(full);
	            //window.location.reload(); 
				//localStorage.setItem('isFullScreen', 1);

				$("#fullscrean").hide();
				$("#exitFullscrean").show();
			},
			handleHideFull: function(){
				//var full = document.getElementsByTagName('body')[0];
				exitFullscreen();
				//localStorage.setItem('isFullScreen', "");
				$("#fullscrean").show();
				$("#exitFullscrean").hide();
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
		        	setTimeout(() => {
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
            	var bp = 40;
            	var h = (this.gridster.cellHeight * (item.sizey) - this.baseMarginTop) - ch - bp;
            	if(chartId == "chartEquipLife"){
            		$("#chartEquipLife").css('height', h);
                	var myChart1 = this.chartBox["chartEquipLife"];
    		        myChart1.resize();
            		$("#chartEquipLife2").css('height', h);
                	var myChart2 = this.chartBox["chartEquipLife2"];
    		        myChart2.resize();
            	}else{
            		$("#" + chartId).css('height', h);
                	var myChart = this.chartBox[chartId];
                	if(myChart){
                		myChart.resize();
                	}
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
                parent.window.location.href = "../login.html";
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
					
					self.chartEquipDistribution();
					self.chartStoreTime();
					self.chartEquipLife();
					
					self.chartEquipBrand();
					self.chartEquipBrandDump();
					self.chartEquipBrandUnusual();
					self.chartEquipBrandRepair();
				});
				
	            gridster.init(); //在适当的时候初始化布局组件
	            
			});
			
		}
		
	  });
	
	
var goption = {
    	title:{
    		text:"",
    		padding:[10,0],
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
        	left:20,
        	right:10,
        	top:40,
        	bottom:0
        }
    };
