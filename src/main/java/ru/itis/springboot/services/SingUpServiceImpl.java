package ru.itis.springboot.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import ru.itis.springboot.dto.SignUpForm;
import ru.itis.springboot.dto.UserForm;
import ru.itis.springboot.models.User;
import ru.itis.springboot.repositories.UsersRepository;

@Component
public class SingUpServiceImpl implements SingUpService {

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void SignUp(SignUpForm form) {
        User newUser = User.builder()
                .email(form.getEmail())
                .hashPassword(passwordEncoder.encode(form.getPassword()))
                .role(User.Role.USER)
                .state(User.State.ACTIVE)
                .name(form.getName())
                .surname(form.getSurname())
                .build();

        usersRepository.save(newUser);
    }
}
