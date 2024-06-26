package com.example.familyeducationmanager.mapper;


import com.example.familyeducationmanager.entity.Info;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 操作info相关数据接口
*/
@Mapper
public interface InfoMapper {

    /**
      * 新增
    */
    int insert(Info info);

    /**
      * 删除
    */
    int deleteById(Integer id);

    /**
      * 修改
    */
    int updateById(Info info);

    /**
      * 根据ID查询
    */
    Info selectById(Integer id);

    /**
      * 查询所有
    */
    List<Info> selectAll(Info info);

    @Select("select * from info where teacher_id = #{teacherId}")
    Info selectByTeacherId(Integer teacherId);

    @Select("select count(0) from info where type_name = #{name}")
    Integer selectByType(String name);
}