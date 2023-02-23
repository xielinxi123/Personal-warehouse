package com.xxxx.controller;

import com.xxxx.entity.vo.StuMassageMoudle;
import com.xxxx.service.StuService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/stulogin")
public class StuServlet extends HttpServlet {

    //实例化StudentService对象
    private StuService studentService = new StuService();

    /**
     * 学生登录功能
     */
    @Override
    protected void service(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException{

        //设置接收的请求编码格式
        request.setCharacterEncoding("Utf-8");

        //接收客户端的请求（接收参数，学生用户名和学生密码）
        String stuname = request.getParameter("stuname");
        String stupassword = request.getParameter("stupassword");

        //调用service层对象，返回消息模型对象
        StuMassageMoudle stuMassageMoudle = studentService.stuLogin(stuname,stupassword);

        //判断消息模型的状态码
        if (stuMassageMoudle.getStucode() == 1){    //成功
            //将用户信息存到session中，重定向到学生个人信息管理页
            request.getSession().setAttribute("student",stuMassageMoudle.getStuobject());
            response.sendRedirect("stuManage.jsp");
        }else {     //失败
            //将消息模型设置到session中，跳转回Log_Stu.jsp登录页
            request.setAttribute("stuMassageMoudle",stuMassageMoudle);
            request.getRequestDispatcher("Log_Stu.jsp").forward(request,response);
        }
    }
}
