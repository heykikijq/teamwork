package com.example.familyeducationmanager.mapper;

import com.example.familyeducationmanager.entity.Publish;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 操作publish相关数据接口
*/
@Mapper
public interface PublishMapper {

    /**
      * 新增
    */
    int insert(Publish publish);

    /**
      * 删除
    */
    int deleteById(Integer id);

    /**
      * 修改
    */
    int updateById(Publish publish);

    /**
      * 根据ID查询
    */
    Publish selectById(Integer id);

    /**
      * 查询所有
    */
    List<Publish> selectAll(Publish publish);

}
