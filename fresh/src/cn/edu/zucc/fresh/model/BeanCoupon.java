package cn.edu.zucc.fresh.model;

import java.util.Date;

public class BeanCoupon {
	private int coupon_id;
	private	String content;
	private	double applicable_amount;
	private double deduction_amount;
	private	Date start_date;
	private Date end_date;
	
	public int getCoupon_id() {
		return coupon_id;
	}
	public void setCoupon_id(int coupon_id) {
		this.coupon_id = coupon_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public double getApplicable_amount() {
		return applicable_amount;
	}
	public void setApplicable_amount(double applicable_amount) {
		this.applicable_amount = applicable_amount;
	}
	public double getDeduction_amount() {
		return deduction_amount;
	}
	public void setDeduction_amount(double deduction_amount) {
		this.deduction_amount = deduction_amount;
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
