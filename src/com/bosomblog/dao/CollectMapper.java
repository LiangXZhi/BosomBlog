package com.bosomblog.dao;

import com.bosomblog.entity.Collect;
import com.bosomblog.entity.CollectExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CollectMapper {
	long countByExample(CollectExample example);

	int deleteByExample(CollectExample example);

	// ��������ɾ���ղ���Ϣ
	int deleteByPrimaryKey(Integer collectid);

	int insert(Collect record);

	// �����û�ID�Ͳ���ID���һ���ղؼ�¼
	int insertSelective(Collect record);

	// �����û�ID�Ͳ���IDɾ��һ���ղؼ�¼
	int deleteSelective(Collect record);

	List<Collect> selectByExample(CollectExample example);

	Collect selectByPrimaryKey(Integer collectid);

	int updateByExampleSelective(@Param("record") Collect record,
			@Param("example") CollectExample example);

	int updateByExample(@Param("record") Collect record,
			@Param("example") CollectExample example);

	int updateByPrimaryKeySelective(Collect record);

	int updateByPrimaryKey(Collect record);

	// ���ݲ���ID,��ѯ�����ղ�
	List<Collect> selectCollectByPid(@Param("pid") Integer pid);

	// �����û�ID����ѯ���в���ID
	List<Collect> selectPidByUid(@Param("uid") Integer uid);
}