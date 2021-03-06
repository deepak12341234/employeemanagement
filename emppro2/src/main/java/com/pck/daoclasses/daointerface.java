package com.pck.daoclasses;

import java.util.List;

import com.pck.bean.Contact;
import com.pck.bean.Signin;

public interface daointerface {
	
	public void signin(Signin s);
	 public void addEmployee(Contact employee);
	 public List<Contact> getAllEmployees();
	 
	    public void deleteEmployee(int employeeId);
	 
	    public Contact updateEmployee(Contact employee);
	 
	    public Contact getEmployee(int employeeid);
}
