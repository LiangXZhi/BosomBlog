package com.bosomblog.dao;

import com.bosomblog.entity.Suggest;
import com.bosomblog.entity.SuggestExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SuggestMapper {
    long countByExample(SuggestExample example);

    int deleteByExample(SuggestExample example);

    int deleteByPrimaryKey(Integer sid);

    int insert(Suggest record);

    int insertSelective(Suggest record);

    List<Suggest> selectByExample(SuggestExample example);

    Suggest selectByPrimaryKey(Integer sid);

    int updateByExampleSelective(@Param("record") Suggest record, @Param("example") SuggestExample example);

    int updateByExample(@Param("record") Suggest record, @Param("example") SuggestExample example);

    int updateByPrimaryKeySelective(Suggest record);

    int updateByPrimaryKey(Suggest record);
}