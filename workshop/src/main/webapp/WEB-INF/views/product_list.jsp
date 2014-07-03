<%@ include file="include/header.jsp" %>


 
    <div class="container">

      <div class="starter-template">
        <h4>상품정보 관리 - 리스트 </h4> 
      </div>
      
      <div>  
		
		
		<div class="btn-group">
		  <button type="button" id="btn_input" class="btn btn-default">상품 정보 등록</button> 
	 	</div>
		
		<BR/><BR/>
		
		<div class="panel panel-default">  
		
		  <!-- Table -->
		  <table class="table">
		    	<thead>
				    <tr>
						<th>#</th>
						<th>아이디</th>
						<th>이름</th>
						<th>가격</th> 
						<th>재고</th> 
				    </tr>
				</thead>
				<tbody>
				<c:forEach items="${requestScope.productList}" var="product" varStatus="status">				
					<tr>
						<td>${status.count}</td>
						<td>${product.code}</td>
						<td><a href='<c:url value="/"/>product/view.do?code=${product.code}'>${product.name}</a></td>
						<td>${product.price}</td>
						<td>${product.stock}</td> 
					</tr> 
				</c:forEach>
				</tbody>
		  </table>
		</div>

      </div>

    </div><!-- /.container -->


	<script>
    $( document ).ready(function() { 
	    $("#btn_input").click(function() { 
	    	window.location.href="<c:url value="/"/>product/add.do";
	    });     
	       
    });
    </script>


<%@ include file="include/footer.jsp" %>

