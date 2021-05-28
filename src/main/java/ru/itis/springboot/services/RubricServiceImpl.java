package ru.itis.springboot.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.itis.springboot.dto.EventDto;
import ru.itis.springboot.dto.RubricDto;
import ru.itis.springboot.repositories.EventRepository;
import ru.itis.springboot.repositories.RubricRepository;

import java.util.List;

@Component
public class RubricServiceImpl implements RubricService {
    @Autowired
    private RubricRepository rubricRepository;

    @Override
    public List<RubricDto> getAllRubrics() {
        return RubricDto.from(rubricRepository.findAll());
    }
}
