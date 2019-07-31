 package com.cdac.shopeasyapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="sub_category")
public class SubCategory {
	
	@Id
	@Column(name = "subcategory_id")
	@GeneratedValue
	private int subCategoryId;
	
	@Column(name = "subcategory_name")
	private String subCategoryName;
	
	@Column(name = "category_id")
	private int categoryId;
	
	@Column
	private String subcatpath;
	
//	@Column
//	private byte[] image;
	
//	@OneToMany
//	@JoinColumn(name ="subcategory_id")
//	private Set<Product> products = new HashSet<Product>();

	public SubCategory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SubCategory(int subCategoryId, String subCategoryName, int categoryId) {
		super();
		this.subCategoryId = subCategoryId;
		this.subCategoryName = subCategoryName;
		this.categoryId = categoryId;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public String getSubCategoryName() {
		return subCategoryName;
	}

	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getSubcatpath() {
		return subcatpath;
	}

	public void setSubcatpath(String subcatpath) {
		this.subcatpath = subcatpath;
	}

//	public byte[] getImage() {
//		return image;
//	}
//
//	public void setImage(byte[] image) {
//		this.image = image;
//	}

	
	
}
