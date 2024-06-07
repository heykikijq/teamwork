package com.example.familyeducationmanager.service.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.familyeducationmanager.common.Constants;
import com.example.familyeducationmanager.common.enums.ResultCodeEnum;
import com.example.familyeducationmanager.common.enums.RoleEnum;
import com.example.familyeducationmanager.entity.User;
import com.example.familyeducationmanager.exception.CustomException;
import com.example.familyeducationmanager.mapper.UserMapper;
import com.example.familyeducationmanager.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
* @author 10437
* @description 针对表【user(家长表)】的数据库操作Service实现
* @createDate 2024-06-07 08:10:55
*/
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService{

    @Resource
    private UserMapper userMapper;


    @Override
    public int addUser(User user) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", user.getUsername());
        User dbUser = userMapper.selectOne(queryWrapper);
        if (ObjectUtil.isNotNull(dbUser)) {
            throw new CustomException(ResultCodeEnum.USER_EXIST_ERROR);
        }
        if (ObjectUtil.isEmpty(user.getPassword())) {
            user.setPassword(Constants.USER_DEFAULT_PASSWORD);
        }
        if (ObjectUtil.isEmpty(user.getName())) {
            user.setName(user.getUsername());
        }
        user.setRole(RoleEnum.USER.name());
        return userMapper.insert(user);
    }

    @Override
    public int deleteById(Integer id) {
        return userMapper.deleteById(id);
    }

    @Override
    public int deleteBatch(List<Integer> ids) {
        return userMapper.deleteBatchIds(ids);
    }

    @Override
    public int saveById(User user) {
        return userMapper.insert(user);
    }

    @Override
    public User findById(Integer id) {
        return userMapper.selectById(id);
    }

    @Override
    public List<User> findAll() {
        return userMapper.selectList(new QueryWrapper<>());
    }

    @Override
    public PageInfo<User> selectPage(User user, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<User> list = userMapper.selectAll(user);
        return PageInfo.of(list);
    }
}




