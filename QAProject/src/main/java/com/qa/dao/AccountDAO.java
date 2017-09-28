package com.qa.dao;

import java.sql.Date;
import java.sql.Types;

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
		String sql = "insert into Accounts(AccountID, AddressID, Name, Email, Phone,Password, ModifiedDate)"
				+ "	values(?,?,?,?,?,?,?)";
		Object[] params = new Object[]{account.getID(), account.getAddressID(), account.getName(), account.getEmail(), account.getPhone(), account.getPassword(), account.getModifiedDate()};
		int[] types = new int[]{Types.INTEGER, Types.INTEGER, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.DATE};
		getJdbcTemplate().update(sql, params, types);
	}

}
