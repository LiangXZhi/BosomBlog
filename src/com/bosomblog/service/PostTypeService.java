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
	
	//��ѯ���в�������
	public List<PostType> findPostTypeAll(){
		return postTypeMapper.selectAll();
	}
	
	//���ݲ��ı�ţ���ѯ���в�����Ϣ
	public String findPostTypeNameByKY(Integer ptypeid){
		return postTypeMapper.selectByPrimaryKey(ptypeid); 
	}
}
