package controller;

import javax.validation.Valid;

import model.Person;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.PersonService;

@Controller
@RequestMapping(value = "/register")
public class RegisterController {

	private String registerForm = "register";
	private String diaryListPage = "diary_list";
	@Autowired
	private PersonService service;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setDisallowedFields("id");
	}

	@RequestMapping("")
	public String showPage(Model model) {
		Person p = new Person();
		p.setName("sakop");
		p.setEmail("a@b.com");
		p.setPassword("123");
		model.addAttribute(p);
		return registerForm;
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String register(@Valid @ModelAttribute("person") Person person,
			BindingResult result) {
		System.out.println(person);
		if (!person.getPassword().equals(person.getConfirmPassword())) {
			result.rejectValue("password", "password.notSame");
			result.rejectValue("confirmPassword", "password.notSame");
			return registerForm;
		}
		if (result.getAllErrors().size() > 0) {
			return registerForm;
		} else {
			int newId = service.createUser(person);
			System.out.println(newId);
			return diaryListPage;
		}

	}

}
