package com.jian.system.aspect;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.jian.system.annotation.VerifyAuth;
import com.jian.system.config.Config;
import com.jian.system.config.RedisCacheKey;
import com.jian.system.entity.GroupMenu;
import com.jian.system.entity.MenuIfs;
import com.jian.system.entity.User;
import com.jian.system.entity.UserMenu;
import com.jian.system.exception.ServiceException;
import com.jian.system.service.GroupMenuService;
import com.jian.system.service.MenuIfsService;
import com.jian.system.service.UserMenuService;
import com.jian.system.utils.TokenUtils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Aspect
@Component
@Order(3)
public class VerifyAuthAspect {

	@Autowired
	private Config config;
	@Autowired
	private RedisCacheKey cacheKey;
	@Autowired
	private MenuIfsService menuIfsService;
	@Autowired
	private GroupMenuService groupMenuService;
	@Autowired
	private UserMenuService userMenuService;

	/**
	 * 授权验证<br/>
	 * 步骤：<br/>
	 * 1、获取登录用户。<br/>
	 * 2、获取接口。<br/>
	 * 3、查询接口权限。<br/>
	 * 通过情况：<br/>
	 * 1、如果找不到接口，通过。<br/>
	 * 2、如果接口是开放的，通过。<br/>
	 * 3、如果有接口权限，通过。<br/>
	 * @param req
	 * @return 通过返回null
	 */
    @Before("execution(public * com.jian.system.controller.*.*(..)) && @annotation(auth)")
    public void before(JoinPoint joinPoint, VerifyAuth auth){
    	
    	System.out.println(cacheKey.userAuthCacheKey);
    	
    	long start = System.currentTimeMillis();
    	//1、获取登录用户
    	HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
    	String tokenStr = TokenUtils.getLoginToken(request);
		User user = TokenUtils.getLoginUser(tokenStr);
		if(user == null) {
    		throw new ServiceException(Tips.ERROR111);
    	}
    	//2、获取接口
		String uri = request.getRequestURI();
		MenuIfs ifs = menuIfsService.selectOne(MapTools.custom().put("sInterface_Url", uri).build());
		if(ifs == null) {
			return; // 如果找不到接口，通过
		}
		if(ifs.getlInterface_StatusFlag() == 0) { // 禁用
    		throw new ServiceException(Tips.ERROR200, "接口（"+uri+"）");
		}
		if(Tools.isNullOrEmpty(ifs.getsInterface_MenuID())) {
			return; // 如果接口是开放的，通过。
		}
		//3、超管，通过
		String groupId = user.getsUser_GroupID();
		String userId = user.getsUser_ID();
		if(config.superGroupId.equals(groupId)) {
			return;
		}
		//4、查询用户权限
		List<String> userms = new ArrayList<>();
		List<String> usermfs = new ArrayList<>();
		//	用户组
		List<GroupMenu> gms = groupMenuService.selectList(MapTools.custom().put("sGroupMenu_GroupID", groupId).build());
		for (GroupMenu groupMenu : gms) {
			//菜单
			userms.add(groupMenu.getsGroupMenu_MenuID());
			//功能
			usermfs.addAll(Arrays.asList(groupMenu.getsGroupMenu_MenuFunID().split(",")));
		}
		//	用户
		List<UserMenu> ums = userMenuService.selectList(MapTools.custom().put("sUserMenu_UserID", userId).build());
		for (UserMenu userMenu : ums) {
			//菜单
			userms.add(userMenu.getsUserMenu_MenuID());
			//功能
			usermfs.addAll(Arrays.asList(userMenu.getsUserMenu_MenuFunID().split(",")));
		}
		//5、判断接口权限
		boolean flag = false;
		if(Tools.isNullOrEmpty(ifs.getsInterface_MFunID())) { // 当按钮有空时，只要用户拥有菜单权限，就通过验证。
			String[] str = ifs.getsInterface_MenuID().split(",");
			for (int i = 0; i < str.length; i++) {
				for (String string : userms) {
					if(str[i].equals(string)) {
						flag = true;
						break;
					}
				}
			}
		}else {  // 当按钮不为空时，只要用户拥有按钮权限，就通过验证。
			String[] str = ifs.getsInterface_MFunID().split(",");
			for (int i = 0; i < str.length; i++) {
				for (String string : usermfs) {
					if(str[i].equals(string)) {
						flag = true;
						break;
					}
				}
			}
		}
		if(!flag) {
    		throw new ServiceException(Tips.ERROR201);
		}
		System.out.println("=== VerifyAuth ms =====>"+(System.currentTimeMillis()-start));
    }


}
