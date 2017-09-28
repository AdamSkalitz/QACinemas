package com.qa.models;

import java.sql.Date;

public class Account {

	public int ID;
	public int AddressID;
	public String Name;
	public String Email;
	public String Phone;
	public String Password;
	public Date ModifiedDate;

	public Account() {

	}

	public Account(int iD, int addressID, String name, String email, String phone, String password, Date modifiedDate) {
		super();
		ID = iD;
		AddressID = addressID;
		Name = name;
		Email = email;
		Phone = phone;
		Password = password;
		ModifiedDate = modifiedDate;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public int getAddressID() {
		return AddressID;
	}

	public void setAddressID(int addressID) {
		AddressID = addressID;
	}

	public Date getModifiedDate() {
		return ModifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		ModifiedDate = modifiedDate;
	}

	@Override
	public String toString() {
		return "Account [ID=" + ID + ", AddressID=" + AddressID + ", Name=" + Name + ", Email=" + Email + ", Phone="
				+ Phone + ", Password=" + Password + ", ModifiedDate=" + ModifiedDate + "]";
	}
	
	

}
