package com.workshop.product.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.workshop.product.dao.ProductDAOIF;
import com.workshop.product.vo.Product;

@Service
public class ProductServiceImpl implements ProductServiceIF {


	@Autowired
	private ProductDAOIF productDAO;
	
	@Override
	public Product view(String code) {
		Product product = productDAO.view(code);
		return product;
	}

	@Override
	public ArrayList<Product> list() {
		ArrayList<Product> productList = productList = productDAO.list();		
		return productList;
	}

	@Override
	public void save(Product product) {
		int result = productDAO.save(product);
	}

	@Override
	public void update(Product product) {
		int result = productDAO.update(product);
	}

	@Override
	public void delete(String code) {
		int result = productDAO.delete(code);
	}

}
