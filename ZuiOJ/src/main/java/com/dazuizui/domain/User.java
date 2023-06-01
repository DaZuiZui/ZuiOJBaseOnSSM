package com.dazuizui.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户实体类
 */
public class User implements Serializable {
    private Long id;
    private String username;
    private String password;
    private String college;
    private String grade;
    private String classname;
    private Date createTime;
    private Integer status;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", college='" + college + '\'' +
                ", grade='" + grade + '\'' +
                ", classname='" + classname + '\'' +
                ", createTime=" + createTime +
                ", status=" + status +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public User(Long id, String username, String password, String college, String grade, String classname, Date createTime, Integer status) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.college = college;
        this.grade = grade;
        this.classname = classname;
        this.createTime = createTime;
        this.status = status;
    }

    public User() {
    }
}
