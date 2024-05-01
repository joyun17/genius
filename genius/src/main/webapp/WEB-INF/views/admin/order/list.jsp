<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2024-04-25
  Time: 오후 5:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin / order </title>
    <!-- Favicons -->
    <link href="/resources/admin/img/favicon.png" rel="icon">
    <link href="/resources/admin/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/resources/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/admin/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/resources/admin/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/resources/admin/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="/resources/admin/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="/resources/admin/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/resources/admin/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/resources/admin/css/style.css" rel="stylesheet">
</head>
<body>
<!--================ 헤더 start =================-->
<jsp:include page="/WEB-INF/views/admin/common/header.jsp"/>
<!--================ 헤더 End =================-->

<!--================ 본문 start =================-->
<main id="main" class="main">
    <!-- Recent Sales -->
    <div class="col-12">
        <div class="card recent-sales overflow-auto">

            <div class="card-body">
                <h5 class="card-title">주문 관리 <span>| 리스트</span></h5>


                <div class="row mb-3">
                    <form action="/admin/order/list" name="searchfrm" id="searchfrm">
                        <div class="col">
                            <div class="row mb-3">
                                <div class="col-3"><input class="form-control" type="date" name="search_date1"
                                                          id="delivery_start_date">
                                </div>
                                ~
                                <div class="col-3"><input class="form-control" type="date" name="search_date2"
                                                          id="delivery_end_date">
                                </div>

                            </div>
                        </div>
                        <div class="row">

                            <div class="col-1">
                                <select name="type" class="form-select" id="category_class_code">
                                    <option value="" selected hidden>주문상태</option>
                                    <option value="">전체</option>
                                    <option value="1">배송 전</option>
                                    <option value="2">배송 중</option>
                                    <option value="3">배송 완료</option>
                                </select>
                            </div>

                            <div class="col-1">
                                <select name="type2" class="form-select" id="search_category">
                                    <option value="" selected hidden>검색 옵션</option>
                                    <option value="">전체</option>
                                    <option value="1">주문번호</option>
                                    <option value="2">주문자 ID</option>
                                    <option value="3">배송회사</option>
                                </select>
                            </div>

                            <div class="col-6">
                                <input type="text" class="form-control" placeholder="검색어" name="search_word"
                                       id="search_word">
                            </div>
                            <div class="col">
                                <button type="button" class="bi bi-search btn btn-success" onclick="search()"> 검색</button>
                                <button type="button" class="btn btn-success" onclick="cartChoices()">적용</button>
                            </div>
                        </div>
                    </form>
                </div>


                <div class="col-2 mb-2">
                    <select class="form-select" id="page-size" onchange="page_size(this)">
                        <option value="10" selected>10개씩 보기</option>
                        <option value="50">50개씩 보기</option>
                        <option value="100">100개씩 보기</option>
                    </select>
                </div>

                <!-- Table with stripped rows -->
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">주문번호</th>
                        <th scope="col">주문자 id</th>
                        <th scope="col">주문일시</th>
                        <th scope="col">총 결제 금액</th>
                        <th scope="col">총 수량</th>
                        <th scope="col">배송회사</th>
                        <th scope="col">배송시작일</th>
                        <th scope="col">배송종료일</th>
                        <th scope="col">주문상태</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:if test="${orderDTOlist ne null}">
                        <c:forEach items="${orderDTOlist}" var="orderDTO">
                            <tr>
                                <td><input class="form-check-input lg-checkbox choose" type="checkbox" value="${orderDTO.order_num}" id="ch1"></td>
                                <th scope="row"><a href='/admin/order/view?order_num=${orderDTO.order_num}'>${orderDTO.order_num}</a></th>
                                <td>${orderDTO.member_id}</td>
                                <td>${orderDTO.order_date}</td>
                                <td>${orderDTO.total_price}</td>
                                <td>${orderDTO.amount}</td>
                                <td>
                                    <select class="deliverySelect" <c:if test="${orderDTO.delivery_company != '' and orderDTO.delivery_company != null}">disabled</c:if>>
                                        <option value="" <c:if test="${orderDTO.delivery_company == '' or orderDTO.delivery_company == null}">selected</c:if>>선택</option>
                                        <option value="우체국" <c:if test="${orderDTO.delivery_company == '우체국'}">selected</c:if>>우체국</option>
                                        <option value="CJ대한통운" <c:if test="${orderDTO.delivery_company == 'CJ대한통운'}">selected</c:if>>CJ대한통운</option>
                                        <option value="로젠택배" <c:if test="${orderDTO.delivery_company == '로젠택배'}">selected</c:if>>로젠택배</option>
                                        <option value="한진택배" <c:if test="${orderDTO.delivery_company == '한진택배'}">selected</c:if>>한진택배</option>
                                        <option value="롯데택배" <c:if test="${orderDTO.delivery_company == '롯데택배'}">selected</c:if>>롯데택배</option>
                                        <option value="드림택배" <c:if test="${orderDTO.delivery_company == '드림택배'}">selected</c:if>>드림택배</option>
                                        <option value="대신택배" <c:if test="${orderDTO.delivery_company == '대신택배'}">selected</c:if>>대신택배</option>
                                        <option value="일양로지스택배" <c:if test="${orderDTO.delivery_company == '일양로지스택배'}">selected</c:if>>일양로지스택배</option>
                                    </select>
                                <td>${orderDTO.delivery_start_date}</td>
                                <td>${orderDTO.delivery_end_date}</td>
                                <td class="delivery_state"><span class="badge bg-warning">${orderDTO.order_state}</span></td>
                            </tr>
                        </c:forEach>
                    </c:if>
                    </tbody>
                </table>
                <!-- END Table with stripped rows -->

                <div class="d-flex justify-content-center">
                    <!-- Pagination with icons -->
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <c:if test="${pageDTO.page<=10}">
                            <li class="page-item disabled">
                                </c:if>
                                <c:if test="${pageDTO.page>10}">
                                <li class="page-item">
                                </c:if>
                                <a class="page-link" href="/admin/order/list${pageDTO.linked_params}&page=${pageDTO.page_block_end-10}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <c:forEach begin="${pageDTO.page_block_start}" end="${pageDTO.page_block_end}" var="i">
                            <li class="page-item">
                                <c:if test="${pageDTO.page == i}">
                                    <a class="page-link active" href="/admin/order/list${pageDTO.linked_params}&page=${i}">${i}</a>
                                </c:if>
                                <c:if test="${pageDTO.page != i}">
                                    <a class="page-link" href="/admin/order/list${pageDTO.linked_params}&page=${i}">${i}</a>
                                </c:if>
                            </li>
                            </c:forEach>
<%--                            <li class="page-item"><a class="page-link" href="/admin/order/list?page=2">2</a></li>--%>
<%--                            <li class="page-item"><a class="page-link" href="/admin/order/list?page=3">3</a></li>--%>
                                <c:if test="${(pageDTO.page_block_start+10)>=(pageDTO.total_page)}">
                                <li class="page-item disabled">
                                    </c:if>
                                    <c:if test="${(pageDTO.page_block_start+10)<(pageDTO.total_page)}">
                                <li class="page-item">
                                    </c:if>
                                <a class="page-link" href="/admin/order/list${pageDTO.linked_params}&page=${pageDTO.page_block_start+10}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav><!-- End Pagination with icons -->
                </div>

            </div>

        </div>
    </div><!-- End Recent Sales -->
</main>
<!--================ 본문 END =================-->

<!-- 사이드바 -->
<jsp:include page="/WEB-INF/views/admin/common/sidebar.jsp"/>
<!-- 사이드바 끝 -->

<!--================ 푸터 Start =================-->
<jsp:include page="/WEB-INF/views/admin/common/footer.jsp"/>
<!--================ 푸터 End =================-->

<!-- Vendor JS Files -->
<script src="/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="/resources/admin/vendor/apexcharts/apexcharts.min.js"></script>
<script src="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resources/admin/vendor/chart.js/chart.umd.js"></script>
<script src="/resources/admin/vendor/echarts/echarts.min.js"></script>
<script src="/resources/admin/vendor/quill/quill.js"></script>
<script src="/resources/admin/vendor/simple-datatables/simple-datatables.js"></script>
<script src="/resources/admin/vendor/tinymce/tinymce.min.js"></script>
<script src="/resources/admin/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/resources/admin/js/main.js"></script>
<script>
    function search(){
        document.querySelector("#searchfrm").submit();
    }

    function page_size(item){
        location.href = "/admin/order/list?" +
            "search_date1=${pageDTO.search_date1}"+
            "&search_date2=${pageDTO.search_date2}"+
            "&type=${pageDTO.type}"+
            "&type2=${pageDTO.type2}&search_word=${pageDTO.search_word}&page_size="+item.value;
    }


    function cartChoices() {


        var delivery_list =[];
        var check_list = [];


        let checknull = true;


        let delivery = document.querySelectorAll('.deliverySelect');
        let checkbox = document.querySelectorAll('.choose');

        for(let i = 0; i<checkbox.length; i++){
            if(checkbox[i].checked){
                delivery_list.push(checkbox[i].value);
                check_list.push(delivery[i].value);

            }
        }

        // for(let choice of delivery){
        //     list1.push(choice.value);
        // }

        for(let i =0; i<delivery_list.length; i++){
            if(check_list[i] == null || check_list[i]==""){
                checknull = false;
            }

        }

        if(checknull){
        // for(let i = 0; i<chooses.length; i++){
            $.ajax({
                url:"/admin/order/deliveryupdate.dox",
                dataType:"json",
                type : "GET",
                data : {
                    "ordernumList":JSON.stringify(delivery_list),
                    "delivery":JSON.stringify(check_list)
                },
                success : function(data) {
                    alert("수정 성공");
                    console.log("성공");
                    location.href="/admin/order/list${pageDTO.linked_params}&page=${pageDTO.page}"
                },
                fail : function (data){
                    console.log("실패");
                }

            });
        }else if(!checknull){
            alert("택배사를 정해주세요");
        }
    }



        <%--for(let i = 0; i<list1.length; i++) {--%>
        <%--        $.ajax({--%>
        <%--            url:"/admin/order/deliveryupdate.dox",--%>
        <%--            dataType:"json",--%>
        <%--            type : "GET",--%>
        <%--            data : {--%>
        <%--                "ordernumList":JSON.stringify(list[i]),--%>
        <%--                "delivery":JSON.stringify(list1[i])--%>
        <%--            },--%>
        <%--            success : function(data) {--%>

        <%--            },--%>
        <%--            fail : function (data){--%>

        <%--            }--%>

        <%--        });--%>


        <%--    }--%>

</script>
</body>
</html>
