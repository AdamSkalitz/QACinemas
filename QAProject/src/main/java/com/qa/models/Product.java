package com.qa.models;

import java.io.Serializable;
import java.util.Date;



public class Product implements Serializable {
	private static final long serialVersionUID = -1000119078147252957L;
	
	private int ID;
	private int ProductSubCategoryID;
	private String Name;
	private String Color;
	private String Description;
	private double StandardCost;
	private double ListPrice;
	private String Size;
	private double Weight;
	private byte[] image;
	//for sort
	private Date ModifiedDate;
	
	public Product() {
		
	}
	
	public Product(int ProductSubCategoryID,String Name,String Color,String Description,double StandardCost,
			double ListPrice, String Size, double Weight, byte[] image, Date ModifiedDate ){
		
		this.ProductSubCategoryID = ProductSubCategoryID;
		this.Name = Name;
		this.Color = Color;
		this.Description = Description;
		this.StandardCost = StandardCost;
		this.ListPrice = ListPrice;
		this.Size = Size;
		this.Weight = Weight;
		this.image = image;
		this.ModifiedDate = ModifiedDate;
		
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getProductSubCategoryID() {
		return ProductSubCategoryID;
	}

	public void setProductSubCategoryID(int productSubCategoryID) {
		ProductSubCategoryID = productSubCategoryID;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getColor() {
		return Color;
	}

	public void setColor(String color) {
		Color = color;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public double getStandardCost() {
		return StandardCost;
	}

	public void setStandardCost(double standardCost) {
		StandardCost = standardCost;
	}

	public double getListPrice() {
		return ListPrice;
	}

	public void setListPrice(double listPrice) {
		ListPrice = listPrice;
	}

	public String getSize() {
		return Size;
	}

	public void setSize(String size) {
		Size = size;
	}

	public double getWeight() {
		return Weight;
	}

	public void setWeight(double weight) {
		Weight = weight;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public Date getModifiedDate() {
		return ModifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		ModifiedDate = modifiedDate;
	}
	

	
}