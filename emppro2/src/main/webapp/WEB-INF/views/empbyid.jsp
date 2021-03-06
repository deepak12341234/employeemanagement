
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
   <%--  <div align="center">
        <h1>Employee List</h1>
        <h3>
           
        </h3>
        <table border="1">
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
           
         
            <c:forEach var="emp" items="${listEmployee}">
                <tr>
 
                    <td>${emp.firstname}</td>
                    <td>${emp.email}</td>
                    <td>${emp.address}</td>
                   
             
 
                </tr>
            </c:forEach>
        </table>
    </div> --%>
   
    <table class="table ">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">First</th>
      
      <th scope="col">Last</th>
      <th scope="col">address</th>
      <th scope="col">gender</th>
      <th scope="col">age</th>
      <th scope="col">doj</th>
      <th scope="col">mobile</th>
      <th scope="col">salary</th>
     
      <th scope="col">state</th>
      
    </tr>
  </thead>
  <tbody>
    
    <tr>
     
      <td>${e.id}</td>
       <td>${e.firstname}</td>
      
        <td>${e.lastname}</td>
        <td>${e.address}</td>
        <td>${e.gender}</td>
        <td>${e.age}</td>
        <td>${e.doj}</td>
        <td>${e.mobile}</td>
        <td>${e.salary}</td>
        
       <td>${e.state}</td>

    </tr>
  
   
  </tbody>
</table>
