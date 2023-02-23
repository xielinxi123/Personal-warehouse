package com.xxxx.entity.vo;

/**
 * 学生消息模型对象（与用户消息模型对象相同）
 */
public class StuMassageMoudle {

    private Integer stucode = 1;    //学生状态码
    private String stumsg = "成功！";//学生提示信息
    private Object stuobject;       //学生回显数据

    public Integer getStucode() {
        return stucode;
    }

    public void setStucode(Integer stucode) {
        this.stucode = stucode;
    }

    public String getStumsg() {
        return stumsg;
    }

    public void setStumsg(String stumsg) {
        this.stumsg = stumsg;
    }

    public Object getStuobject() {
        return stuobject;
    }

    public void setStuobject(Object stuobject) {
        this.stuobject = stuobject;
    }
}
