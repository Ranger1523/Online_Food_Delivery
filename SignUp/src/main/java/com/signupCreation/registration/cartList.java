package com.signupCreation.registration;

public class cartList {

	private int product_id;
	private int quantity;
	private int price;
	
	
	public cartList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public cartList(int product_id, int quantity, int price) {
		super();
		this.product_id = product_id;
		this.quantity = quantity;
		this.price = price;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "product_id=" + product_id + ", quantity=" + quantity + ", price=" + price + "<br>";
	}
	
	
}
