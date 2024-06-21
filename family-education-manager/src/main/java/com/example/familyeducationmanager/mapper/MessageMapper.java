package com.example.familyeducationmanager.mapper;


import com.example.familyeducationmanager.entity.Message;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 操作message相关数据接口
*/
@Mapper
public interface MessageMapper {

    /**
      * 新增
    */
    int insert(Message message);

    /**
      * 删除
    */
    int deleteById(Integer id);

    /**
      * 修改
    */
    int updateById(Message message);

    /**
      * 根据ID查询
    */
    Message selectById(Integer id);

    /**
      * 查询所有
    */
    List<Message> selectAll(Message message);

}