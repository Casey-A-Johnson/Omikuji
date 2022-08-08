package com.caseyjohnson.omikuliform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController {
	@GetMapping("/home")
	public String setCount(HttpSession session) {
		if(session.getAttribute("count")== null) {
			session.setAttribute("count", 0);
		}
		Integer tempCount = (Integer)session.getAttribute("count");
		tempCount++;
		session.setAttribute("count", tempCount);
		return "demo.jsp";
	}
	
	@GetMapping("/getcount")
	public String getCount() {
		return "getcount.jsp";
	}
	
//====================Search form(Get method)========================================
	
	@GetMapping ("/searchForm")
	public String searchForm() {
		return "searchForm/searchForm.jsp";
	}
	
//	localhost8080;/search?keyword= whateveryoutyped
	
	@GetMapping("/search")
	public String displayform(@RequestParam("keyword")String keyword, Model model) {
		model.addAttribute("keyword", keyword);
		return "searchForm/displayForm.jsp";
	}
	
	//======Review Form (Post Method)====================
	
	//Render Form
	@GetMapping("reviewform")
	public String reviewForm() {
		return "reviewForm/reviewForm.jsp";
	}
	
	//Process From
	//post: localhost:8080/process
	@PostMapping("/process")
//	@RequestMapping(value="/process, method= RequestMethod.POST) other way to use it
	public String processReviewForm(@RequestParam("product") String product,@RequestParam("comments") String comments, @RequestParam("rating")Integer rating, HttpSession session) {
		// process the information
		session.setAttribute("product", product);
		session.setAttribute("comments", comments);
		session.setAttribute("rating", rating);
		return "redirect:/displayreview";
	}
	
	@GetMapping("/displayreview")
	public String displayReview() {
		return "reviewForm/reviewFormDisplay.jsp";
	}
	
}
