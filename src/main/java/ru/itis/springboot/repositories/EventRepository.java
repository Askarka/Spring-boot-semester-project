package ru.itis.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import ru.itis.springboot.models.Event;

import java.util.Optional;

@Component
public interface EventRepository extends JpaRepository<Event, Long> {
    void removeByTitle(String title);
}
