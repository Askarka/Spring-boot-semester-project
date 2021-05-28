package ru.itis.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.itis.springboot.dto.SignUpForm;
import ru.itis.springboot.dto.UserForm;
import ru.itis.springboot.services.SingUpService;

import javax.annotation.security.PermitAll;

@Controller
public class SignUpController {
    @Autowired
    private SingUpService signUpService;
//
//    @PermitAll
    @GetMapping("/signUp")
    public String getSignUpPage() {
        return "sign_up_page";
    }

//    @PermitAll
    @PostMapping("/signUp")
    public String signUp(SignUpForm form) {
        signUpService.SignUp(form);
        return "redirect:/signIn";
    }

}
