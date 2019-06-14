package com.bosomblog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosomblog.dao.LableMapper;

@Service
public class LableService {

	@Autowired
	private LableMapper lableMapper;
	
	//得到所有标签名称
	public List<String> findLableName(){
		return lableMapper.getLableName();
	}
}
