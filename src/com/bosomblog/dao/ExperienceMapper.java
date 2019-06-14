package com.bosomblog.dao;

import com.bosomblog.entity.Experience;
import com.bosomblog.entity.ExperienceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ExperienceMapper {
    long countByExample(ExperienceExample example);

    int deleteByExample(ExperienceExample example);

    int deleteByPrimaryKey(Integer expId);

    int insert(Experience record);

    int insertSelective(Experience record);

    List<Experience> selectByExample(ExperienceExample example);

    Experience selectByPrimaryKey(Integer expId);

    int updateByExampleSelective(@Param("record") Experience record, @Param("example") ExperienceExample example);

    int updateByExample(@Param("record") Experience record, @Param("example") ExperienceExample example);

    int updateByPrimaryKeySelective(Experience record);

    int updateByPrimaryKey(Experience record);
}