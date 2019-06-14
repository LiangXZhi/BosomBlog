package com.bosomblog.dao;

import com.bosomblog.entity.PostType;
import com.bosomblog.entity.PostTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostTypeMapper {
    long countByExample(PostTypeExample example);

    int deleteByExample(PostTypeExample example);

    int deleteByPrimaryKey(Integer ptypeId);

    int insert(PostType record);

    int insertSelective(PostType record);

    List<PostType> selectByExample(PostTypeExample example);

    //根据博文类型编号，查询博文类型名称
    String selectByPrimaryKey(Integer ptypeId);

    int updateByExampleSelective(@Param("record") PostType record, @Param("example") PostTypeExample example);

    int updateByExample(@Param("record") PostType record, @Param("example") PostTypeExample example);

    int updateByPrimaryKeySelective(PostType record);

    int updateByPrimaryKey(PostType record);
    
    //查询所有博文类型
    public List<PostType> selectAll();
    
    
}