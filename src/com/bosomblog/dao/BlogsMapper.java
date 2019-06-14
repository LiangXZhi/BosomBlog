package com.bosomblog.dao;

import com.bosomblog.entity.Blogs;
import com.bosomblog.entity.BlogsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogsMapper {
    long countByExample(BlogsExample example);

    int deleteByExample(BlogsExample example);

    int deleteByPrimaryKey(Integer bid);

    int insert(Blogs record);

    int insertSelective(Blogs record);

    List<Blogs> selectByExample(BlogsExample example);

    Blogs selectByPrimaryKey(Integer bid);

    int updateByExampleSelective(@Param("record") Blogs record, @Param("example") BlogsExample example);

    int updateByExample(@Param("record") Blogs record, @Param("example") BlogsExample example);

    int updateByPrimaryKeySelective(Blogs record);

    int updateByPrimaryKey(Blogs record);
}