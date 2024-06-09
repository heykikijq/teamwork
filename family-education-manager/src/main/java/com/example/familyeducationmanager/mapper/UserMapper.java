package com.example.familyeducationmanager.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.familyeducationmanager.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
* @author 10437
* @createDate 2024-06-07 08:10:55
* @Entity generator.domain.User
*/
@Mapper
public interface UserMapper extends BaseMapper<User> {

    /**
     * 查询所有
     */
    List<User> selectAll(User user);
}




