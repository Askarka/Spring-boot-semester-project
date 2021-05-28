package ru.itis.springboot.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import ru.itis.springboot.models.Rubric;

import java.util.List;
import java.util.stream.Collectors;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class RubricDto {
    private Long id;
    private String name;

    public static RubricDto from(Rubric rubric) {
        return RubricDto.builder()
                .id(rubric.getId())
                .name(rubric.getName())
                .build();
    }

    public static List<RubricDto> from(List<Rubric> rubrics) {
        return rubrics.stream()
                .map(RubricDto::from)
                .collect(Collectors.toList());
    }
}
