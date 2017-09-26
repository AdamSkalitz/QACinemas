package com.qa.dao;
import java.util.List;

import com.qa.models.*;

public interface ProductDAO {
	public Product get(int ProductID);
	public List<Product> getAllProducts();
	

}
