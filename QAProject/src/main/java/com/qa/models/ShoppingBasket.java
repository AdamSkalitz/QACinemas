/*package com.qa.models;

import java.util.ArrayList;
import java.util.List;

import com.victoria.demos.model.CartLineInfo;
import com.victoria.demos.model.ProductInfo;

public class ShoppingBasket {

	private int orderNum;
	private List<Product> shoppingBasket = new ArrayList<Product>();
	
	
	public ShoppingBasket(){
		
	}


	public int getOrderNum() {
		return orderNum;
	}


	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}


	public List<Product> getShoppingBasket() {
		return shoppingBasket;
	}


	public void setShoppingBasket(List<Product> shoppingBasket) {
		this.shoppingBasket = shoppingBasket;
	}


	public ShoppingBasket(int orderNum, List<Product> shoppingBasket) {
		super();
		this.orderNum = orderNum;
		this.shoppingBasket = shoppingBasket;
	}
	

    public void addProduct(Product product, int quantity) {
        CartLineInfo line = this.findLineByCode(productInfo.getCode());
 
        if (line == null) {
            line = new CartLineInfo();
            line.setQuantity(0);
            line.setProductInfo(product);
            this.cartLines.add(line);
        }
        int newQuantity = line.getQuantity() + quantity;
        if (newQuantity <= 0) {
            this.cartLines.remove(line);
        } else {
            line.setQuantity(newQuantity);
        }
    }
	
}
*/