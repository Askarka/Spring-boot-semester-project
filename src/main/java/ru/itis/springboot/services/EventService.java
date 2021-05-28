package ru.itis.springboot.services;

import ru.itis.springboot.dto.EventCreationForm;
import ru.itis.springboot.dto.EventDeletionForm;
import ru.itis.springboot.dto.EventDto;

import java.util.List;

public interface EventService {
    List<EventDto> getAllEvents();
    void createEvent(EventCreationForm form);
    void deleteEvent(EventDeletionForm form);
}
