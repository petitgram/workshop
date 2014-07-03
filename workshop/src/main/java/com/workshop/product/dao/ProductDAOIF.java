package com.workshop.product.dao;

import java.util.ArrayList;

import com.workshop.product.vo.Product;

/**
 * @author smw
 * @descriton productDAO interface
 */
public interface ProductDAOIF {
	
	public abstract Product view(String code);
	public abstract ArrayList<Product> list();
	public abstract int save(Product product);
	public abstract int update(Product product);
	public abstract int delete(String code);
	
}
