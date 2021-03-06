
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <div class="tab-pane fade " id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
  
    <div class="col-sm d-flex justify-content-center">
    <div class="jumbtron">
  <h1 class="display-4">Employee Management</h1>
  <hr class="my-4">
   <form:form class="form-signin" action="search">
    <div class="form-label-group">
        <form:input path="id" id="" class="form-control" placeholder="search employe by id" ></form:input><br>
     
<button class="btn btn-lg btn-primary btn-block" type="submit">Serach</button>
      </div>
      </form:form>
</div>
    </div>

  </div>