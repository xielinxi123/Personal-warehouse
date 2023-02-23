package com.xxxx.entity.vo;

/**
 * 教师消息模型对象
 */

public class TeaMassageMoudle {

    private Integer teacode = 1;    //教师状态码
    private String teamsg = "成功！";//教师提示信息
    private Object teaobject;       //教师回显数据

    public Integer getTeacode() {
        return teacode;
    }

    public void setTeacode(Integer teacode) {
        this.teacode = teacode;
    }

    public String getTeamsg() {
        return teamsg;
    }

    public void setTeamsg(String teamsg) {
        this.teamsg = teamsg;
    }

    public Object getTeaobject() {
        return teaobject;
    }

    public void setTeaobject(Object teaobject) {
        this.teaobject = teaobject;
    }
}
