package com.example.demo.response;

import java.math.BigDecimal;

public class GetStockResponse {
	private String company_name;
	private BigDecimal quantity;
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public BigDecimal getQuantity() {
		return quantity;
	}
	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}
	
}
