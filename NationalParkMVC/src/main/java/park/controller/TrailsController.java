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

import park.dao.TrailsDAO; 
import park.pojos.Trail; 

@Controller
public class TrailsController { 
    // get by id
    @GetMapping("/trails/{id}") 
    public ModelAndView ModelAndView(@PathVariable int id) throws SQLException {
        ModelAndView mav = new ModelAndView("SingleTrail"); 
        mav.addObject("trail", TrailsDAO.getTrailById(id)); 
        return mav;
    }

    // get all
    @GetMapping("/trails/all") // Updated path
    public ModelAndView all() throws SQLException {
        ModelAndView mav = new ModelAndView("allTrails"); 
        mav.addObject("trail", TrailsDAO.all()); 
        return mav;
    }

    // delete
    @GetMapping("/trails/delete/{id}") 
    public ModelAndView delete(@PathVariable int id) throws SQLException {
        TrailsDAO.deleteById(id); 
        return new ModelAndView("redirect:/trails/all"); 
    }

    // create
    @GetMapping("/trails/create") 
    public ModelAndView addTrail(Model model) {
        model.addAttribute("trail", new Trail()); 
        return new ModelAndView("createTrail", "model", model); 
    }

    @PostMapping("/trails/create") 
    public ModelAndView createForReal(@ModelAttribute Trail t, ModelMap m, BindingResult bs) throws SQLException { // Updated class name
        TrailsDAO.create(t); 
        return new ModelAndView("redirect:/trails/all"); 
    }

    // edit
    @GetMapping("/trails/edit/{id}") 
    public ModelAndView productEditGet(Model model, @PathVariable int id) throws SQLException {
        Trail t = TrailsDAO.getTrailById(id); 
        model.addAttribute("trail", t); 
        return new ModelAndView("editTrail", "model", model); 
    }

    @PostMapping("/trails/edit") 
    public ModelAndView productEditSave(@ModelAttribute("trail") Trail t, ModelMap model, BindingResult result) { // Updated class name
        try {
            TrailsDAO.editTrail(t); 
        } catch (Exception e) {
            e.printStackTrace();
        }

        return new ModelAndView("redirect:/trails/all"); 
    }
}
