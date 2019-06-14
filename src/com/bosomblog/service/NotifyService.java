package com.bosomblog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosomblog.dao.NotifyMapper;
import com.bosomblog.entity.Notify;

@Service
public class NotifyService {

	@Autowired
	private NotifyMapper notifyMapper;

	public List<Notify> findNotifies() {
		return notifyMapper.getNotifyTitle();
	}

	// ��̨��ѯ���й���
	public List<Notify> selectsByExample() {
		return notifyMapper.selectByExample(null);

	}

	// ��̨����idɾ������
	public int deleteByPrimaryKey(int id) {
		return notifyMapper.deleteByPrimaryKey(id);
	}

	// ��������ģ����ѯ
	public List<Notify> selectBycontent(String num) {
		return notifyMapper.selectBycontent(num);
	}

	// ��ӹ�������
	public int insert(Notify notify) {
		return notifyMapper.insert(notify);

	}
	
	//��̨�ɼ�������
			public int updateByone(Notify notify){
				return notifyMapper.updateByone(notify);
				
			}
			
			public Notify selectByPrimaryKey(int id){
				return notifyMapper.selectByPrimaryKey(id);
				
			}
}
