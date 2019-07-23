package com.jian.system.exception;

import com.jian.tools.core.JsonTools;
import com.jian.tools.core.Tips;

public class ServiceException extends RuntimeException{

	private static final long serialVersionUID = 1L;

	private Tips tips;

	public ServiceException(Tips tips) {
		super(JsonTools.toJsonString(tips));
		this.tips = tips;
	}

	public Tips getTips() {
		return tips;
	}

	public void setTips(Tips tips) {
		this.tips = tips;
	}
	
}
