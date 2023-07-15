package org.jsp.repositiry;

import java.util.List;

import org.jsp.dto.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	public List<Product> findByName(String name);

}