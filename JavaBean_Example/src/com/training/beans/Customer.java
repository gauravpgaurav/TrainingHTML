package com.training.beans;

import java.io.Serializable;
import java.util.logging.*;

public class Customer implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	Logger log = Logger.getLogger(this.getClass().getName());

	private long customerId;
	private String customerName;
	private String email;
	private long handPhone;

	public Customer() {
		super();
		log.info("Customer Initialised");
	}

	public long getCustomerId() {
		log.info("Get Customer ID");
		return customerId;
	}

	public void setCustomerId(long customerId) {
		this.customerId = customerId;
		log.info("Set Customer ID");
	}

	public String getCustomerName() {
		log.info("Get Customer Name");
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
		log.info("Set Customer Name");
	}

	public String getEmail() {
		log.info("Get Customer Email");
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
		log.info("Set Customer Email");
	}

	public long getHandPhone() {
		log.info("Get Customer Hand Phone");
		return handPhone;
	}

	public void setHandPhone(long handPhone) {
		this.handPhone = handPhone;
		log.info("Set Customer Hand Phone");
	}

	public String getInfo() {
		return "Message From Bean";
	}
}
