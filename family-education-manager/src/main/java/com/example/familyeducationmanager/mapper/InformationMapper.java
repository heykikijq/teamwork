package com.example.familyeducationmanager.mapper;



import com.example.familyeducationmanager.entity.Information;

import java.util.List;

/**
 * 操作information相关数据接口
*/
public interface InformationMapper {

    /**
      * 新增
    */
    int insert(Information information);

    /**
      * 删除
    */
    int deleteById(Integer id);

    /**
      * 修改
    */
    int updateById(Information information);

    /**
      * 根据ID查询
    */
    Information selectById(Integer id);

    /**
      * 查询所有
    */
    List<Information> selectAll(Information information);

}