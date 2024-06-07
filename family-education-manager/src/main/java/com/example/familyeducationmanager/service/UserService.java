package com.example.familyeducationmanager.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.familyeducationmanager.entity.User;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
* @author 10437
* @description 针对表【user(家长表)】的数据库操作Service
* @createDate 2024-06-07 08:10:55
*/
public interface UserService extends IService<User> {

    public int addUser(User user);

    public int deleteById(Integer id);

    public int deleteBatch(List<Integer> ids);

    public int saveById(User user);

    public User findById(Integer id);

    public List<User> findAll();

    public PageInfo<User> selectPage(User user, Integer pageNum, Integer pageSize);
}
