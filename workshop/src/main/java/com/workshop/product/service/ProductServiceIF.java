package com.workshop.product.service;

import java.util.ArrayList;

import com.workshop.product.vo.Product;

public interface ProductServiceIF {

	public abstract Product view(String code);
	public abstract ArrayList<Product> list();
	public abstract void save(Product product);
	public abstract void update(Product product);
	public abstract void delete(String code);	
	
}
