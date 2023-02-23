package com.xxxx.controller;

import com.xxxx.entity.vo.MassageMoudle;
import com.xxxx.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class UserServlet extends HttpServlet {

    //实例化UserService对象
    private UserService userService = new UserService();

    /**
     * 用户登录功能
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //设置接收的请求编码格式
        request.setCharacterEncoding("Utf-8");

        //接受客户端的请求（接受参数：用户名和密码）
        String username = request.getParameter("username");
        String userpassword = request.getParameter("userpassword");

        //调用service层的方法，返回消息模型对象
        MassageMoudle massageMoudle = userService.userLogin(username,userpassword);

        //判断消息模型的状态码
        if(massageMoudle.getCode() == 1){   //成功
            //将用户信息存到session中，重定向到首页
            request.getSession().setAttribute("user",massageMoudle.getObject());
            response.sendRedirect("BM_first.jsp");
        } else {    //失败
            //将消息模型对象存到request中，跳转到Log_Manage.jsp
            request.setAttribute("massageMoudle",massageMoudle);
            request.getRequestDispatcher("Log_Manage.jsp").forward(request,response);
        }
    }
}
