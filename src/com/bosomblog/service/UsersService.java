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

	// ��¼
	public Users queryByPhone(String phone) {
		return usersMapper.queryByPhone(phone);
	}

	// ע��
	public int insertSelective(Users users) {
		return usersMapper.insertSelective(users);
	}

	// �޸�
	public int updateByPhone(Users users) {
		return usersMapper.updateByPhone(users);
	}

	// �޸��û�����
	public int updataUserGrade(Integer userid, Integer grade) {
		return usersMapper.updateUserGrade(userid, grade);
	}

	// �����û�ID��ѯ�û�������Ϣ
	public Users queryById(int usersid) {
		return usersMapper.queryById(usersid);
	}

	// �û��ȼ����а�
	public List<Users> orderByGrade() {
		return usersMapper.orderByGrade();
	}

	// �û��������а�
	public List<Users> orderByFt() {
		return usersMapper.orderByFt();
	}
}
