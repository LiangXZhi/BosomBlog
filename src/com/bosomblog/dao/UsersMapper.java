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

	// 按照昵称和手机号模糊查询
	List<Users> selectByKeyExample(String num);

	// 根据phone查询用户
	Users queryByPhone(String phone);

	// 查询所有用户信息
	List<Users> selectByExample(UsersExample example);

	// 根据id查单个用户
	Users selectByPrimaryKey(Integer usesid);

	// 根据id修改封号
	int updateByPrimaryKeySelective(Users record);

	// 根据手机号修改用户
	int updateByPhone(Users record);

	// 修改用户经验
	public int updateUserGrade(@Param("userid") Integer userid,
			@Param("grade") Integer grade);

	// 根据用户ID查找用户所有信息
	Users queryById(int usersid);

	// 用户等级排行榜
	List<Users> orderByGrade();

	// 用户等级排行榜
	List<Users> orderByFt();
}