package org.jsp.repositiry;

import org.jsp.dto.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	Product findByName(String name);

}