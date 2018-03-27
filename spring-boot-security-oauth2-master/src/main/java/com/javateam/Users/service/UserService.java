package com.javateam.Users.service;

import com.javateam.Users.model.User;

import java.util.List;

public interface UserService {

    User save(User user);
    List<User> findAll();
    void delete(long id);
}
