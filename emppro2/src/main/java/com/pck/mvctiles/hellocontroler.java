package com.pck.mvctiles;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pck.bean.Contact;
import com.pck.bean.Search;
import com.pck.bean.Signin;

@Controller
public class hellocontroler {

	@RequestMapping("/")
	public String helloworld(Search s, Model m) {
		m.addAttribute("Search", new Search());
		m.addAttribute("signindata", new Signin());
		return "hello";
	}

	@RequestMapping("/signin")
	public String signin(@ModelAttribute("signindata") Signin s, Model model) {
		model.addAttribute("command", new Contact());
		if (s.getEmail().equals("admin") && s.getPassword().equals("admin")) {
			return "contact";
		} else {

			model.addAttribute("signmessage", "User or password wrong ");
			return "hello";
		}

	}
}
