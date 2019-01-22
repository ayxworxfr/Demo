package com.service;


import com.common.ServerResponse;
import com.pojo.User;

public interface IUserService {
    ServerResponse<User> login(String username, String password);
    ServerResponse<String> register(User user);
    ServerResponse<User> getUserInformation(Integer userId);
    ServerResponse<String> forgetGetQuestion(String username);
    ServerResponse<String> checkAnswer(String username, String question, String answer);
    ServerResponse<String> forgetResetPassword(String username, String passwordNew, String forgetToken);
    ServerResponse<String> resetPassword(User user, String passwordOld, String passwordNew);
    ServerResponse<User> updatePersonalInformation(User user);
    ServerResponse checkAdminRole(User user);
}
