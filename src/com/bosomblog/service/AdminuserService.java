package com.bosomblog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosomblog.dao.AdministratorMapper;
import com.bosomblog.dao.UsersMapper;
import com.bosomblog.entity.Administrator;
import com.bosomblog.entity.Users;

@Service
public class AdminuserService {
	@Autowired
	private UsersMapper usersMapper;
	@Autowired
	private AdministratorMapper administratorMapper;

	// 查询所有用户信息
	public List<Users> selectAll() {
		return usersMapper.selectByExample(null);
	}

	// 按照用户名查询账号和密码
	public Administrator selectByaname(String aname) {
		return administratorMapper.selectByaname(aname);

	}

	// 根据id查单个用户
	public Users selectByusersKey(int userid) {
		return usersMapper.selectByPrimaryKey(userid);

	}

	// 按照id修改封号
	public int updateByPrimaryKeySelective(Users users) {
		return usersMapper.updateByPrimaryKeySelective(users);

	}

	// 按照昵称和手机号模糊查询
	public List<Users> selectByKeyExample(String num) {
		return usersMapper.selectByKeyExample(num);

	}

}
