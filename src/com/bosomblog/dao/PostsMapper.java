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

	// ���һ������
	int insert(Posts record);

	int insertSelective(Posts record);

	List<Posts> selectByExample(PostsExample example);

	// ��̨���ݲ��ĵı��������ģ����ѯ
	List<Posts> selectgetsome(@Param("sum") String sum);

	// �޸��ö��뾫��
	int updateByExampleSelectives(Posts posts);

	// ��̨����id��ѯ����������Ϣ
	Posts selectByany(int id);

	// ��̨��ѯ���в�����Ϣ
	List<Posts> selectByAllmsg();

	// ����id��ѯ������Ϣ
	Posts selectByPrimaryKey(Integer pid);

	int updateByExampleSelective(@Param("record") Posts record,
			@Param("example") PostsExample example);

	int updateByExample(@Param("record") Posts record,
			@Param("example") PostsExample example);

	//�޸Ĳ�����Ϣ
	int updateByPrimaryKeySelective(Posts record);

	int updateByPrimaryKey(Posts record);

	// ��ѯ�����ö��Ĳ�����Ϣ
	public List<Posts> getPostByPstatus();

	// ��ѯ���еĲ�����Ϣ,��ҳ��ʾ
	public List<Posts> selectByAll(@Param("page") int pages,
			@Param("limit") int limits);

	// ��ѯ�����Ǿ����Ĳ�����Ϣ
	public List<Posts> selectByPelite(@Param("page") int pages,
			@Param("limit") int limits);

	// ������������ѯ��������
	public List<Posts> selectByPreadings(@Param("page") int pages,
			@Param("limit") int limits);

	// �����������ѯ��������
	public List<Posts> selectByPcomments(@Param("page") int pages,
			@Param("limit") int limits);

	// ���ݲ���ID��ѯ��������ID
	List<Comment> queryByPostsID(int id);

	// ��ѯ������������������
	public int selectByCount();

	// ��ѯ������������
	public int selectByJtCount();

	// �޸Ĳ�������+1
	public int updateCommentadd(Posts posts);

	// �޸Ĳ�������-1
	public int updateCommentdown(Posts posts);

	// �޸Ĳ��������+1
	public int updateReadingadd(Posts posts);

	// �����û�ID����ѯ���е�����
	public List<Posts> selectAllByUid(@Param("uid") Integer uid);

	// ���ݲ������ͱ�ţ���ѯ���в�����Ϣ
	public List<Posts> selectPostsByPtypeID(@Param("ptypeid") Integer ptypeid);

	// ���ݲ��ı���ģ����ѯ������Ϣ
	public List<Posts> selectPostsByPTitle(@Param("ptitle") String ptitle);
}