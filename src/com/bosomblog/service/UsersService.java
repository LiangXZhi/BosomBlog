package com.bosomblog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosomblog.dao.UsersMapper;
import com.bosomblog.entity.Users;

@Service
public class UsersService {
	@Autowired
	private UsersMapper usersMapper;

	// 登录
	public Users queryByPhone(String phone) {
		return usersMapper.queryByPhone(phone);
	}

	// 注册
	public int insertSelective(Users users) {
		return usersMapper.insertSelective(users);
	}

	// 修改
	public int updateByPhone(Users users) {
		return usersMapper.updateByPhone(users);
	}

	// 修改用户经验
	public int updataUserGrade(Integer userid, Integer grade) {
		return usersMapper.updateUserGrade(userid, grade);
	}

	// 根据用户ID查询用户所有信息
	public Users queryById(int usersid) {
		return usersMapper.queryById(usersid);
	}

	// 用户等级排行榜
	public List<Users> orderByGrade() {
		return usersMapper.orderByGrade();
	}

	// 用户发帖排行榜
	public List<Users> orderByFt() {
		return usersMapper.orderByFt();
	}
}
