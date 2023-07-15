package org.jsp.dto;

import org.springframework.stereotype.Component;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import lombok.Data;

@Entity
@Data
@Component
public class Customer {
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	int id;
	String fname;
	String lname;
	long mno;
	String email;
	String pwd;
	boolean otpstatus;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	ShoppingCart cart;
}
