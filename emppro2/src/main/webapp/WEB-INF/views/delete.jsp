
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
   
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
    <c:forEach var="emp" items="${listEmployee}">
    <tr>
     
      <td>${emp.id}</td>
       <td>${emp.firstname}</td>
      
        <td>${emp.lastname}</td>
        <td>${emp.address}</td>
        <td>${emp.gender}</td>
        <td>${emp.age}</td>
        <td>${emp.doj}</td>
        <td>${emp.mobile}</td>
        <td>${emp.salary}</td>
        
       <td>${emp.state}</td>
          <td><a href="delete/${emp.id}">delete</a></td>
    </tr>
  
          </c:forEach>
  </tbody>
</table>
