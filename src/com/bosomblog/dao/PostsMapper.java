package com.bosomblog.dao;

import com.bosomblog.entity.Comment;
import com.bosomblog.entity.Posts;
import com.bosomblog.entity.PostsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostsMapper {
	long countByExample(PostsExample example);

	int deleteByExample(PostsExample example);

	int deleteByPrimaryKey(Integer pid);

	// 添加一条博文
	int insert(Posts record);

	int insertSelective(Posts record);

	List<Posts> selectByExample(PostsExample example);

	// 后台根据博文的标题或内容模糊查询
	List<Posts> selectgetsome(@Param("sum") String sum);

	// 修改置顶与精贴
	int updateByExampleSelectives(Posts posts);

	// 后台根据id查询单条博文信息
	Posts selectByany(int id);

	// 后台查询所有博客信息
	List<Posts> selectByAllmsg();

	// 根据id查询博文信息
	Posts selectByPrimaryKey(Integer pid);

	int updateByExampleSelective(@Param("record") Posts record,
			@Param("example") PostsExample example);

	int updateByExample(@Param("record") Posts record,
			@Param("example") PostsExample example);

	//修改博文信息
	int updateByPrimaryKeySelective(Posts record);

	int updateByPrimaryKey(Posts record);

	// 查询所有置顶的博文信息
	public List<Posts> getPostByPstatus();

	// 查询所有的博文信息,分页显示
	public List<Posts> selectByAll(@Param("page") int pages,
			@Param("limit") int limits);

	// 查询所有是精贴的博文信息
	public List<Posts> selectByPelite(@Param("page") int pages,
			@Param("limit") int limits);

	// 根据评论量查询所有帖子
	public List<Posts> selectByPreadings(@Param("page") int pages,
			@Param("limit") int limits);

	// 根据浏览量查询所有帖子
	public List<Posts> selectByPcomments(@Param("page") int pages,
			@Param("limit") int limits);

	// 根据博客ID查询所有评论ID
	List<Comment> queryByPostsID(int id);

	// 查询满足条件的所有数量
	public int selectByCount();

	// 查询精贴的总数量
	public int selectByJtCount();

	// 修改博文评论+1
	public int updateCommentadd(Posts posts);

	// 修改博文评论-1
	public int updateCommentdown(Posts posts);

	// 修改博文浏览量+1
	public int updateReadingadd(Posts posts);

	// 根据用户ID，查询所有的帖子
	public List<Posts> selectAllByUid(@Param("uid") Integer uid);

	// 根据博文类型编号，查询所有博文信息
	public List<Posts> selectPostsByPtypeID(@Param("ptypeid") Integer ptypeid);

	// 根据博文标题模糊查询博文信息
	public List<Posts> selectPostsByPTitle(@Param("ptitle") String ptitle);
}