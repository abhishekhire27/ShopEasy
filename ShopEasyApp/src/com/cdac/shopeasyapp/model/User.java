package com.cdac.shopeasyapp.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;

@Entity
@Table(name = "user")
public class User {
	
	@Column(name = "user_id")
	private String userId;
	
	@Column(name = "user_password")
	private String userPassword;
	
	@Column(name = "user_firstname")
	private String userFirstName;
	
	@Column(name = "user_lastname")
	private String userLastName;
	
	@Column(name = "user_email")
	private String userEmail;
	
	@Column(name = "user_phone")
	private String userPhone;
	
	@Column(name = "user_address")
	private String userAddress;
	
	@Column(name = "user_status")
	private String userStatus;
	
	@Column(name  = "role")
	private String role;
	
	@Id
	@Column(name = "cart_id")
	@GeneratedValue
	private int cartId;
	
	@ManyToMany
	@JoinTable(name = "cart_products", joinColumns = {@JoinColumn(name="cart_id")}, inverseJoinColumns = {@JoinColumn(name="product_id")})
	private Set<Product> products = new HashSet<Product>();
	
	
	public User() {
		super();
	}
	
	public User(String userId) {
		super();
		this.userId = userId;
	}

	public User(String userId, String userPassword, String userFirstName, String userLastName, String userEmail,
			String userPhone, String userAddress, int cartId, String userStatus, String role) {
		super();
		this.userId = userId;
		this.userPassword = userPassword;
		this.userFirstName = userFirstName;
		this.userLastName = userLastName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.cartId = cartId;
		this.userStatus = userStatus;
		this.role = role;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserFirstName() {
		return userFirstName;
	}

	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}

	public String getUserLastName() {
		return userLastName;
	}

	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	
	
}
