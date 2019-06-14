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

	// ��ѯ�����û���Ϣ
	public List<Users> selectAll() {
		return usersMapper.selectByExample(null);
	}

	// �����û�����ѯ�˺ź�����
	public Administrator selectByaname(String aname) {
		return administratorMapper.selectByaname(aname);

	}

	// ����id�鵥���û�
	public Users selectByusersKey(int userid) {
		return usersMapper.selectByPrimaryKey(userid);

	}

	// ����id�޸ķ��
	public int updateByPrimaryKeySelective(Users users) {
		return usersMapper.updateByPrimaryKeySelective(users);

	}

	// �����ǳƺ��ֻ���ģ����ѯ
	public List<Users> selectByKeyExample(String num) {
		return usersMapper.selectByKeyExample(num);

	}

}
