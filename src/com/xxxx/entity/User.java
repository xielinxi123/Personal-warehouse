package com.xxxx.entity;

import org.omg.CORBA.INTERNAL;

/**
 * User实体类
 */
public class User {
    private Integer userId;     // 用户编号
    private String userName;    // 用户名称
    private String userPassword;// 用户密码
    private Integer userAge;    // 用户年龄

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public Integer getUserAge() {
        return userAge;
    }

    public void setUserAge(Integer userAge) {
        this.userAge = userAge;
    }
}
