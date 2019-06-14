package com.bosomblog.dao;

import com.bosomblog.entity.Comment;
import com.bosomblog.entity.CommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CommentMapper {
    long countByExample(CommentExample example);

    int deleteByExample(CommentExample example);

    //删除指定评论
    int deleteByPrimaryKey(Integer cid);

    int insert(Comment record);

    //添加评论
    int insertSelective(Comment record);

    List<Comment> selectByExample(CommentExample example);

    Comment selectByPrimaryKey(Integer cid);

    int updateByExampleSelective(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByExample(@Param("record") Comment record, @Param("example") CommentExample example);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
    
    //根据博文编号查询对应评论
    public List<Comment> getCommentsByPid(@Param("pid") Integer pid);
    
  //根据博文ID查询对应的评论
    public List<Comment> getCommentsByPids(@Param("pid") Integer pid);
    
  //根据博文编号查询对应评论,所有一级评论下的评论
    public List<Comment> getCommentsByCid(@Param("pid") Integer pid,@Param("cid") Integer cid);
    
    //根据上机评论ID查询上级评论者昵称
    public Comment getUNameByCid(@Param("csuperiorId") Integer csuperiorId);
    
}