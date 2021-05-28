package ru.itis.springboot.services;

import ru.itis.springboot.dto.RubricDto;

import java.util.List;

public interface RubricService {
    List<RubricDto> getAllRubrics();
//    void createRubric();
}
