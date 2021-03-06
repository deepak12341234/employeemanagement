 
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  <div class="col-sm d-flex justify-content-center">
    <div class="container">
  <div class="row">
<!--   ***************************************************Search employee****************************************************************
 -->    <div class="col-sm">
 <p>${name}</p>
    <div class="jumbtron">
  <h1 class="display-4">Employee Management</h1>
  <hr class="my-4">
   <form:form action="search" modelAttribute="Search">
    <div class="form-label-group">
        <form:input path="id" class="form-control" placeholder="search employe by id" required="required"></form:input><br>
     
        <button class="btn btn-lg btn-primary btn-block" type="submit">Serach</button>


      </div>
     </form:form>
</div>
    </div>
    
 
    
<!--     ****************************************************signin form****************************************************************
 -->  
 
 
 
 
 
 
   <div class="col-sm">
   <div class="jumbotron">
  <form:form class="form-signin" action="signin" modelAttribute="signindata">
      <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">signin</h1>
      </div><div class="form-label-group">
        <form:input path="email" id="inputEmail" class="form-control" placeholder="Email address" 
         required="required"></form:input>
        <label >Email address</label>
      </div><div class="form-label-group">
      
        <form:input path="password" id="inputPassword" class="form-control" placeholder="Password"  
        required="required"></form:input>
        <label>Password</label>
      </div>
      <div class="checkbox mb-3">
      </div>
      <br>
      <button class="btn btn-lg btn-outline-primary btn-block" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2017-2018</p>
       <h4>${signmessage}</h4>
    </form:form >
</div>
    </div>
  </div>
</div>
  </div>