package com.bosomblog.dao;

import com.bosomblog.entity.Notify;
import com.bosomblog.entity.NotifyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NotifyMapper {
    long countByExample(NotifyExample example);

    int deleteByExample(NotifyExample example);
    
  //��̨���ÿɼ�
  	int updateByone(Notify record);

	// ��̨����idɾ������
	int deleteByPrimaryKey(Integer notityId);

	//��ӹ�������
	int insert(Notify record);

	int insertSelective(Notify record);

	// ��̨��ѯ���й���
	List<Notify> selectByExample(NotifyExample example);
    
    Notify selectByPrimaryKey(Integer notityId);

    int updateByExampleSelective(@Param("record") Notify record, @Param("example") NotifyExample example);

    int updateByExample(@Param("record") Notify record, @Param("example") NotifyExample example);

    int updateByPrimaryKeySelective(Notify record);

    int updateByPrimaryKey(Notify record);
    
 // ��ѯ����
 	public List<Notify> getNotifyTitle();
 	
 	//��������ģ����ѯ
 	public List<Notify> selectBycontent(String num);
 	
}