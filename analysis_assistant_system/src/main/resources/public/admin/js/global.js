var loginToken = '';

function ajaxReq(url, param, callback, cp){
	$.ajax({
		   dataType: "json",
		   type: "POST",
		   url: url,
		   data: param,
		   headers: {
		        token: loginToken
		    },
		   success: function(data){
			   	if(data.code == -203 || data.code == -111){ // token 超时
			   		parent.window.location.href = "login.html";
			   	}
				if (typeof callback === "function") {
					callback(data, cp);
				}
		   },
		   error: function(data){
		   }
		});
};
function ajaxReqSync(url, param, callback, cp){
	$.ajax({
		   dataType: "json",
		   type: "POST",
		   url: url,
		   data: param,
		   async: false,
		   headers: {
		        token: loginToken
		    },
		   success: function(data){
			   	if(data.code == -203 || data.code == -111){ // token 超时
			   		parent.window.location.href = "login.html";
			   	}
				if (typeof callback === "function") {
					callback(data, cp);
				}
		   },
		   error: function(data){
		   }
		});
};

function getLoginToken(){
  	let token = localStorage.getItem('loginUser');
	if(!token){
		parent.window.location.href = "login.html";
		return;
	}
	loginToken = token;
};

function launchIntoFullscreen(element) {
    if(element.requestFullscreen){
        element.requestFullscreen();
    }
    else if(element.mozRequestFullScreen) {
        element.mozRequestFullScreen();
    }
    else if(element.webkitRequestFullscreen) {
        element.webkitRequestFullscreen();
    }
    else if(element.msRequestFullscreen) {
        element.msRequestFullscreen();
    }
};

function exitFullscreen() {
    if(document.exitFullscreen) {
        document.exitFullscreen();
    } else if(document.mozCancelFullScreen) {
        document.mozCancelFullScreen();
    } else if(document.webkitExitFullscreen) {
        document.webkitExitFullscreen();
    }
};

function checkFullscreen(){
	var fullscreenElement = document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement;
	if (fullscreenElement == null) {
        return false;
    }
    return true;
}

function formatDate(d, s){
	if(!d){
		return;
	}
    var date = new Date();
    if(d){
        if(typeof d == 'object'){
            date = d;
        }else{
            if(isNaN(d)){
                date = new Date(d.replace(/-/g, "/").replace(/年/g, "/").replace(/月/g, "/").replace(/日/g, " ").replace(/时/g, ":").replace(/分/g, ":").replace(/秒/g, ""));
            }else{
                d = String(d).length == 10 ? d + "000" : String(d).length == 13 ? d : new Date().getTime() + Number(d);
                date = new Date(Number(d));
            }
        }
    }
    var weekday = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
    var weekdayS = ["日","一","二","三","四","五","六"];
    var weekdayEn = ["Sunday","Monday","Tuesday","Wednesday","Thursday ","Friday","Saturday"];
    var weekdayEnS = ["Sun.","Mon.","Tues.","Wed.","Thurs. ","Fri.","Sat."];
    var t = String(s);
    t = t.replace('yyyy', date.getFullYear());
    t = t.replace('yy', date.getYear);
    t = t.replace('MM', (date.getMonth()+1) < 10 ? "0"+(date.getMonth()+1) : (date.getMonth()+1));
    t = t.replace('M', (date.getMonth()+1));
    t = t.replace('dd', date.getDate() < 10 ? "0"+date.getDate() : date.getDate());
    t = t.replace('d', date.getDate());
    t = t.replace('HH', date.getHours() < 10 ? "0"+date.getHours() : date.getHours());
    t = t.replace('H', date.getHours());
    t = t.replace('mm', date.getMinutes() < 10 ? "0"+date.getMinutes() : date.getMinutes());
    t = t.replace('m', date.getMinutes());
    t = t.replace('ss', date.getSeconds() < 10 ? "0"+date.getSeconds() : date.getSeconds());
    t = t.replace('s', date.getSeconds());
    t = t.replace('S', date.getMilliseconds());
    t = t.replace('en:ww', weekdayEn[date.getDay()]);
    t = t.replace('en:w', weekdayEnS[date.getDay()]);
    t = t.replace('cn:ww', weekday[date.getDay()]);
    t = t.replace('cn:w', weekdayS[date.getDay()]);
    t = t.replace('ww', weekday[date.getDay()]);
    t = t.replace('w', weekdayS[date.getDay()]);
    return t;
};

function formatSeconds(value) { 
	 var theTime = parseInt(value);// 需要转换的时间秒 
	 var theTime1 = 0;// 分 
	 var theTime2 = 0;// 小时 
	 var theTime3 = 0;// 天
	 if(theTime > 60) { 
	  theTime1 = parseInt(theTime/60); 
	  theTime = parseInt(theTime%60); 
	  if(theTime1 > 60) { 
	   theTime2 = parseInt(theTime1/60); 
	   theTime1 = parseInt(theTime1%60); 
	   if(theTime2 > 24){
	    //大于24小时
	    theTime3 = parseInt(theTime2/24);
	    theTime2 = parseInt(theTime2%24);
	   }
	  } 
	 } 
	 var result = '';
	 if(theTime > 0){
	  result = ""+parseInt(theTime)+"秒";
	 }
	 if(theTime1 > 0) { 
	  result = ""+parseInt(theTime1)+"分"+result; 
	 } 
	 if(theTime2 > 0) { 
	  result = ""+parseInt(theTime2)+"小时"+result; 
	 } 
	 if(theTime3 > 0) { 
	  result = ""+parseInt(theTime3)+"天"+result; 
	 }
	 return result; 
};