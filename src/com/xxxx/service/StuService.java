package com.xxxx.service;

import com.xxxx.entity.Student;
import com.xxxx.entity.vo.StuMassageMoudle;
import com.xxxx.mapper.StudentMapper;
import com.xxxx.util.GetSqlSession;
import com.xxxx.util.StringUtil;
import org.apache.ibatis.session.SqlSession;

public class StuService {

    /**
     * 学生登录功能
     * @param stuname
     * @param stupassword
     * @return
     */

    public StuMassageMoudle stuLogin(String stuname , String stupassword) {

        StuMassageMoudle stuMassageMoudle = new StuMassageMoudle();

        //回显数据
        Student stu = new Student();
        stu.setStuName(stuname);
        stu.setStuPassword(stupassword);
        stuMassageMoudle.setStuobject(stu);

        //参数的非空判断
        if (StringUtil.isEmpty(stuname) || StringUtil.isEmpty(stupassword)){
            //将状态码、提示信息、回显数据设置到学生消息模型对象中
            stuMassageMoudle.setStucode(0);
            stuMassageMoudle.setStumsg("用户姓名和密码不能为空！");
            return stuMassageMoudle;
        }

        //调用mapper层的非空判断，通过学生用户名查询学生对象
        SqlSession stusession = GetSqlSession.createSqlSession();
        StudentMapper studentMapper = stusession.getMapper(StudentMapper.class);
        Student student = studentMapper.queryStuByName(stuname);

        //判断用户对象是否为空
        if (student == null){
            //将状态码、提示信息、回显数据设置到学生消息模型对象中
            stuMassageMoudle.setStucode(0);
            stuMassageMoudle.setStumsg("用户不存在！");
            return stuMassageMoudle;
        }

        //将数据库中的数据与从前端拿到的密码作比较
        if (!stupassword.equals(student.getStuPassword())){
            //如果不相等，将状态码、提示信息、回显数据设置到学生消息模型对象中
            stuMassageMoudle.setStucode(0);
            stuMassageMoudle.setStumsg("用户密码不正确！");
            return stuMassageMoudle;
        }

        //登录成功，将用户信息设置到学生消息模型中
        stuMassageMoudle.setStuobject(student);

        return stuMassageMoudle;
    }
}
