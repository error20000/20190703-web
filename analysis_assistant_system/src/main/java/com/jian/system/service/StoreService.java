package com.jian.system.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jian.system.dao.StoreMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Store;
import com.jian.system.entity.StoreType;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class StoreService extends BaseService<Store, StoreMapper> {

	@Autowired
	private StoreTypeService typeService;
	
	@TargetDataSource
	public int add(String level, StoreType type, Store obj, User user) {
		if(Tools.isNullOrEmpty(level)) {
			throw new ServiceException(Tips.ERROR101, "level is null.");
		}
		int res = 0;
		switch (level) {
		case "1": //一级
			res =typeService.insert(type, user);
			break;

		default:
			res =super.insert(obj, user);
			break;
		}
		return res;
	}


	@TargetDataSource
	public List<Map<String, Object>> storeTree() {
		List<StoreType> typeList = typeService.selectAll();
		List<Store> list = this.selectAll();
		
		/*Map<String, List<Store>> temp1 = list.stream()
		        .collect(Collectors.groupingBy(Store::getsStore_Level1));
		Map<String, List<Store>> temp2 = list.stream()
		        .collect(Collectors.groupingBy(Store::getsStore_Level2));
		Map<String, List<Store>> temp3 = list.stream()
		        .collect(Collectors.groupingBy(Store::getsStore_Level3));*/
		
		List<Map<String, Object>> res = new ArrayList<Map<String,Object>>();
		Map<String, Object> node = null;
		for (StoreType type : typeList) {
			node = Tools.parseObjectToMap(type);
			//children 1
			List<Store> children1 = list.stream()
					.filter(e -> e.getsStore_Level1() != null && e.getsStore_Level1().equals(type.getsStoreType_ID()))
					.collect(Collectors.toList());
			if(children1 != null && children1.size() > 0) {
				List<Map<String, Object>> res1 = new ArrayList<Map<String,Object>>();
				Map<String, Object> node1 = null;
				for (Store store1 : children1) {
					node1 = Tools.parseObjectToMap(store1);
					//children 2
					List<Store> children2 = children1.stream()
							.filter(e -> e.getsStore_Level2() != null && e.getsStore_Level2().equals(store1.getsStore_ID()))
							.collect(Collectors.toList());
					if(children2 != null && children2.size() > 0) {
						List<Map<String, Object>> res2 = new ArrayList<Map<String,Object>>();
						Map<String, Object> node2 = null;
						for (Store store2 : children2) {
							node2 = Tools.parseObjectToMap(store2);
							//children 3
							List<Store> children3 = children2.stream()
									.filter(e -> e.getsStore_Level3() != null && e.getsStore_Level3().equals(store2.getsStore_ID()))
									.collect(Collectors.toList());
							if(children3 != null && children3.size() > 0) {
								List<Map<String, Object>> res3 = new ArrayList<Map<String,Object>>();
								Map<String, Object> node3 = null;
								for (Store store3 : children3) {
									node3 = Tools.parseObjectToMap(store3);
									res3.add(node3);
								}
								node2.put("children", res3); // end 3
							}
							res2.add(node2);
						}
						node1.put("children", res2); // end 2
					}
					res1.add(node1);
				}
				node.put("children", res1); // end 1
			}
			res.add(node);
		}
		return res;
	}
	
	/*private List<Map<String, Object>> findChildren(String id, List<Store> list){
		List<Map<String, Object>> res = new ArrayList<Map<String,Object>>();
		List<Store> children = list.stream()
				.filter(e -> e.getsStore_Level1().equals(id))
				.collect(Collectors.toList());
		if(children != null && children.size() > 0) {
			Map<String, Object> node = null;
			for (Store store : children) {
				node = Tools.parseObjectToMap(store);
				node.put("children", findChildren(store.getsStore_ID(), children));
				res.add(node);
			}
		}else {
			for (Store store : list) {
				res.add(Tools.parseObjectToMap(store));
			}
		}
		return res;
	}*/
}
