package com.qa.services;
import java.sql.Types;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.qa.dao.IProductDAO;
import com.qa.dao.ProductRowMapper;
import com.qa.models.Product;

public class ProductService implements IProductDAO {
	private JdbcTemplate jdbcTemplate = null;
	
	public JdbcTemplate getJdbcTemplate() {
		return this.jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate template) {
		this.jdbcTemplate = template;
	}
	

	public Product get(int ProductID) {
		String sql ="";
		Product product = getJdbcTemplate().queryForObject(sql, new Object[]{ProductID}, new ProductRowMapper());
		return product;
	}

	public List<Product> getAllProducts() {
		RowMapper<Product> mapper = new ProductRowMapper();
		String sql = "select * from Products";		
		return  getJdbcTemplate().query(sql, mapper);
	}

	

}
