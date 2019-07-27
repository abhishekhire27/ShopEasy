package com.cdac.shopeasyapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {

	@Id
	@Column(name = "product_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int productId;

	@Column(name = "product_name")
	private String productName;

	@Column(name = "price")
	private int price;

	@Column(name = "quantity_available")
	private int quantityAvailable;

	@Column(name = "description")
	private String description;

	@Column(name = "subcategory_id")
	private int subCategoryId;

//	@ManyToOne
//	@JoinColumn(name="subCategory_Id")
//	private SubCategory subCategory;

	public Product() {
		super();
	}

	public Product(int productId) {
		super();
		this.productId = productId;
	}

	public Product(int productId, String productName, int price, int quantityAvailable, String description) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.quantityAvailable = quantityAvailable;
		this.description = description;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantityAvailable() {
		return quantityAvailable;
	}

	public void setQuantityAvailable(int quantityAvailable) {
		this.quantityAvailable = quantityAvailable;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

//	public SubCategory getSubCategory() {
//		return subCategory;
//	}
//
//	public void setSubCategory(SubCategory subCategory) {
//		this.subCategory = subCategory;
//	}

}
