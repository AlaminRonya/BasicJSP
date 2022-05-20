package com.alamin.models;

import java.io.Serializable;

public class Employee implements Serializable {
    private String name;
    private String email;
    private String img;

    public Employee() {
    }

    public Employee(String name, String email, String img) {
        this.name = name;
        this.email = email;
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
