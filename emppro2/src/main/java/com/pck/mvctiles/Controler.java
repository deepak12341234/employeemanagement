package com.pck.mvctiles;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pck.bean.Contact;
import com.pck.bean.Search;
import com.pck.empservice.Serviceimpl;

@Controller
public class Controler {
	@Autowired
	private Serviceimpl sr;

	@RequestMapping("/addemp")
	public String contact(  Contact emp) {

		sr.addEmployee(emp);

		return "redirect:/allemp";

	}

	@RequestMapping("/search")
	public String search(@ModelAttribute("command") Search emp, BindingResult result, ModelMap model) {
		model.addAttribute("command", new Search());
		int i = emp.getId();
		System.out.println(i);
		Contact e = sr.getEmployee(i);
		model.addAttribute("e", e);
		e.getId();
		System.out.println(e.getFirstname());
		return "empbyid";

	}

	@RequestMapping("/allemp")
	public ModelAndView listEmployee(ModelAndView model, ModelMap m, Contact emp) throws IOException {
		m.addAttribute("command", new Search());
		m.addAttribute("command", new Contact());
		List<Contact> listEmployee = sr.getAllEmployees();
		model.addObject("listEmployee", listEmployee);
		model.addObject("emp", emp);
		model.setViewName("allemp");
		return model;
	}

	@RequestMapping("/delete")
	public String delete(Model model) throws IOException {
		model.addAttribute("command", new Search());
		model.addAttribute("command", new Contact());
		List<Contact> listEmployee = sr.getAllEmployees();
		model.addAttribute("listEmployee", listEmployee);
		return "redirect:/deleteemp";
	}

	@RequestMapping("/delete/{id}")
	public String deleteemp(@PathVariable("id") int id) throws IOException {

		sr.deleteEmployee(id);
		return "redirect:/deleteemp";
	}

	@RequestMapping("/deleteemp")
	public String deleteemp(Model model) throws IOException {
		model.addAttribute("command", new Search());
		model.addAttribute("command", new Contact());
		List<Contact> listEmployee = sr.getAllEmployees();
		model.addAttribute("listEmployee", listEmployee);
		return "delete";
	}

	@RequestMapping("/update")
	public String update(@ModelAttribute("command") Contact emp, Model model) throws IOException {
		model.addAttribute("command", new Search());
		model.addAttribute("command", new Contact());
		List<Contact> listEmployee = sr.getAllEmployees();
		model.addAttribute("listEmployee", listEmployee);
		return "update";
	}

	@RequestMapping("/update/{id}")
	public String edit(@PathVariable("id") int id, @ModelAttribute("command") Contact emp, Model model)
			throws IOException {
		model.addAttribute("command", new Search());
		model.addAttribute("command", new Contact());
		Contact c = sr.getEmployee(id);
		model.addAttribute("command", c);
		return "editdetail";
	}

	@RequestMapping(value = "/update/editsave", method = RequestMethod.POST)
	public String editsave(@ModelAttribute("emp") Contact emp, Model m) {
		sr.updateEmployee(emp);
		return "redirect:/update";
	}

}
