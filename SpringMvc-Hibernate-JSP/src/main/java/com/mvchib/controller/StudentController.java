package com.mvchib.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvchib.dao.RegDao;
import com.mvchib.model.Customer;
import com.mvchib.model.User;



@Controller
@ComponentScan("com.dao")
public class StudentController {
	@Autowired
	RegDao dao;
	
	@RequestMapping("/")
	public String display() {
		return "index";
	}
	@RequestMapping("/userAdd")  
    public String signUp(Model m)  
    {  
		 m.addAttribute("user", new User());
        return "userAdd";  
    }
	@RequestMapping("/savedata")
	private String saveuser(@ModelAttribute("user") User u) {
		int status=dao.saveData(u);
		return "redirect:/";
	}
	@RequestMapping("/checklogin")
	public String checkLogin(@RequestParam("mail")String mail,@RequestParam("pass")String pass) {
		
		List loglist=dao.logCheck(mail,pass);
		if(loglist.isEmpty()) {
			return "errorPage2";
		}
		else {
			if(loglist.get(0).equals("2")) {
				return "adminView";
			}
			else if(loglist.get(0).equals("1")) {
				return "redirect:/customerDetails";
			}
			else if(loglist.get(0).equals("0")) {
				return "errorPage1";
			}
			else {
				return "errorPage2";
			}
		}
	}
	@RequestMapping("/userDetails")
	public String viewUser(Model m) {
		List<User> list=dao.getUser();    
        m.addAttribute("list",list);
        System.out.println("List===="+list);
		return "userDetails";
		
	}
	@RequestMapping("/customerDetails")
	public String viewCustomer(Model m) {
		List<Customer> list=dao.getCustomer();
		m.addAttribute("list", list);
		return "customerDetails";		
	}
	
	@RequestMapping("/adminview")
	public String adminView() {
		return "adminView";		
	}
	
	@RequestMapping(value="/deleteuser/{userid}",method = RequestMethod.GET)
	public String deleteUser(@PathVariable int userid) {
		dao.deleteUser(userid);
		return "redirect:/userDetails";		
	}
	
	@RequestMapping(value="/edituser/{userid}",method = RequestMethod.GET)
	public String editUser(@PathVariable int userid , Model m) {
		List<User> list =dao.editUser(userid);
		m.addAttribute("userdetails", list.get(0));
		return "edituser";		
	}
	
	@RequestMapping("edituser/editusersave")
	private String editUserSave(@ModelAttribute("user") User u) {
		System.out.println("hai");
		dao.updateData(u);
		return "redirect:/userDetails";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@RequestMapping("/saveCustomer")
	public String saveCustomer1(@ModelAttribute("stu") Customer stu) {
		int status=dao.saveCustomer(stu);
		if(status>0) {
			return "redirect:/customerDetails";
		}
		return "errorPage3";
	}
	@RequestMapping("editcustomer/saveCustomer")
	public String saveCustomer(@ModelAttribute("stu") Customer stu) {
		int status=dao.saveCustomer(stu);
		if(status>0) {
			return "redirect:/customerDetails";
		}
		return "errorPage3";
	}
	@RequestMapping(value="/deletecustomer/{slno}", method = RequestMethod.GET)
	public String deleteCustomer(@PathVariable int slno) {
		dao.deleteCustomer(slno);
		return "redirect:/customerDetails";
	}
	@RequestMapping(value="/editcustomer/{slno}",method = RequestMethod.GET)
	public String editStudent(@PathVariable int slno,Model m ) {
		List<Customer> list =dao.editCustomer(slno);
		m.addAttribute("userdetails", list.get(0));
		return "editcustomer";		
	}
}
