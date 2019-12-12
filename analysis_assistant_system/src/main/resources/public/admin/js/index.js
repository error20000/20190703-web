var baseUrl = '../';
var changePwdUrl = baseUrl + "api/user/changePWD";
var logoutUrl = baseUrl + "api/user/logout";
var isLoginUrl = baseUrl + "api/user/isLogin";
var authUrl = baseUrl + "api/user/authMenu";
var gMenuFuns = [];
var pwdReg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/;
var pwdRegStr = "（密码至少包含 数字和英文，长度6-20）";

new Vue({
    el: '#app',
    data: function(){
        return {
          sysName: "航标作业智能分析与辅助系统",
          sysUserName: "",
          menusOrigin: [],
          menus: [],
          menuFuns: [],
      	  preloading: false,
      	  activeIndex: "",
      	  activeSrc: "welcome.html",
          //pwd
		  pwdReg: pwdReg,
		  pwdRegStr: pwdRegStr,
          pwdFormVisible: false,
          pwdLoading: false,
          pwdFormRules: {
            oldPwd: [
              { required: true, message: "请输入旧密码.", trigger: "blur" }
            ],
            newPwd: [{ required: true, message: "请输入新密码.", trigger: "blur" },
				{ validator: (rule, value, callback) => {
			          if (this.pwdReg && !this.pwdReg.test(this.pwdForm.newPwd) ) {
			            callback(new Error('密码格式不正确!'+this.pwdRegStr));
			          } else {
			            callback();
			          }
				}, trigger: 'blur' }],
            newPwd2: [
              { required: true, message: "再次输入新密码.", trigger: "blur" },
              {
                validator: (rule, value, callback) => {
                  if (value !== this.pwdForm.newPwd) {
                    callback(new Error("密码不一致!"));
                  } else {
                    callback();
                  }
                },
                trigger: "blur"
              }
            ]
          },
          pwdForm: {
            oldPwd: "",
            newPwd: "",
            newPwd2: ""
          }
        };
      },
      methods: {
        handleSelect: function(index) {
          this.showIframe(index);
        },
		showIframe: function(index){
			let url = "";
			for (var i = 0; i < this.menusOrigin.length; i++) {
				if(index == this.menusOrigin[i].sMenu_ID){
					url = this.menusOrigin[i].sMenu_Url;
					break;
				}
			}
			//$('.content-iframe').attr('src', url);
			this.activeSrc = url;
		},
        //update pwd
        handlepwdChange: function() {
          this.pwdFormVisible = true;
          this.pwdForm = {
            oldPwd: "",
            newPwd: "",
            newPwd2: ""
          };
        },
        pwdChangeClose: function() {
          this.pwdFormVisible = false;
          this.pwdLoading = false;
          this.$refs.pwdForm.resetFields();
        },
        pwdChange: function() {
          this.$refs.pwdForm.validate((valid) => {
            if (valid) {
              this.$confirm('确定提交吗?', '提示', {}).then(() =>{
                var params = Object.assign({}, this.pwdForm);
                delete params.newPwd2;
                var self = this;
                this.pwdLoading = true;
                ajaxReq(changePwdUrl, params, function(res) {
                  self.pwdLoading = false;
                  if (res.code > 0) {
                    self.$message({
                      message: "成功",
                      type: "success"
                    });
                    self.addFormVisible = false;
                    localStorage.removeItem('loginUser');
                    parent.window.location.href = "login.html";
                  }else if(res.code == -206){
					self.$message({
							message: '缺少参数.',
							type: 'warning'
						})
					}else if(res.code == -213){
						self.$message({
							message: '密码错误. ',
							type: 'warning'
						})
					}else if(res.code == -111){
						self.$message({
							message: '未登录. ',
							type: 'warning'
						})
					}else{
						self.$message({
							message: '失败: '+res.msg,
							type: 'warning'
						})
					}
                });
              });
            }
          });
        },
        //login
        logout: function() {
          this.$confirm("确定退出系统吗？", "提示", {
            //type: 'warning'
          }).then(() => {
              var self = this;
              var params = {};
              ajaxReq(logoutUrl, params, function(res) {
                if (res.code > 0) {
                	parent.window.location.href = "login.html";
                }else{
                	self.$message({
						message: '失败: '+res.msg,
						type: 'warning'
					});
                }
              });
            }).catch(function() {});
        },
        userAuthMenu: function() {
			var params = {};
			var self = this;
			ajaxReq(authUrl, params, function(res){
				if(res.code > 0){
					var menus = res.data.menus;
					self.menus = []; //menu tree
					for (var i = 0; i < menus.length; i++) {
						var node = menus[i];
						//如果有权限，默认显示 -- 统计首页
						if(node.sMenu_ID == 510){
							self.activeIndex = node.sMenu_ID;
							self.activeSrc = node.sMenu_Url;
						}
						
						if(!node.sMenu_Parent){
							var children = self.findChildren(node.sMenu_ID, menus);
							if(children && children.length > 0){
								node.children = children;
							}
							self.menus.push(node);
						}
					}
					self.menusOrigin = menus;  //menu array
					self.menuFuns = res.data.funs;
					gMenuFuns = self.menuFuns; //全局
					//默认选中
				}
			});
        },
        findChildren: function(id, menus){
        	let children = [];
        	for (var i = 0; i < menus.length; i++) {
				var node = menus[i];
				if(node.sMenu_Parent == id){
					let temp = this.findChildren(node.sMenu_ID, menus);
					if(temp && temp.length > 0){
						node.children = temp;
					}
					children.push(node);
				}
			}
        	return children;
        },
        isLogin: function(cb) {
			var params = {};
			ajaxReq(isLoginUrl, params, function(res){
				if(res.code <= 0){
					localStorage.removeItem('loginUser');
					parent.window.location.href = "login.html";
				}else{
					if(typeof cb == 'function'){
						cb(res.data);
					}
					
				}
			});
        },
        initLoginUser: function(data){
        	this.user = data;
      		this.sysUserName = this.user.sUser_Nick ? this.user.sUser_Nick : this.user.sUser_UserName;
        }
      },
      mounted: function() {
    	getLoginToken();
		this.isLogin(this.initLoginUser);
		this.preloading = true;
		this.userAuthMenu();
      }
  });
