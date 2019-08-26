var baseUrl = parent.window.baseUrl || '../';

var dictUrl = baseUrl + "api/dict/findList";
var equipStoreUrl = baseUrl + "api/store/findList";
var equipDistributionUrl = baseUrl + "api/equip/distribution";

var equipStatusUrl = baseUrl + "api/equip/status";
var equipInoutStoreUrl = baseUrl + "api/equip/inoutStore";
var equipBrandUrl = baseUrl + "api/equip/brand";
var equipBrandDumpUrl = baseUrl + "api/equip/brandDump";
var equipBrandUnusualUrl = baseUrl + "api/equip/brandUnusual";
var equipBrandRepairUrl = baseUrl + "api/equip/brandRepair";

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


				storeLv1Options: [],
				equipTypeDictNo: 'EquipType',
				equipTypeOptions: [],
				aidStationDictNo: 'AidStation',
				aidStationOptions: [],

				filters2: {
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
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
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
		        
		        $("#"+chartId).resize(function() {
		        	myChart.resize();
		        });
		        
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

			//queryEquipLife 
			chartEquipLife: function(filters){
				
			},
			queryEquipLife:function(){
				this.chartEquipLife(this.filters2);
			},
			resetEquipLife: function(){
				this.filters2 = {
					sEquip_MBrand: '',
					sEquip_Type: ''
				};
				this.chartEquipLife();
			},

			//queryEquipStatus 
			chartEquipStatus: function(filter){
				var chartId = "chartEquipStatus";
		        var myChartStatus = echarts.init(document.getElementById(chartId));
		        myChartStatus.clear();

				var data = [];
				var legendData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(equipStatusUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							var key = node.sEquip_Status;
							if(!hash[key]){
								var index = data.push({
				                       name: node.sEquip_StatusName,
				                       value: 1
					            });
								hash[key] = index;
							}else{
								var index = hash[key] - 1;
								data[index].value = data[index].value + 1;
							}
						}
						for (var i = 0; i < data.length; i++) {
							legendData.push(data[i].name);
						}
					});
				});
				
				var option = {
						tooltip : {
							trigger: 'item',
							formatter: "{a} <br/>{b} : {c} ({d}%)"
						},
					    legend: {
					        orient: 'vertical',
					        x: 'right',
					        data: legendData
					    },
						series : [
							{
								name:'器材状态',
								type:'pie',
								radius : '55%',
								center: ['50%', '50%'],
								data: data.sort(function (a, b) { return a.value - b.value; }),
								roseType: 'radius',
								animationType: 'scale',
								animationEasing: 'elasticOut',
								animationDelay: function (idx) {
									return Math.random() * 200;
								}
							}
						]
				};
				myChartStatus.setOption(option);

				$("#"+chartId).resize(function() {
					myChartStatus.resize();
				});
			},
			queryEquipStatus:function(){
				this.chartEquipStatus(this.filters3);
			},
			resetEquipStatus: function(){
				this.filters3 = {
					sAid_Station: '',
					sEquip_Type: ''
				};
				this.chartEquipStatus();
			},

			//queryEquipStore
			chartEquipStore: function(filter){
				var chartId = "chartEquipStore";
		        var myChart = echarts.init(document.getElementById(chartId));
		        myChart.clear();
		        
		        var data = [];
				var legendData = [];
				var xAxisData = [];
				var inData = [];
				var outData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(equipInoutStoreUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							var key = node.sDict_Name;
							if(!hash[key]){
								var index = data.push({
				                       name: node.sDict_Name,
				                       inStore: node.sELog_Type == '1' ? 1 : 0,
				                       outStore: node.sELog_Type == '2' ? 1 : 0
					            });
								hash[key] = index;
							}else{
								var index = hash[key] - 1;
								data[index].inStore = node.sELog_Type == '1' ? data[index].inStore + 1 : data[index].inStore;
								data[index].outStore = node.sELog_Type == '2' ? data[index].outStore + 1 : data[index].outStore;
							}
						}
						for (var i = 0; i < data.length; i++) {
							xAxisData.push(data[i].name);
							inData.push(data[i].inStore);
							outData.push(data[i].outStore);
						}
					});
				});
				
				var option = {
					    tooltip: {
					        trigger: 'axis',
					        axisPointer: {
					            type: 'cross',
					            crossStyle: {
					                color: '#999'
					            }
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
					    legend: {
					        data: ['入库', '出库']
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
					            interval: 1,
					            axisLabel: {
					                formatter: '{value} 个'
					            }
					        }
					    ],
					    series: [
					        {
					            name:'入库',
					            type:'bar',
					            data: inData
					        },
					        {
					            name:'出库',
					            type:'bar',
					            data: outData
					        }
					    ]
					};
				myChart.setOption(option);

				$("#"+chartId).resize(function() {
					myChart.resize();
				});
			},
			queryEquipStore:function(){
				this.chartEquipStore(this.filtersStore);
			},
			resetEquipStore: function(){
				this.filtersStore = {
					sEquip_StoreLv1: ''
				};
				this.chartEquipStore();
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
					            interval: 1,
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

				$("#"+chartId).resize(function() {
					myChart.resize();
				});
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
					            interval: 1,
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

				$("#"+chartId).resize(function() {
					myChart.resize();
				});
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
		        var myChart = echarts.init(document.getElementById(chartId));
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
					            interval: 1,
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

				$("#"+chartId).resize(function() {
					myChart.resize();
				});
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
		        var myChart = echarts.init(document.getElementById(chartId));
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
					            interval: 1,
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

				$("#"+chartId).resize(function() {
					myChart.resize();
				});
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
				var full = document.getElementById("mapView");
	            launchIntoFullscreen(full);
			},
			handleHideFull: function(){
				
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
			
			this.chartEquipDistribution();
			this.chartEquipLife();
			this.chartEquipStatus();
			this.chartEquipStore();
			this.chartEquipBrand();
			this.chartEquipBrandDump();
			this.chartEquipBrandUnusual();
			this.chartEquipBrandRepair();
		}
	  });
	
	

