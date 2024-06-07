package com.example.familyeducationmanager.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.familyeducationmanager.entity.User;

import java.util.List;

/**
* @author 10437
* @createDate 2024-06-07 08:10:55
* @Entity generator.domain.User
*/
public interface UserMapper extends BaseMapper<User> {

    /**
     * 查询所有
     */
    List<User> selectAll(User user);
}




