workshop
========

Spring Framework(final workshop) Level 중

------------------------
1.상품정보를 입력후 등록하면 상품내역이 출력되도록 SpringMVC Framework, MyBatis Framework와 Spring DI기능으로 구현 하시오 <BR/>
2. web.xml에 Spring Framework에서 제공하는 FrontController와 CharacterEncodingFilter을 설정하시오<BR/>
3. 스프링 설정파일에 데이터베이스 연결을 위한 datasource 빈은 jndi lookup 방식으로 설정 하시오<BR/>
4. Mybatis를 연동하기 위한 SessionFactory빈과 Template빈을 설정하시오<BR/>
5. Mybatis Framework를 사용하기 위한 Mapper COnfig 파일을 작성하시오<BR/>
6. 요청 url패턴 product/add.do, get방식 요청 -> ProductAtion(Controller) -> product_form.jsp를 응답페이지로 서비스<BR/>
7. 요청 url패턴 product/add.do, post 방식 요청 -> ProductAction(Controller) ->ProductDAO,products테이블에 상품정보 추가 -> 상품 목록 페이지로 응답 product_list.jsp<BR/>
8. productlist.jsp 페이지를 상품목록에서 상품이름을 클릭 -> url패턴이 product/view.do, get 방식 요청 -> ProductAction -> ProductDAO빈,상품 ID로 검색,Product(VO) 리턴 -> product_view.jsp<BR/>
