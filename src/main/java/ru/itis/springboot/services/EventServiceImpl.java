package ru.itis.springboot.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.itis.springboot.dto.EventCreationForm;
import ru.itis.springboot.dto.EventDeletionForm;
import ru.itis.springboot.dto.EventDto;
import ru.itis.springboot.models.Event;
import ru.itis.springboot.repositories.EventRepository;
import ru.itis.springboot.repositories.RubricRepository;

import java.time.*;
import java.time.ZoneOffset;
import java.util.List;
import java.util.Date;

@Component
public class EventServiceImpl implements EventService {

    @Autowired
    private EventRepository eventRepository;
    @Autowired
    private RubricRepository rubricRepository;

    @Override
    public List<EventDto> getAllEvents() {
        return EventDto.from(eventRepository.findAll());
    }

    @Override
    public void createEvent(EventCreationForm form) {
        Event newEvent = Event.builder()
                            .title(form.getName())
                            .date(new Date(LocalDateTime.parse(form.getDate()).toEpochSecond(ZoneOffset.of("+04:00:00")) * 1000))
                            .address(form.getAddress())
                            .description(form.getDescription())
                            .rubric(rubricRepository.findById(form.getCategory()).get())
                            .build();

        eventRepository.save(newEvent);
    }

    @Override
    public void deleteEvent(EventDeletionForm form) {
        eventRepository.removeByTitle(form.getName());
    }
}
