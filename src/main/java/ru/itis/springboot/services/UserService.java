package ru.itis.springboot.services;

import ru.itis.springboot.dto.EventDto;
import ru.itis.springboot.dto.UserDto;

import java.util.List;

public interface UserService {
    List<UserDto> getAllUsers();
}
