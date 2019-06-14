package com.bosomblog.dao;

import com.bosomblog.entity.Comment;
import com.bosomblog.entity.CommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CommentMapper {
    long countByExample(CommentExample example);

    int deleteByExample(CommentExample example);

    //ɾ��ָ������
    int deleteByPrimaryKey(Integer cid);

    int insert(Comment record);

    //�������
    int insertSelective(Comment record);

    List<Comment> selectByExample(CommentExample example);

    Comment selectByPrimaryKey(Integer cid);

    int updateByExampleSelective(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByExample(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
    
    //���ݲ��ı�Ų�ѯ��Ӧ����
    public List<Comment> getCommentsByPid(@Param("pid") Integer pid);
    
  //���ݲ���ID��ѯ��Ӧ������
    public List<Comment> getCommentsByPids(@Param("pid") Integer pid);
    
  //���ݲ��ı�Ų�ѯ��Ӧ����,����һ�������µ�����
    public List<Comment> getCommentsByCid(@Param("pid") Integer pid,@Param("cid") Integer cid);
    
    //�����ϻ�����ID��ѯ�ϼ��������ǳ�
    public Comment getUNameByCid(@Param("csuperiorId") Integer csuperiorId);
    
}