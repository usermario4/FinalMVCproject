package park.controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import park.dao.EventsDAO;
import park.pojos.Event;

@Controller
public class EventsController {

    // Get event by ID
    @GetMapping("/events/{id}")
    public ModelAndView getEventById(@PathVariable int id) throws SQLException {
        ModelAndView mav = new ModelAndView("SingleEvent");
        mav.addObject("event", EventsDAO.getEventById(id));
        return mav;
    }

    // Get all events
    @GetMapping("/events/all")
    public ModelAndView allEvents() throws SQLException {
        ModelAndView mav = new ModelAndView("allEvents");
        mav.addObject("event", EventsDAO.getAllEvents());
        return mav;
    }

    // Delete event
    @GetMapping("/events/delete/{id}")
    public ModelAndView deleteEvent(@PathVariable int id) throws SQLException {
        EventsDAO.deleteEventById(id);
        return new ModelAndView("redirect:/events/all");
    }

    // Create event
    @GetMapping("/events/create")
    public ModelAndView addEvent(Model model) {
        model.addAttribute("event", new Event());
        return new ModelAndView("createEvent", "model", model);
    }

    @PostMapping("/events/create")
    public ModelAndView createEventForReal(@ModelAttribute Event event, ModelMap model, BindingResult bs)
            throws SQLException {
        EventsDAO.createEvent(event);
        return new ModelAndView("redirect:/events/all");
    }

    // Edit event
    @GetMapping("/events/edit/{id}")
    public ModelAndView eventEditGet(Model model, @PathVariable int id) throws SQLException {
        Event event = EventsDAO.getEventById(id);
        model.addAttribute("event", event);
        return new ModelAndView("editEvent", "model", model);
    }

    @PostMapping("/events/edit")
    public ModelAndView eventEditSave(@ModelAttribute("event") Event event, ModelMap model, BindingResult result)
            throws SQLException {
        try {
            EventsDAO.editEvent(event);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return new ModelAndView("redirect:/events/all");
    }
}
