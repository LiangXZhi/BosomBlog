package com.bosomblog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosomblog.dao.FansMapper;
import com.bosomblog.entity.Fans;
import com.bosomblog.entity.Users;

@Service
public class FansService {
	@Autowired
	private FansMapper fansMapper;
	
	public List<Users> queryFansByid(int usersid) {
		return fansMapper.queryFansByid(usersid);
	}
	
	public int insert(Fans fans) {
		return fansMapper.insert(fans);
	}
	
	public int deleteByUsersid(Fans fans) {
		return fansMapper.deleteByUsersid(fans);
	}
}
