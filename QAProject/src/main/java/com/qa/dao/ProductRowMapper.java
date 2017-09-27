package com.qa.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.qa.models.Product;

public class ProductRowMapper implements RowMapper<Product> {

	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		
	Product product = new Product();
	
	product.setID(rs.getInt("ProductID"));
	product.setProductSubCategoryID(rs.getInt("ProductSubCategoryID"));
	product.setName(rs.getString("Name"));
	product.setColour(rs.getString("Colour"));
	product.setDescription(rs.getString("Description"));
	product.setStandardCost(rs.getDouble("StandardCost"));
	product.setListPrice(rs.getDouble("ListPrice"));
	product.setSize(rs.getString("Size"));
	product.setWeight(rs.getDouble("Weight"));
	product.setModifiedDate(rs.getDate("ModifiedDate"));
	return product;
	
	
		
	}

}
