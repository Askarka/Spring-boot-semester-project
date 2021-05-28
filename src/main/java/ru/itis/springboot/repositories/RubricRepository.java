package ru.itis.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import ru.itis.springboot.models.Rubric;

@Component
public interface RubricRepository extends JpaRepository<Rubric, Long> {
}
