package com.training.domain;

public class Employee {

	private long empId;
	private String empName;

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employee(long empId, String empName) {
		super();
		this.empId = empId;
		this.empName = empName;
	}

	public long getEmpId() {
		return empId;
	}

	public void setEmpId(long empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

}
