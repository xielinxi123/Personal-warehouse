package com.xxxx.service;

import com.xxxx.entity.Teacher;
import com.xxxx.entity.vo.TeaMassageMoudle;
import com.xxxx.mapper.TeacherMapper;
import com.xxxx.util.GetSqlSession;
import com.xxxx.util.StringUtil;
import org.apache.ibatis.session.SqlSession;

public class TeaService {

    /**
     * 教师登录功能
     * @param teaname
     * @param teapassword
     * @return
     */

    public TeaMassageMoudle teaLogin(String teaname , String teapassword){

        //实例化教师消息模型
        TeaMassageMoudle teaMassageMoudle = new TeaMassageMoudle();

        //回显数据
        Teacher tea = new Teacher();
        tea.setTeaName(teaname);
        tea.setTeaPassword(teapassword);
        teaMassageMoudle.setTeaobject(tea);

        //参数非空判断
        if ( StringUtil.isEmpty(teaname) || StringUtil.isEmpty(teapassword)){
            //将状态码、回显数据、提示信息设置到教师消息模型对象中
            teaMassageMoudle.setTeacode(0);
            teaMassageMoudle.setTeamsg("用户姓名密码不能为空！");
            return teaMassageMoudle;
        }

        //调用mapper层的非空判断，通过教师用户名查询教师对象
        SqlSession teasession = GetSqlSession.createSqlSession();
        TeacherMapper teacherMapper = teasession.getMapper(TeacherMapper.class);
        Teacher teacher = teacherMapper.queryTeaByName(teaname);
        System.out.println(teacher);

        //判断用户对象是否为空
        if (teacher == null){
            //将状态码、提示信息、回显数据设置到教师消息模型对象中
            teaMassageMoudle.setTeacode(0);
            teaMassageMoudle.setTeamsg("用户不存在！");
            return teaMassageMoudle;
        }

        //将数据库中的拿过来的数据与从前端接收的数据作比较
        if (!teapassword.equals(teacher.getTeaPassword())){
            //如果不相等，将状态码、提示信息、回显数据设置到教师消息模型对象中
            teaMassageMoudle.setTeacode(0);
            teaMassageMoudle.setTeamsg("密码不正确！");
            return teaMassageMoudle;
        }

        //登录成功，将用户信息设置到教师消息模型中
        teaMassageMoudle.setTeaobject(teacher);

        return teaMassageMoudle;

    }
}
