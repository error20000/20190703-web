var baseUrl = parent.window.baseUrl || '../';

var dictUrl = baseUrl + "api/dict/findList";
var aidUrl = baseUrl + "api/aid/statis";

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

				aidStationDictNo: 'AidStation',
				aidStationOptions: [],

				filtersAid: {
					sAid_Station: ''
				},
				
				user: ''
			}
		},
		methods: {
			formatDate: function(date){
				return parent.window.formatDate(date, 'yyyy-MM-dd HH:mm:ss');
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

			//queryAid 
			chartAid: function(filter){
				var chartId = "chartAid";
		        var myChart = echarts.init(document.getElementById(chartId));
		        myChart.clear();

				var data = [];
				var legendData = [];
		        var self = this;
				var params = filter || {};
				ajaxReqSync(aidUrl, params, function(res){
					self.handleResQuery(res, function(){
						var hash = {};
						for (var i = 0; i < res.data.length; i++) {
							var node = res.data[i];
							var key = node.sAid_Type;
							if(!hash[key]){
								var index = data.push({
				                       name: node.sAid_TypeName ? node.sAid_TypeName : "未知",
				                       value: node.sAid_Num
					            });
								hash[key] = index;
							}else{
								var index = hash[key] - 1;
								data[index].value = data[index].value + node.sAid_Num;
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
								name:'航标种类',
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
				myChart.setOption(option);

				$("#"+chartId).resize(function() {
					myChart.resize();
				});
			},
			queryAid:function(){
				this.chartAid(this.filtersAid);
			},
			resetAid: function(){
				this.filtersAid = {
					sAid_Station: ''
				};
				this.chartAid();
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
			this.handleAidStationOptions();
			
			this.chartAid();
		}
	  });
	
	

