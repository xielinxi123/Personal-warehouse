package com.xxxx.test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;

public class TestError {

    /**
     * 除0测试.
     *
     * @param args
     */
    public static void main(String[] args) {
        try {
            int a = 10, b = 0;
            int c = a / b;
            System.out.println(c);
        } catch (Exception e) {
            System.out.println(e.getStackTrace());// 这么写是不能打印出详细错误信息的
            System.out.println(e.getMessage());// 这么写只能知道出了什么错，也不能打印出详细错误信息的
            System.out.println(getExceptionDetail(e));//这个可以
            System.out.println(getThrowableDetail(e));//这个可以
        } catch (Error e) {
            System.out.println(getExceptionDetail(e));
        }

    }

    /**
     * 获取异常详细信息，知道出了什么错，错在哪个类的第几行 .
     *
     * @param ex
     * @return
     */
    public static String getExceptionDetail(Exception ex) {
        String ret = null;
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            PrintStream pout = new PrintStream(out);
            ex.printStackTrace(pout);
            ret = new String(out.toByteArray());
            pout.close();
            out.close();
        } catch (Exception e) {
        }
        return ret;
    }

    /**
     * 获取异常详细信息，知道出了什么错，错在哪个类的第几行 .
     *
     * @param ex
     * @return
     */
    public static String getExceptionDetail(Error ex) {
        String ret = null;
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            PrintStream pout = new PrintStream(out);
            ex.printStackTrace(pout);
            ret = new String(out.toByteArray());
            pout.close();
            out.close();
        } catch (Exception e) {
        }
        return ret;
    }

    /**
     * 获取异常详细信息，知道出了什么错，错在哪个类的第几行 .
     *
     * @param
     * @return
     */
    public static String getThrowableDetail(Throwable ex) {
        StringWriter sw = new StringWriter();
        try {
            PrintWriter pw = new PrintWriter(sw, true);
            ex.printStackTrace(pw);
            pw.flush();
            sw.flush();
        } catch (Exception e) {

        }
        return sw.toString();
    }
}