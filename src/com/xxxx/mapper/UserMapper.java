package com.xxxx.mapper;

import com.xxxx.entity.User;

/**
 * User接口类
 */
public interface UserMapper {
    public User queryUserByName(String userName);
}
