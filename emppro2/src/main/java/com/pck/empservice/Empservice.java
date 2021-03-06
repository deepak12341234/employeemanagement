package com.pck.empservice;

import java.util.List;

import com.pck.bean.Contact;

public interface Empservice {

	 public void addEmployee(Contact employee);
	 public List<Contact> getAllEmployees();
	 
	    public void deleteEmployee(int employeeId);
	 
	    public Contact updateEmployee(Contact employee);
	 
	    public Contact getEmployee(int employeeid);
}
