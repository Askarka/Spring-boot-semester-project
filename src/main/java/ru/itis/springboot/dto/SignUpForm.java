package ru.itis.springboot.dto;

import lombok.Data;

@Data
public class SignUpForm {
    private String email;
    private String password;
    private String name;
    private String surname;
}
