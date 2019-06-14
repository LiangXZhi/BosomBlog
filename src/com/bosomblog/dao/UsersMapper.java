package com.bosomblog.dao;

import com.bosomblog.entity.Users;
import com.bosomblog.entity.UsersExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UsersMapper {
	long countByExample(UsersExample example);

	int deleteByExample(UsersExample example);

	int deleteByPrimaryKey(Integer usesid);

	int insert(Users record);

	int insertSelective(Users record);

	int updateByExampleSelective(@Param("record") Users record,
			@Param("example") UsersExample example);

	int updateByExample(@Param("record") Users record,
			@Param("example") UsersExample example);

	// �����ǳƺ��ֻ���ģ����ѯ
	List<Users> selectByKeyExample(String num);

	// ����phone��ѯ�û�
	Users queryByPhone(String phone);

	// ��ѯ�����û���Ϣ
	List<Users> selectByExample(UsersExample example);

	// ����id�鵥���û�
	Users selectByPrimaryKey(Integer usesid);

	// ����id�޸ķ��
	int updateByPrimaryKeySelective(Users record);

	// �����ֻ����޸��û�
	int updateByPhone(Users record);

	// �޸��û�����
	public int updateUserGrade(@Param("userid") Integer userid,
			@Param("grade") Integer grade);

	// �����û�ID�����û�������Ϣ
	Users queryById(int usersid);

	// �û��ȼ����а�
	List<Users> orderByGrade();

	// �û��ȼ����а�
	List<Users> orderByFt();
}