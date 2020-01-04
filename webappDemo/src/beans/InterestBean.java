package beans;

public class InterestBean {
	private int amount, duration;

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}
	
	//Property interest
	public int getInterest() {
		if(duration<36)
			return  (int) Math.round(amount*0.06);
		else
			return  (int) Math.round(amount*0.09);
	}
}
