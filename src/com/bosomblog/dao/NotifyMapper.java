package com.bosomblog.dao;

import com.bosomblog.entity.Notify;
import com.bosomblog.entity.NotifyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NotifyMapper {
    long countByExample(NotifyExample example);

    int deleteByExample(NotifyExample example);
    
  //后台设置可见
  	int updateByone(Notify record);

	// 后台按照id删除公告
	int deleteByPrimaryKey(Integer notityId);

	//添加公告内容
	int insert(Notify record);

	int insertSelective(Notify record);

	// 后台查询所有公告
	List<Notify> selectByExample(NotifyExample example);
    
    Notify selectByPrimaryKey(Integer notityId);

    int updateByExampleSelective(@Param("record") Notify record, @Param("example") NotifyExample example);

    int updateByExample(@Param("record") Notify record, @Param("example") NotifyExample example);

    int updateByPrimaryKeySelective(Notify record);

    int updateByPrimaryKey(Notify record);
    
 // 查询公告
 	public List<Notify> getNotifyTitle();
 	
 	//按照内容模糊查询
 	public List<Notify> selectBycontent(String num);
 	
}