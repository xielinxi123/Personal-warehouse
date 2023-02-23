package com.xxxx.service;

import com.xxxx.entity.User;
import com.xxxx.entity.vo.MassageMoudle;
import com.xxxx.mapper.UserMapper;
import com.xxxx.util.GetSqlSession;
import com.xxxx.util.StringUtil;
import org.apache.ibatis.session.SqlSession;

/**
 * 业务逻辑
 */

public class  UserService {
    /**
     * 用户登录功能
     * @param username
     * @param userpassword
     * @return
     */
    public MassageMoudle userLogin(String username, String userpassword) {
        MassageMoudle massageMoudle = new MassageMoudle();

        //回显数据
        User u = new User();
        u.setUserName(username);
        u.setUserPassword(userpassword);
        massageMoudle.setObject(u);

        //参数的非空判断
        if(StringUtil.isEmpty(username) || StringUtil.isEmpty(userpassword)){
            //将状态码、提示信息、回显数据设置到消息模型对象中
            massageMoudle.setCode(0);
            massageMoudle.setMsg("用户姓名和密码不能为空！");
            return massageMoudle;
        }

        //调用mapper层的查询方法，通过用户名查询用户对象
        SqlSession session = GetSqlSession.createSqlSession();
        UserMapper userMapper = session.getMapper(UserMapper.class);
        User user = userMapper.queryUserByName(username);

        //判断用户对象是否为空
        if (user == null){
            //将状态码、提示信息、回显数据设置到消息模型对象中
            massageMoudle.setCode(0);
            massageMoudle.setMsg("用户不存在！");
            return massageMoudle;
        }

        //将数据库中查询到的用户密码与前端传递过来的密码作比较
        if (!userpassword.equals(user.getUserPassword())){
            //如果不相等，将状态码、提示信息、回显数据设置到消息模型对象中
            massageMoudle.setCode(0);
            massageMoudle.setMsg("用户密码不正确！");
            return massageMoudle;
        }
        //登录成功，将用户信息设置到消息模型中
        massageMoudle.setObject(user);

        return massageMoudle;
    }
}
