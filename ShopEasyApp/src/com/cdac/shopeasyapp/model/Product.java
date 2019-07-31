 package com.cdac.shopeasyapp.model;


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

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
	
	@Column
	private String path;
	
//	@Transient
//	private MultipartFile file;
	
	@ManyToMany(mappedBy = "products")
	private Set<User> cartId = new HashSet<User>();

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

//	public MultipartFile getFile() {
//		return file;
//	}
//
//	public void setFile(MultipartFile file) {
//		this.file = file;
//	}

	public Set<User> getCartId() {
		return cartId;
	}

	public void setCartId(Set<User> cartId) {
		this.cartId = cartId;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
	
}
