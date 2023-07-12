package org.jsp.repositiry;

import org.jsp.dto.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

	public Customer findByEmail(String email);

	public Customer findByMno(long mobile);
}