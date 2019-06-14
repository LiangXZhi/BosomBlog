package com.bosomblog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosomblog.dao.PostTypeMapper;
import com.bosomblog.entity.PostType;

@Service
public class PostTypeService {

	@Autowired
	private PostTypeMapper postTypeMapper;
	
	//查询所有博文类型
	public List<PostType> findPostTypeAll(){
		return postTypeMapper.selectAll();
	}
	
	//根据博文编号，查询所有博文信息
	public String findPostTypeNameByKY(Integer ptypeid){
		return postTypeMapper.selectByPrimaryKey(ptypeid); 
	}
}
