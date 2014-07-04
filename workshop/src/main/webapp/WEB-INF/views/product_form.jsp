<%@ include file="include/header.jsp" %>
 
    <div class="container">

      <div class="starter-template">
        <h4> 상품 관리 - 상품등록 </h4> 
      
      
      <c:choose>
	      <c:when test="${code!=null}">
     		 <form name="theform" action="<c:url value="/"/>product/update.do" method="post">  
	      </c:when> 
	      <c:otherwise>
     		 <form name="theform" action="<c:url value="/"/>product/add.do" method="post">
	      </c:otherwise>
  	  </c:choose>
      <div class="panel panel-default">  
		 
			  <!-- Table -->
			  <table class="table">
				<tbody>
					<tr> 
						<td rowspan="4" sytle="valign:middle"><img src="data:image/jpeg;base64,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"/></td>
			       		<th>상품코드</th>	
			       		<td class="text-left"><input type="text" name="code" id="code" value="${requestScope.product.code}"/></td>
			       
			       	</tr>
					<tr> 
			       		<th style="width: 150px">상품명</th>
       					<td class="text-left"><input type="text" name="name" id="name" value="${requestScope.product.name}"/></td>
			       	</tr>
					<tr> 
			       		<th>가 격</th>	
			       		<td class="text-left"><input type="text" name="price" id="price" value="${requestScope.product.price}"/></td>
			       	</tr>
					<tr> 
			       		<th>수 량</th> 		
			       		<td class="text-left"><input type="text" name="stock" id="stock" value="${requestScope.product.stock}"/></td>
			       	</tr>
			       	
			       	
					<tr> 
			       		<th>상 품 설 명</th> 		
			       		<td colspan="2" class="text-left">
			       		<textarea rows=5 cols=100 name="description" id="description">${requestScope.product.description}</textarea>
			       	</tr>
			       	
				</tbody> 
			</table>
		</div>
      
	<div class="btn-group">
	  <button type="button" id="btn_submit" class="btn btn-default">등록</button>
	  <button type="button" id="btn_cancel" class="btn btn-default">취소</button> 
	</div>
		
	</form>
      </div>
      
    <script>
    $( document ).ready(function() { 
    	 $("#btn_submit").click(function() {
		    	if($("#code").val() == ""){
		    		alert("상품 코드를 입력하세요");
		    		$("#code").focus();
		    		return false;
		    	}else if($("#name").val() == ""){
		    		alert("상품명을 입력하세요");
		    		$("#name").focus();
		    		return false;
		    	}else if($("#price").val() == ""){
		    		alert("상품 가격을 입력하세요");
		    		$("#price").focus();
		    		return false;
		    	}else if($("#stock").val() == ""){
		    		alert("상품 수량을 입력하세요");
		    		$("#stock").focus();
		    		return false;
		    	}else if($("#description").val() == ""){
		    		alert("상품 설명을 입력하세요");
		    		$("#description").focus();
		    		return false;
		    	}
		    	document.theform.submit();
	    });    
    	 
	    $("#btn_cancel").click(function() { 
	    	location.href="<c:url value="/"/>product/list.do";
	    });   
	     
    });
    </script>

    </div><!-- /.container -->

<%@ include file="include/footer.jsp" %>