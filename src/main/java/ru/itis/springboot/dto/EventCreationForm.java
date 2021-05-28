package ru.itis.springboot.dto;

import lombok.Data;
import ru.itis.springboot.models.Rubric;

@Data
public class EventCreationForm {
    private String name;
    private String date;
    private String address;
    private String description;
    private Long category;
}
