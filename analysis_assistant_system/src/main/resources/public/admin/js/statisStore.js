var baseUrl = parent.window.baseUrl || '../';

var dictUrl = baseUrl + "api/dict/findList";
var storeUrl = baseUrl + "api/store/findList";
var storeDistributionUrl = baseUrl + "api/store/distribution";
var storeTimeUrl = baseUrl + "api/store/time";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var myvue = new Vue({
	    el: '#app',
	    data: function(){
	    	return {
	    		activeTab: 'table',
				filters: {
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

				filtersDistribution: {
					sEquip_Type: ''
				},
				
				filtersStoreTime: {
					sStore_Level1: '',
					sEquip_Type: ''
				},
				
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
			handleStoreLv1Options: function(){
				var self = this;
				var params = {};
				ajaxReq(storeUrl, params, function(res){
					self.handleResQuery(res, function(){
						self.storeLv1Options = res.data;
					});
				});
			},
			
			chartStoreDistribution: function(filter){
				var chartId = "chartStoreDistribution";
				var self = this;
				// 基于准备好的dom，初始化echarts实例
		        var myChart = echarts.init(document.getElementById(chartId));
		        myChart.clear();
		        
		        var series = [];
		        var legendData = [];
		        var unUsedData = [];
				var params = filter || {};
				ajaxReqSync(storeDistributionUrl, params, function(res){
					self.handleResQuery(res, function(){
						//未使用
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
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
			queryStoreDistribution:function(){
				this.chartStoreDistribution(this.filtersDistribution);
			},
			resetStoreDistribution: function(){
				this.filtersDistribution = {
					sStore_Level1: '',
					sEquip_Type: ''
				};
				this.chartStoreDistribution();
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

				$("#"+chartId).resize(function() {
					myChart.resize();
				});
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
			this.handleStoreLv1Options();
			
			this.chartStoreDistribution();
			this.chartStoreTime();
		}
	  });
	
	

