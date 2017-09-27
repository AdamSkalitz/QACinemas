package com.qa.dao;
import java.util.List;

import com.qa.models.*;

public interface IProductDAO {
	public Product getProductByID(int productID);
	public List<Product> getAllProducts();
	

}
