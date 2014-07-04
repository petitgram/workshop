package com.workshop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
 

import com.workshop.product.service.ProductServiceIF;
import com.workshop.product.vo.Product;

@Controller
@RequestMapping("/product")
public class FrontController {

	@Autowired 
	ProductServiceIF service;
	
	@RequestMapping(value="add.do" , method = RequestMethod.GET)
	public String add(HttpServletRequest request,Model model){ 
		
		if(request.getParameter("code") != null){ 
			try { 
				Product product = service.view(request.getParameter("code"));
				model.addAttribute("product",product);
				model.addAttribute("code",request.getParameter("code"));
			}catch(Exception e){
				e.printStackTrace();
			} 
			
		}
		
		return "product_form";
	}
	
	@RequestMapping(value="add.do" , method = RequestMethod.POST)
	public String save(
			@RequestParam("code") String code,
			@RequestParam("name") String name,
			@RequestParam("price") int price,
			@RequestParam("stock") int stock,
			@RequestParam("description") String description,
			Model model
			) throws Exception{
 
		try { 
			service.save(new Product(code,name,price,stock,description));
			model.addAttribute("message", "상품등록 성공"); 
			model.addAttribute("nextPage", "list.do"); 
			
		}catch(Exception e){
			model.addAttribute("message", "상품등록 실패");
			e.printStackTrace();
		}  
			
		return "result";		 
	}
	
	@RequestMapping(value="update.do" , method = RequestMethod.POST)
	public String update(
			@RequestParam("code") String code,
			@RequestParam("name") String name,
			@RequestParam("price") int price,
			@RequestParam("stock") int stock,
			@RequestParam("description") String description,
			Model model
			) throws Exception{
 
		try { 
			service.update(new Product(code,name,price,stock,description));
			model.addAttribute("message", "상품 수정 성공"); 
			
		}catch(Exception e){
			model.addAttribute("message", "상품 수정 실패");
			e.printStackTrace();
		}  
			
		return "result";
	}
	
	@RequestMapping(value="list.do" , method = RequestMethod.GET)
	public String list(Model model){ 
		ArrayList<Product> productList = service.list();
		model.addAttribute("productList", productList);  
		return "product_list";
	}
	

	@RequestMapping(value="view.do" , method = RequestMethod.GET)
	public String view(@RequestParam("code") String code,
			Model model) throws Exception { 
		
		try { 
			Product product = service.view(code);
			model.addAttribute("product",product);
			model.addAttribute("code",code);
		}catch(Exception e){
			e.printStackTrace();
		} 
		 
		return "product_view";  
	}
	
	@RequestMapping(value="delete.do" , method = RequestMethod.GET)
	public String delete(
			@RequestParam("code") String code,
			Model model){ 
		
		try { 
			service.delete(code);
			model.addAttribute("message","삭제 완료");
		}catch(Exception e){
			model.addAttribute("message","삭제 실패");
			e.printStackTrace();
		} 
		 
		return "result";  
	}
}
