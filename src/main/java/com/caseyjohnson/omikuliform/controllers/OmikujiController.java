package com.caseyjohnson.omikuliform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class OmikujiController {
	
	@GetMapping("/omikuji")
	//Render Form
	public String omihujiForm() {
		return "omikujiForm/form.jsp";
	}
	
//	// Process Form
	@PostMapping("/processform")
	public String processForm(
			@RequestParam("number")Integer number,
			@RequestParam("city") String city,
			@RequestParam("person") String person,
			@RequestParam("hobby") String hobby,
			@RequestParam("thing") String thing,
			@RequestParam("comment") String comment,
			HttpSession session
			) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("comment", comment);
		return "redirect:/displayinfo";
	}
	
	@GetMapping("/displayinfo")
	public String displayForm() {
		return "omikujiForm/displayInfo.jsp";
	}
}
