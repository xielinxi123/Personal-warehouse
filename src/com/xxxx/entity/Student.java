package com.xxxx.entity;

import java.util.Date;

/**
 * Student实体类
 */
public class Student {
    private Integer stuId;      //学生帐号
    private Integer stuNumber;  //学生学号
    private String stuName;     //学生姓名
    private String stuPassword; //学生密码
    private String stuEmail;    //学生邮箱
    private Integer stuPhone;   //学生电话号码
    private Date stuBirthDay;   //学生生日

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public Integer getStuNumber() {
        return stuNumber;
    }

    public void setStuNumber(Integer stuNumber) {
        this.stuNumber = stuNumber;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuPassword() {
        return stuPassword;
    }

    public void setStuPassword(String stuPassword) {
        this.stuPassword = stuPassword;
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }

    public Integer getStuPhone() {
        return stuPhone;
    }

    public void setStuPhone(Integer stuPhone) {
        this.stuPhone = stuPhone;
    }

    public Date getStuBirthDay() {
        return stuBirthDay;
    }

    public void setStuBirthDay(Date stuBirthDay) {
        this.stuBirthDay = stuBirthDay;
    }
}
