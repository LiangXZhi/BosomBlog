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

	// ���ݲ��ı�ţ���ѯ�����ղ�
	public List<Collect> findCollectByPid(Integer pid) {
		return collectMapper.selectCollectByPid(pid);
	}

	// �����ղ�������ɾ����Ӧ�ղ���Ϣ
	public int deleteCollectByPKey(Integer cid) {
		return collectMapper.deleteByPrimaryKey(cid);
	}

	// �����û�ID����ѯ���в���ID
	public List<Collect> findPidByUid(Integer uid) {
		return collectMapper.selectPidByUid(uid);
	}

	// �����û�ID�Ͳ���ID���һ���ղؼ�¼
	public int insertCollect(Collect collect) {
		return collectMapper.insertSelective(collect);
	}

	// �����û�ID�Ͳ���IDɾ��һ���ղؼ�¼
	public int deleteCollect(Collect collect) {
		return collectMapper.deleteSelective(collect);
	}
}
