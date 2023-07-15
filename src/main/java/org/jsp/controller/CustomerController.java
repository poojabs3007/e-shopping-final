package org.jsp.controller;

import org.jsp.dto.Customer;
import org.jsp.helper.OtpDto;
import org.jsp.helper.Otp_service;
import org.jsp.helper.SendMail;
import org.jsp.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerService customerService;
	@Autowired
	Otp_service otp_service;
	@Autowired
	SendMail mail;

	@GetMapping("/signup")
	public String gotoSignup() {
		return "CustomerSignup";
	}

	@GetMapping("/login")
	public String gotoLogin() {
		return "CustomerLogin";
	}

	@PostMapping("/signup")
	public String CustomerSignup(@ModelAttribute Customer customer, ModelMap model) {
		return customerService.signup(customer, model);
	}

	@PostMapping("/login")
	public String customerLogin(@RequestParam String user, @RequestParam String password, HttpSession session,
			ModelMap model) {
		return customerService.login(user, password, session, model);
	}

	@GetMapping("/products")
	public String fetchAllproducts(ModelMap model) {
		return customerService.fetchProducts(model);
	}

	@GetMapping("/addtocart")
	public String addToCart(HttpSession session, ModelMap model, @RequestParam int id) {
		return customerService.addToCart(session, model, id);
	}

	@GetMapping("/cart")
	public String viewCart(HttpSession session, ModelMap model) {
		return customerService.viewCart(session, model);
	}

	@GetMapping("/{name}")
	public String delete(HttpSession session, ModelMap model, @PathVariable String name) {
		return customerService.delete(session, model, name);
	}

	@PostMapping("/billing")
	public String billing(HttpSession session, ModelMap model, @RequestParam String payment) {
		return customerService.billing(session, model, payment);
	}

	@PostMapping("/search")
	public String search(@RequestParam String product, ModelMap map) {
		return customerService.search(product, map);
	}

	@PostMapping("verify")
	public String verify(@RequestParam int otp, @RequestParam String email, Customer customer, ModelMap model)
			throws Exception {
		return customerService.verify(otp, email, customer, model);
	}

	@GetMapping("/resend/{email}")
	public String resend(Customer customer, @PathVariable String email, ModelMap map) {
		OtpDto otpDto = otp_service.createAndSaveOTP(customer.getEmail());
		mail.send(customer.getEmail(), otpDto, customer);
		return customerService.resend(customer, otpDto.getOtp(), email, map);
	}
}