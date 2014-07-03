package com.workshop.product.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.workshop.product.vo.Product;

@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAOIF {
 
	@Autowired
	SqlSession session;
	
	@Override
	public Product view(String code) { 
		return session.selectOne("view",code); 
	}

	@Override
	public ArrayList<Product> list() {
		ArrayList<Product> productList = new ArrayList<Product>();   
		List<Product> result = session.selectList("list");
		
		for (Product product : result) {
			productList.add(product);
		}		
		return productList;
	}

	@Override
	public int save(Product product) { 
		return session.insert("insert",product);
	}

	@Override
	public int update(Product product) { 
		return session.update("edit",product);
	}

	@Override
	public int delete(String code) {
		return session.delete("delete",code);
	}

}
