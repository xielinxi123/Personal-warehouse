package com.xxxx.service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Com_delService {

    @WebServlet("/FirstSql")
    public static class FirstSql extends HttpServlet {
        private static String jdbcDriver = "com.mysql.cj.jdbc.Driver";// mysql连接驱动,无需改

        public static String jdbcUrl = "jdbc:mysql://localhost:3306/web_keshe?serverTimezone=UTC&useSSL=false&useUnicode=true/useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&useSSL=true";
        public static String jdbcUser = "root";//数据库用户名
        public static String jdbcPwd = "";//数据库密码
        private static Connection conn;
        public static Statement st;

        static {
            try {
                Class.forName(jdbcDriver);// 加载mysql驱动类
                conn = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPwd);
                // 驱动利用驱动地址，数据库用户名，密码创建连接
                st = conn.createStatement();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        //以上基本是固定格式的


        protected void service(HttpServletRequest request, HttpServletResponse response) //
                throws ServletException, IOException {
            List<Map> list = new ArrayList<Map>();//创建list集合用于存入map的键值对集合

            String idcard_w = request.getParameter("idcard_w");//接收到前台传来的数据
            System.out.println(idcard_w);


            try {
                String sql = "SELECT * FROM tb_soc_com;";

                ResultSet rs = st.executeQuery(sql);
                //从数据库读取的内容，返回一个结果集。
                System.out.println("获取数据");
                while (rs.next()) {
                    String comNumber = rs.getString("comNumber");
                    String comSocName = rs.getString("comSocName");
                    String comCause = rs.getString("comCause");
                    String comIssue = rs.getString("comIssue");
                    String comProof = rs.getString("comProof");
                    String comPerson = rs.getString("comPerson");
                    String comRemark = rs.getString("comRemark");
                    //获取用循环接收数据库的表格信息

                    Map map = new HashMap();
                    map.put("comNumber", comNumber);
                    map.put("comSocName", comSocName);
                    map.put("comCause", comCause);
                    map.put("comIssue", comIssue);
                    map.put("comProof", comProof);
                    map.put("comPerson", comPerson);
                    map.put("comRemark", comRemark);
                    //用键值对存入到map集合中
                    System.out.println(map);
                    list.add(map);//在将map集合对象存入list集合
                    System.out.println("放入集合");
                    for (Map map_1 : list) {
                        System.out.println(map_1);
                    }//在打印台遍历出数据查看是否有错误

                }//遍历结果集
            } catch (Exception e) {
                e.printStackTrace();
            }


            System.out.println("跳转");
            request.setAttribute("key_list", list);//将list集合数据放入到request中共享
            request.getRequestDispatcher("/Com_del.jsp").forward(request, response);
            //跳转到Com_del.jsp页面
        }

    }
}
