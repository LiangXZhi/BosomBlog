package com.bosomblog.dao;

import com.bosomblog.entity.Follow;
import com.bosomblog.entity.FollowExample;
import com.bosomblog.entity.Users;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FollowMapper {
	
	//�����û�ID��ѯ�ѹ�ע�û�
	List<Users> queryFollowByid(int usersid);
	
	//���ݹ�ע�ߺͱ���IDɾ����ע��¼
	int deleteByUsersid(Follow follow);
	
    long countByExample(FollowExample example);

    int deleteByExample(FollowExample example);

    int deleteByPrimaryKey(Integer followId);

    int insert(Follow record);

    int insertSelective(Follow record);

    List<Follow> selectByExample(FollowExample example);

    Follow selectByPrimaryKey(Integer followId);

    int updateByExampleSelective(@Param("record") Follow record, @Param("example") FollowExample example);

    int updateByExample(@Param("record") Follow record, @Param("example") FollowExample example);

    int updateByPrimaryKeySelective(Follow record);

    int updateByPrimaryKey(Follow record);
}