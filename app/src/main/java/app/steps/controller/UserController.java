package app.steps.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import app.steps.model.User;
import app.steps.service.UserService;

@Controller
@RequestMapping(value = "/")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/")
	public ModelAndView Login(ModelAndView model, HttpServletRequest request) {
		
		model.setViewName("index");
		
		return model;
		
	}
	
	@RequestMapping(value = "/form")
	public ModelAndView user(ModelAndView model, HttpServletRequest request) {
		User user = new User();
		model.addObject("user", user);
		model.setViewName("form");
		
		return model;
		
	}
	
	@RequestMapping(value = "/table")
	public ModelAndView table(ModelAndView model, HttpServletRequest request) {
		try {
			model.addObject("userlist", userService.getAllUsers());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		model.setViewName("table");
		
		return model;
		
	}
	
	
	@RequestMapping(value = "/saveUser")
	public String save(@ModelAttribute User user, BindingResult result, Model model,
			ModelAndView modelview, HttpSession session, HttpServletRequest request) {
		
		
		try {
			if (user.getUser_id() == 0) {

				userService.saveUser(user);;
				System.out.println("Succesfully saved.........");


			} else {

				userService.editUser(user);
				System.out.println("Succesfully Update.........");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	 
		return "redirect:/table";
	}
	
	@RequestMapping(value = "/delete/{userId}", method = RequestMethod.GET)
	public String deleteCity(@PathVariable("userId") int id, Model model, HttpServletRequest request) {

		try {
			
			User user = userService.getUserById(id);
			if (user != null) {
				userService.deleteUser(id);
			}

		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return "redirect:/table";
	}

	// editCity
	@RequestMapping(value = "/editUser/{userId}", method = RequestMethod.GET)
	public ModelAndView editUser(HttpServletRequest request, ModelAndView model, @PathVariable("userId") int id) {

			try {
			User user = userService.getUserById(id);
			model.addObject("user", user);

			model.setViewName("form");
		} catch (Exception e) {
			e.printStackTrace();

			}
		return model;
	}

}
