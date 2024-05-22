package main;

public class Customer {

	private String customerID;
	private String customerName;
	private String customerPhone;
	private String customerLP;//License Plate
	private String customerVP;//Vespa Type
	private String customerComplaints;
	public Customer(String customerID, String customerName, String customerPhone, String customerLP, String customerVP,
			String customerComplaints) {
		super();
		this.customerID = customerID;
		this.customerName = customerName;
		this.customerPhone = customerPhone;
		this.customerLP = customerLP;
		this.customerVP = customerVP;
		this.customerComplaints = customerComplaints;
	}
	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	public String getCustomerLP() {
		return customerLP;
	}
	public void setCustomerLP(String customerLP) {
		this.customerLP = customerLP;
	}
	public String getCustomerVP() {
		return customerVP;
	}
	public void setCustomerVP(String customerVP) {
		this.customerVP = customerVP;
	}
	public String getCustomerComplaints() {
		return customerComplaints;
	}
	public void setCustomerComplaints(String customerComplaints) {
		this.customerComplaints = customerComplaints;
	} 
	
	
	
}
