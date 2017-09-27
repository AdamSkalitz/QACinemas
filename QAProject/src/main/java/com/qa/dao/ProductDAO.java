package com.qa.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
 
import javax.sql.DataSource;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.qa.models.Product;

public class ProductDAO implements IProductDAO {
	
	
	private JdbcTemplate jdbcTemplate = null;

	public void setJdbcTemplate(JdbcTemplate template) {
		this.jdbcTemplate = template;
	}

	public JdbcTemplate getJdbcTemplate() {
		return this.jdbcTemplate;
	}
	
	public List<Product> getAllProducts() {
		
		RowMapper<Product> mapper = new ProductRowMapper();
		String sql = "select * from Products";
		return getJdbcTemplate().query(sql, mapper);
	}

	public Product getProductByID(int productID) {
		String sql="SELECT * FROM Products where ProductID=?";
		return getJdbcTemplate().queryForObject(sql, new Object[]{productID}, new ProductRowMapper());
	}

}
