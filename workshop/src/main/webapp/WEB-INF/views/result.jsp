<%@ include file="include/header.jsp" %>
 
    <div class="container">

      <div class="starter-template">
       <h1> Result </h1> 
        
     	<div class="alert alert-info" role="alert">${message}</div>
	      
		<div class="btn-group">
		  <button type="button" id="btn_list" class="btn btn-default">목록</button> 
		</div>
		 
      </div>
      
    <script>
    $( document ).ready(function() {  
	    $("#btn_list").click(function() { 
	    	location.href="<c:url value="/"/>product/list.do";
	    });    
    });
    </script>
    
    
    <c:if test="${nextPage!=null}">
    <script>
    $( document ).ready(function() {   
	    setTimeout(function() {
    	  window.location.href = "${nextPage}";
    	}, 2000);
    });
    </script>
    </c:if>

    </div><!-- /.container -->

<%@ include file="include/footer.jsp" %>