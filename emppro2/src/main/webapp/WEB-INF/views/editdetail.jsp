
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
  <h2>Employee Data Form</h2>
  <hr>
      <form:form class="needs-validation"  action="editsave" method="post">
      <div class="row d-flex justify-content-center">
    
        <div class="col-md-5 order-md-1">
          
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="firstName">First name</label>
                <form:input path="firstname" class="form-control" id="firstName" placeholder="" value="" ></form:input>
                <div class="invalid-feedback">
                  Valid first name is required.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Last name</label>
                <form:input path="lastname" class="form-control" id="lastName" placeholder="" value="" ></form:input>
                <div class="invalid-feedback">
                  Valid last name is required.
                </div>
              </div>
            </div>






              <div class="row">
                 <div class="col-md-4 ">
                <label for="firstName">id</label>
                <form:input path="id" class="form-control" id="id" placeholder="" value="" ></form:input>
                <div class="invalid-feedback">
                  Valid id is required.
                </div>
                </div>
                <div class="col-md-4 ">
                <label for="salary">salary</label>
                <form:input path="salary" class="form-control" id="salary" placeholder="" value=""></form:input>
                <div class="invalid-feedback">
                  Valid salary is required.
                </div>
                </div>
               <div class="col-md-4 mb-3">
                <label for="lastName">age</label>
                <form:input path="age" class="form-control" id="age" placeholder="" value="" ></form:input>
                <div class="invalid-feedback">
                  Valid age is required.
                </div>
              </div>
            </div>
            
            
            
            
      
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="email">Email</label>
                <form:input path="email" class="form-control" id="firstName" placeholder="email address" value="" ></form:input>
                <div class="invalid-feedback">
                  Valid email address is required.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="doj">year of joining</label>
              <form:select path="doj" class="custom-select d-block w-100" id="doj" >
                  <option value="">Choose...</option>
                  <option>2019</option>
                </form:select>
                <div class="invalid-feedback">
                  Valid doj is required.
                </div>
              </div>
            </div>
            
            
            
            
            
            
            <div class="mb-3">
              <label for="address">Address</label>
              <form:input path="address" class="form-control" id="address" placeholder="1234 Main St" ></form:input>
              <div class="invalid-feedback">
                Please enter your  address.
              </div>
            </div>

            <div class="mb-3">
              <label for="address2">depatment</label>
              <form:input path="" class="form-control" id="department" placeholder="cs,it,me"></form:input>
            </div>
  </div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
          
          <div class="col-md-6 order-md-2 mb-4">
          
            <div class="row">
              <div class="col-md-5 mb-3">
                <label for="country">Country</label>
                <form:select path="country" class="custom-select d-block w-100" id="country" >
                  <option value="">Choose...</option>
                  <option>United States</option>
                </form:select>
                <div class="invalid-feedback">
                  Please select a valid country.
                </div>
              </div>
              <div class="col-md-4 mb-3">
                <label for="state">State</label>
                <form:select path="state" class="custom-select d-block w-100" id="state" >
                  <option value="">Choose...</option>
                  <option>California</option>
              </form:select>
                <div class="invalid-feedback">
                  Please provide a valid state.
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="mobile">Mobile number</label>
                <form:input path="mobile" class="form-control" id="mobile" placeholder=""></form:input>
                <div class="invalid-feedback">
                  mobile number code required.
                </div>
              </div>
            </div>
            <div class=" ">
             <form:radiobutton path="gender" value="M"/>Male 
              <form:radiobutton path="gender" value="F"/>Female 
              </div>
               <hr class="mb-4">
            <button class="btn btn-outline-primary btn-lg " type="submit">update employe</button>
           
    </div>
        
        </div>
        </form:form>
     
</div>



