package com.xxxx.entity;

import java.util.Date;

/**
 * 教师实体类
 */

public class Teacher {

    private Integer teaId;      //教师帐号
    private Integer teaNumber;  //教师工号
    private String teaName;     //教师姓名
    private String teaPassword; //教师密码
    private String teaEmail;    //教师邮箱
    private Integer teaPhone;   //教师电话号码
    private Date teaBirthDay;   //教师生日

    public Integer getTeaId() {
        return teaId;
    }

    public void setTeaId(Integer teaId) {
        this.teaId = teaId;
    }

    public Integer getTeaNumber() {
        return teaNumber;
    }

    public void setTeaNumber(Integer teaNumber) {
        this.teaNumber = teaNumber;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    public String getTeaPassword() {
        return teaPassword;
    }

    public void setTeaPassword(String teaPassword) {
        this.teaPassword = teaPassword;
    }

    public String getTeaEmail() {
        return teaEmail;
    }

    public void setTeaEmail(String teaEmail) {
        this.teaEmail = teaEmail;
    }

    public Integer getTeaPhone() {
        return teaPhone;
    }

    public void setTeaPhone(Integer teaPhone) {
        this.teaPhone = teaPhone;
    }

    public Date getTeaBirthDay() {
        return teaBirthDay;
    }

    public void setTeaBirthDay(Date teaBirthDay) {
        this.teaBirthDay = teaBirthDay;
    }
}
