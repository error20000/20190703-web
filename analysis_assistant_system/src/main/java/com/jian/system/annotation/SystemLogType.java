package com.jian.system.annotation;

public enum SystemLogType {

	Query("query"), Update("update"), Delete("delete"), Add("add"), Other("other"), Upload("upload"), Login("login");
	
	public String value;
	
	private SystemLogType(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
	
}
