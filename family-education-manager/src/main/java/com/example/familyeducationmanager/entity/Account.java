package com.example.familyeducationmanager.entity;

import lombok.Data;

/**
 * 角色用户父类
 */
@Data
public class Account {
    private Integer id;

    private String username;

    private String name;

    private String password;

    private String role;

    private String newPassword;

    private String avatar;

    private String token;

}
