package cn.edu.zucc.fresh.model;

import java.util.Date;

public class BeanSale {
	private int sales_id;
	private int product_id;
	private double sales_price;
	private int sales_quantity;
	private Date start_date;
	private Date end_date;
	
	public int getSales_id() {
		return sales_id;
	}
	public void setSales_id(int sales_id) {
		this.sales_id = sales_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public double getSales_price() {
		return sales_price;
	}
	public void setSales_price(double sales_price) {
		this.sales_price = sales_price;
	}
	public int getSales_quantity() {
		return sales_quantity;
	}
	public void setSales_quantity(int sales_quantity) {
		this.sales_quantity = sales_quantity;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	
}
