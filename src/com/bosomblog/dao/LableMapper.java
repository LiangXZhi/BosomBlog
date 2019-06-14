package com.bosomblog.dao;

import com.bosomblog.entity.Lable;
import com.bosomblog.entity.LableExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface LableMapper {
    long countByExample(LableExample example);

    int deleteByExample(LableExample example);

    int deleteByPrimaryKey(Integer lableid);

    int insert(Lable record);

    int insertSelective(Lable record);

    List<Lable> selectByExample(LableExample example);

    Lable selectByPrimaryKey(Integer lableid);

    int updateByExampleSelective(@Param("record") Lable record, @Param("example") LableExample example);

    int updateByExample(@Param("record") Lable record, @Param("example") LableExample example);

    int updateByPrimaryKeySelective(Lable record);

    int updateByPrimaryKey(Lable record);
    
    public List<String> getLableName();

}