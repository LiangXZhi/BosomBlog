package com.bosomblog.dao;

import com.bosomblog.entity.Collect;
import com.bosomblog.entity.CollectExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CollectMapper {
	long countByExample(CollectExample example);

	int deleteByExample(CollectExample example);

	// 根据主键删除收藏信息
	int deleteByPrimaryKey(Integer collectid);

	int insert(Collect record);

	// 根据用户ID和博文ID添加一条收藏记录
	int insertSelective(Collect record);

	// 根据用户ID和博文ID删除一条收藏记录
	int deleteSelective(Collect record);

	List<Collect> selectByExample(CollectExample example);

	Collect selectByPrimaryKey(Integer collectid);

	int updateByExampleSelective(@Param("record") Collect record,
			@Param("example") CollectExample example);

	int updateByExample(@Param("record") Collect record,
			@Param("example") CollectExample example);

	int updateByPrimaryKeySelective(Collect record);

	int updateByPrimaryKey(Collect record);

	// 根据博客ID,查询所有收藏
	List<Collect> selectCollectByPid(@Param("pid") Integer pid);

	// 根据用户ID，查询所有博文ID
	List<Collect> selectPidByUid(@Param("uid") Integer uid);
}