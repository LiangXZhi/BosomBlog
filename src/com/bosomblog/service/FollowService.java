package com.bosomblog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosomblog.dao.FollowMapper;
import com.bosomblog.entity.Follow;
import com.bosomblog.entity.Users;

@Service
public class FollowService {
	@Autowired
	private FollowMapper followMapper;

	public List<Users> queryFollowByid(int usersid) {
		return followMapper.queryFollowByid(usersid);
	}
	
	public int deleteByUsersid(Follow follow) {
		return followMapper.deleteByUsersid(follow);
	}
	
	public int insert(Follow record) {
		return followMapper.insert(record);
	}
}
