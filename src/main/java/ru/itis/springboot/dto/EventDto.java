package ru.itis.springboot.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import ru.itis.springboot.models.Event;

import java.util.List;
import java.util.stream.Collectors;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class EventDto {
    private Long id;
    private String title;
    private java.util.Date date;
    private String address;
    private String description;
    private String rubric;

    public static EventDto from(Event event) {
        return EventDto.builder()
                .id(event.getId())
                .title(event.getTitle())
                .date(event.getDate())
                .address(event.getAddress())
                .description(event.getDescription())
                .rubric(event.getRubric().getName())
                .build();
    }

    public static List<EventDto> from(List<Event> events) {
        return events.stream()
                .map(EventDto::from)
                .collect(Collectors.toList());
    }
}
