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

	// 后台查询所有公告
	public List<Notify> selectsByExample() {
		return notifyMapper.selectByExample(null);

	}

	// 后台根据id删除公告
	public int deleteByPrimaryKey(int id) {
		return notifyMapper.deleteByPrimaryKey(id);
	}

	// 按照内容模糊查询
	public List<Notify> selectBycontent(String num) {
		return notifyMapper.selectBycontent(num);
	}

	// 添加公告内容
	public int insert(Notify notify) {
		return notifyMapper.insert(notify);

	}
	
	//后台可见的设置
			public int updateByone(Notify notify){
				return notifyMapper.updateByone(notify);
				
			}
			
			public Notify selectByPrimaryKey(int id){
				return notifyMapper.selectByPrimaryKey(id);
				
			}
}
