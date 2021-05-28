package ru.itis.springboot.models;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Table(name = "Event")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private java.util.Date date;
    private String address;
    private String description;

    @ManyToMany
    @JoinTable(name = "event_music",
            joinColumns = {@JoinColumn(name = "event_id", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "music_id", referencedColumnName = "id")})
    private List<Music> playlist;

    @ManyToMany
    @JoinTable(name = "event_user",
            joinColumns = {@JoinColumn(name = "event_id", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "user_id", referencedColumnName = "id")})
    private List<User> guests;

    @ManyToOne
    @JoinColumn(name = "rubric_id")
    private Rubric rubric;
}
