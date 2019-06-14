package com.bosomblog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosomblog.dao.CollectMapper;
import com.bosomblog.entity.Collect;

@Service
public class CollectService {

	@Autowired
	private CollectMapper collectMapper;

	// 根据博文编号，查询所有收藏
	public List<Collect> findCollectByPid(Integer pid) {
		return collectMapper.selectCollectByPid(pid);
	}

	// 根据收藏主键，删除对应收藏信息
	public int deleteCollectByPKey(Integer cid) {
		return collectMapper.deleteByPrimaryKey(cid);
	}

	// 根据用户ID，查询所有博文ID
	public List<Collect> findPidByUid(Integer uid) {
		return collectMapper.selectPidByUid(uid);
	}

	// 根据用户ID和博文ID添加一条收藏记录
	public int insertCollect(Collect collect) {
		return collectMapper.insertSelective(collect);
	}

	// 根据用户ID和博文ID删除一条收藏记录
	public int deleteCollect(Collect collect) {
		return collectMapper.deleteSelective(collect);
	}
}
