package cn.edu.zucc.fresh.model;

import java.util.Date;

public class BeanOrder {
	private int order_id;
	private int coupon_id;
	private int user_id;
	private int add_id;
	private double pri_money;
	private double real_money;
	private Date req_time;
	private int state;
	private int star;
	private String comment;
	
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getCoupon_id() {
		return coupon_id;
	}
	public void setCoupon_id(int coupon_id) {
		this.coupon_id = coupon_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getAdd_id() {
		return add_id;
	}
	public void setAdd_id(int add_id) {
		this.add_id = add_id;
	}
	public double getPri_money() {
		return pri_money;
	}
	public void setPri_money(double pri_money) {
		this.pri_money = pri_money;
	}
	public double getReal_money() {
		return real_money;
	}
	public void setReal_money(double real_money) {
		this.real_money = real_money;
	}
	public Date getReq_time() {
		return req_time;
	}
	public void setReq_time(Date req_time) {
		this.req_time = req_time;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
}
