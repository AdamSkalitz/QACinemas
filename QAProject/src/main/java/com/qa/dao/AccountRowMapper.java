package com.qa.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.qa.models.Account;

public class AccountRowMapper implements RowMapper<Account> {

	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		Account account = new Account();
		account.setID(rs.getInt("AccountID"));
		account.setAddressID(rs.getInt("AddressID"));
		account.setName(rs.getString("Name"));
		account.setEmail(rs.getString("Email"));
		account.setPhone(rs.getString("Phone"));
		account.setPassword(rs.getString("Password"));
		account.setModifiedDate(rs.getDate("ModifiedDate"));
		return account;
	}

}
