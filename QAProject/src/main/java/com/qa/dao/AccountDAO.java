package com.qa.dao;

import java.sql.Date;
import java.sql.Types;
import java.time.LocalDateTime;

import org.springframework.jdbc.core.JdbcTemplate;

import com.qa.models.Account;

public class AccountDAO implements IAccountDAO {

	private JdbcTemplate jdbcTemplate = null;

	public void setJdbcTemplate(JdbcTemplate template) {
		this.jdbcTemplate = template;
	}

	public JdbcTemplate getJdbcTemplate() {
		return this.jdbcTemplate;
	}

	public void addAccount(Account account) {
		String sql = "insert into Accounts(AddressID, Name, Email, Phone,Password, ModifiedDate)"
				+ "	values(?,?,?,?,?,?)";
		LocalDateTime date = LocalDateTime.now();
		Date modifiedDate = java.sql.Date.valueOf(date.toLocalDate());
		Object[] params = new Object[]{account.getAddressID(), account.getName(), account.getEmail(), account.getPhone(), account.getPassword(),modifiedDate};
		int[] types = new int[]{Types.INTEGER, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.DATE};
		getJdbcTemplate().update(sql, params, types);
	}
	
	public Account getAccount(String name, String password) {
		String sql = "SELECT * from Accounts where Name = ?";
		Account account = getJdbcTemplate().queryForObject(sql, new Object[] {name}, new AccountRowMapper());
		return account;
		
	}

}
