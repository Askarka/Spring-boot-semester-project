package ru.itis.springboot.services;

import ru.itis.springboot.dto.SignUpForm;
import ru.itis.springboot.dto.UserForm;

public interface SingUpService {
    void SignUp(SignUpForm form);
}
