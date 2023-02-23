package com.xxxx.test;

import com.xxxx.entity.Student;
import com.xxxx.entity.Teacher;
import com.xxxx.entity.User;
import com.xxxx.mapper.StudentMapper;
import com.xxxx.mapper.TeacherMapper;
import com.xxxx.mapper.UserMapper;
import com.xxxx.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

/**
 * 测试能否从数据库拿到数据
 */
public class Test {
    public static void main(String[] args) {
        //获取sqlSession对象
        SqlSession session = GetSqlSession.createSqlSession();
        //得到对应的mapper
        TeacherMapper teacherMapper = session.getMapper(TeacherMapper.class);
        //调用方法，返回用户对象
        Teacher teacher = teacherMapper.queryTeaByName("qjj");
        System.out.println(teacher);
    }
}
