var baseUrl = parent.window.baseUrl || '../';

var aidUrl = baseUrl + "api/aid/map";
var storeTypeUrl = baseUrl + "api/store/map";
var dictUrl = baseUrl + "api/dict/findList";
var aidEquipUrl = baseUrl + "api/aid/equip";

var ajaxReq = parent.window.ajaxReq || "";
var gMenuFuns = parent.window.gMenuFuns || "";


var chartAid = function(filter){
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
};
var queryAid = function(){
	this.chartAid(this.filtersAid);
};
var resetAid = function(){
	this.filtersAid = {
		sAid_Station: ''
	};
	this.chartAid();
};
	
	

