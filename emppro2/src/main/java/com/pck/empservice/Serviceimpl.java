package com.pck.empservice;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pck.bean.Contact;
import com.pck.daoclasses.Daoimpl;
@Service
@Transactional
public class Serviceimpl implements Empservice{
	 @Autowired
	    private Daoimpl employeeDAO;

	    @Transactional

		@Override
		 
		public void addEmployee(Contact employee) {
			employeeDAO.addEmployee(employee); 
			
		}
	 
	 

	@Override
	public List<Contact> getAllEmployees() {
		 return employeeDAO.getAllEmployees();
	}

	@Override
	public void deleteEmployee(int employeeId) {
		  employeeDAO.deleteEmployee(employeeId);
		
	}

	@Override
	public Contact updateEmployee(Contact employee) {
		return employeeDAO.updateEmployee(employee);
		
	}

	@Override
	public Contact getEmployee(int employeeid) {
		return employeeDAO.getEmployee(employeeid);
	}
	
	
	  
	  


}
