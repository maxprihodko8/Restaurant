package com.restaurant.model;

import org.springframework.stereotype.Component;

@Component
public class User {

    public String name;
    public String password;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }



}
