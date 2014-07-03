package com.workshop.product.vo;

public class Product {

		private String code;
		private String name;
		private int price;
		private int stock;
		private String description;
		
		public Product() {
			super();
			// TODO Auto-generated constructor stub
		}

		public Product(String code, String name, int price, int stock,
				String description) {
			super();
			this.code = code;
			this.name = name;
			this.price = price;
			this.stock = stock;
			this.description = description;
		}
		
		public String getCode() {
			return code;
		}
		public void setCode(String code) {
			this.code = code;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public int getStock() {
			return stock;
		}
		public void setStock(int stock) {
			this.stock = stock;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		
		@Override
		public String toString() {
			
			StringBuffer sb = new StringBuffer();
			sb.append("Code : ").append(code).append("\n");
			sb.append("Name : ").append(name).append("\n");
			sb.append("Price : ").append(price).append("\n"); 
			sb.append("Stock : ").append(stock).append("\n"); 
			sb.append("Description : ").append(description).append("\n"); 

			return sb.toString();
			
		}
		
		
}
