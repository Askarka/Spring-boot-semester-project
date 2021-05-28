package ru.itis.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import ru.itis.springboot.models.User;

import java.util.Optional;

@Component
public interface UsersRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);
}
