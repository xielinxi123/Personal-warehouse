package com.xxxx.controller;

import com.xxxx.entity.Teacher;
import com.xxxx.entity.vo.TeaMassageMoudle;
import com.xxxx.service.TeaService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/tealogin")
public class TeaServlet extends HttpServlet {

    //实例化TeacherService对象
    private TeaService teaService = new TeaService();

    /**
     * 教师登录功能
     */
    @Override
    protected void service(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {

        //设置接收的请求编码格式
        request.setCharacterEncoding("UTF-8");

        //接受客户端请求（接受教师姓名和密码参数）
        String teaname = request.getParameter("teaname");
        String teapassword = request.getParameter("teapassword");

        //调用service层对象，返回消息模型对象
        TeaMassageMoudle teaMassageMoudle = teaService.teaLogin(teaname,teapassword);

        //判断消息模型的状态码
        if (teaMassageMoudle.getTeacode() == 1){    //成功
            //将用户信息设置到session对象中，重定向到教师个人管理页
            request.getSession().setAttribute("teacher",teaMassageMoudle.getTeaobject());
            response.sendRedirect("teaManage.jsp");
        }else {     //失败
            //将消息模型设置到session中，跳回Log_Tea.jsp页
            request.getSession().setAttribute("teaMassageMoudle",teaMassageMoudle);
            request.getRequestDispatcher("Log_Tea.jsp").forward(request,response);
        }

    }
}
