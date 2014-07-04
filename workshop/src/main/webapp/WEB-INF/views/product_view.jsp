<%@ include file="include/header.jsp" %>




    <div class="container">

      <div class="starter-template">
      <h5>상품관리 - 입력된 상품 정보</h5> 
      
             
      <div class="panel panel-default"> 
		  <div class="panel-heading"> 상 품 정 보 </div>
		
		  <div></div>
			  <!-- Table -->
			  <table class="table" >
				<tbody>
					<tr>
						<td colspan=2><img src="data:image/jpeg;base64,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"/></td>
					</tr>
					<tr> 
			       		<th class="text-center">상품 코드</th>
			       		<td>${requestScope.product.code}</td>
			       	</tr> 
					<tr> 
			       		<th class="text-center">상품명</th>
			       		<td>${requestScope.product.name}</td>
			       	</tr> 
					<tr> 
			       		<th class="text-center">상품 가격</th>
			       		<td>${requestScope.product.price}</td>
			       	</tr>
					<tr> 
			       		<th class="text-center">상품 수량</th>
			       		<td>${requestScope.product.stock}</td>
			       	</tr>
					<tr> 
			       		<th class="text-center">상품 설명</th>
			       		<td>${requestScope.product.description}</td>
			       	</tr>
				</tbody> 
			</table>
		</div>
      
	<div class="btn-group">
	  <button type="button" id="btn_list" class="btn btn-default">목록</button>
	  <button type="button" id="btn_edit" class="btn btn-default">수정</button>
	  <button type="button" id="btn_delete" class="btn btn-default">삭제</button>
	</div>

      </div>
      
    <script>
    $( document ).ready(function() { 
	    $("#btn_list").click(function() { 
	    	location.href="<c:url value="/"/>product/list.do";
	    });    

	    $("#btn_edit").click(function() { 
	    	location.href="<c:url value="/"/>product/add.do?code=${requestScope.product.code}";
	    });   
	    
	    $("#btn_delete").click(function() { 
	    	if(confirm("정말 삭제하시겠습니까?")){
	    		location.href="<c:url value="/"/>product/delete.do?code=${requestScope.product.code}";
	    	}
	    });     
    });
    </script>

    </div><!-- /.container -->




<%@ include file="include/footer.jsp" %>