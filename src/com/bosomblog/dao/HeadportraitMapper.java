package com.bosomblog.dao;

import com.bosomblog.entity.Headportrait;
import com.bosomblog.entity.HeadportraitExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HeadportraitMapper {
    long countByExample(HeadportraitExample example);

    int deleteByExample(HeadportraitExample example);

    int deleteByPrimaryKey(Integer picId);

    int insert(Headportrait record);

    int insertSelective(Headportrait record);

    List<Headportrait> selectByExample(HeadportraitExample example);

    Headportrait selectByPrimaryKey(Integer picId);

    int updateByExampleSelective(@Param("record") Headportrait record, @Param("example") HeadportraitExample example);

    int updateByExample(@Param("record") Headportrait record, @Param("example") HeadportraitExample example);

    int updateByPrimaryKeySelective(Headportrait record);

    int updateByPrimaryKey(Headportrait record);
}