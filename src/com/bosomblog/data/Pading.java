package com.bosomblog.data;

import java.util.List;

public class Pading {

	private int curPage;//当前页
    private int pageSize = 6;//页面数据条数
    private int indexpage;//首页
    private int endpage;//尾页
    private int count;//总数据条数
    private int totalPage;//总页面数
    private List<Object> list;//得到的数据放入list集合中
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
