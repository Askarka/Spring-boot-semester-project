package ru.itis.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.itis.springboot.dto.EventCreationForm;
import ru.itis.springboot.dto.EventDeletionForm;
import ru.itis.springboot.models.User;
import ru.itis.springboot.repositories.UsersRepository;
import ru.itis.springboot.services.EventService;
import ru.itis.springboot.services.RubricService;

@Controller
public class EventController {

    @Autowired
    private EventService eventService;
    @Autowired
    private RubricService rubricService;

    @GetMapping("/flow")
    public String getFlowPage(Model model) {
        model.addAttribute("eventList", eventService.getAllEvents());
        return "flow_page";
    }


    @GetMapping("/createEvent")
    public String getCreateEventPage(Model model) {
        model.addAttribute("categoryList", rubricService.getAllRubrics());
        return "creating_event_page";
    }

    @PostMapping("/createEvent")
    public String createEvent(EventCreationForm form, BindingResult result) {
        eventService.createEvent(form);
        return "redirect:/flow";
    }

    @GetMapping("/deleteEvent")
    public String getDeleteEventPage() {
        return "event_delete_page";
    }

    @PostMapping("/deleteEvent")
    public String deleteEvent(EventDeletionForm form) {
        eventService.deleteEvent(form);
        return "redirect:/flow";
    }
}
