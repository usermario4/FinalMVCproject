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

import park.dao.HikersDAO;
import park.pojos.Hiker;


@Controller
public class HikersController {
	//get by id
			@GetMapping("/hikers/{id}")
			public ModelAndView ModelAndView(@PathVariable int id) throws SQLException {
				ModelAndView mav=new ModelAndView("SingleHiker");
						mav.addObject("hiker",HikersDAO.getHikerById(id));
				return mav;
			}
			
			//get all 
			
			@GetMapping("/hikers/all")
			public ModelAndView all() throws SQLException {
				ModelAndView mav=new ModelAndView("allHikers");
				mav.addObject("hiker",HikersDAO.all());
				return mav;
			}
			//delete
			
			@GetMapping("/hikers/delete/{id}")
			public ModelAndView delete(@PathVariable int id) throws SQLException {
				HikersDAO.deleteById(id);
				return new ModelAndView("redirect:/hikers/all");
			}
			
			//create
			@GetMapping("/hikers/create")
			public ModelAndView addHiker(Model model) {
				model.addAttribute("hiker", new Hiker());
				return new ModelAndView("createHiker", "model", model);
			}
			
			@PostMapping("/hikers/create")
			public ModelAndView createForReal(@ModelAttribute Hiker h, ModelMap m, BindingResult bs) throws SQLException {
			HikersDAO.create(h);
			return new ModelAndView("redirect:/hikers/all");
			}
			
			//edit
			@GetMapping("/hikers/edit/{id}")
			public ModelAndView productEditGet(Model model,@PathVariable int id) throws SQLException {
				
				Hiker h=HikersDAO.getHikerById(id);
				model.addAttribute("hiker",h);
				return new ModelAndView("editHiker","model",model);
				
			}
			
			@PostMapping({"/hikers/edit"})
			   public ModelAndView productEditSave(@ModelAttribute("hiker") Hiker h, ModelMap model, BindingResult result) {
			      try {
			         HikersDAO.editHiker(h);
			      } catch (Exception var5) {
			         var5.printStackTrace();
			      }

			      return new ModelAndView("redirect:/hikers/all");
			   }

}
