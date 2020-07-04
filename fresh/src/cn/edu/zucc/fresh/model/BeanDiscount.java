package cn.edu.zucc.fresh.model;

public class BeanDiscount {
	private int discount_id;
	private String content;
	private int applicable_quantity;
	private float deduce;
	
	public int getDiscount_id() {
		return discount_id;
	}
	public void setDiscount_id(int discount_id) {
		this.discount_id = discount_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getApplicable_quantity() {
		return applicable_quantity;
	}
	public void setApplicable_quantity(int applicable_quantity) {
		this.applicable_quantity = applicable_quantity;
	}
	public float getDeduce() {
		return deduce;
	}
	public void setDeduce(float deduce) {
		this.deduce = deduce;
	}

	
}
