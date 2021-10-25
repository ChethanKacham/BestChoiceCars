package com.wipro;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface CarRepository extends CrudRepository<Car,String> {

	List<Car> findByBrand(String BrandName);
	List<Car> findByPriceLessThan(double price);
	List<Car> findByPriceGreaterThan(double price);
}
