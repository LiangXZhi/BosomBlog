package com.bosomblog.data;

import java.util.List;

public class Pading {

	private int curPage;//��ǰҳ
    private int pageSize = 6;//ҳ����������
    private int indexpage;//��ҳ
    private int endpage;//βҳ
    private int count;//����������
    private int totalPage;//��ҳ����
    private List<Object> list;//�õ������ݷ���list������
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getIndexpage() {
		return indexpage;
	}
	public void setIndexpage(int indexpage) {
		this.indexpage = indexpage;
	}
	public int getEndpage() {
		return endpage;
	}
	public void setEndpage(int endpage) {
		this.endpage = endpage;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<Object> getList() {
		return list;
	}
	public void setList(List<Object> list) {
		this.list = list;
	}
   
    
}
