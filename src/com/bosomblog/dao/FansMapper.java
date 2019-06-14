package com.bosomblog.dao;

import com.bosomblog.entity.Fans;
import com.bosomblog.entity.FansExample;
import com.bosomblog.entity.Users;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FansMapper {
	
	//�����û�ID��ѯ���з�˿
	List<Users> queryFansByid(int usersid);
	
    long countByExample(FansExample example);

    int deleteByExample(FansExample example);

    int deleteByPrimaryKey(Integer fansId);

    //��ӷ�˿
    int insert(Fans record);
    
    //�����û�ID�ͷ�˿IDɾ����˿��¼
    int deleteByUsersid(Fans fans);

    int insertSelective(Fans record);

    List<Fans> selectByExample(FansExample example);

    Fans selectByPrimaryKey(Integer fansId);

    int updateByExampleSelective(@Param("record") Fans record, @Param("example") FansExample example);

    int updateByExample(@Param("record") Fans record, @Param("example") FansExample example);

    int updateByPrimaryKeySelective(Fans record);

    int updateByPrimaryKey(Fans record);
}