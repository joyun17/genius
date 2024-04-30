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
    <title>Admin / book</title>
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
    <!-- 상품 리스트 -->
    <div class="col-12">
        <div class="card recent-sales overflow-auto">
            <div class="card-body">
                <h5 class="card-title">상품 관리 <span>| 리스트 </span></h5>

                <form>
                    <div class="row mb-6">
                            <div class="col-1">
                                <select name="class_code" class="form-select" id="category_class_code">
                                    <option value="">전체</option>
                                    <c:forEach items="${classList}" var="list">
                                        <option value="${list.category_code}"
                                                <c:if test="${list.category_code eq responseDTO.class_code}">
                                                    selected
                                                </c:if>
                                        >${list.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-1">
                                <select name="subject_code" class="form-select" id="category_subject_code">
                                    <option value="">전체</option>
                                    <c:forEach items="${subjectList}" var="list">
                                        <option value="${list.category_code}"
                                                <c:if test="${list.category_code eq responseDTO.subject_code}">
                                                    selected
                                                </c:if>
                                        >${list.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-1">
                                <select name="type" class="form-select" id="search_category">
                                    <option value="0" <c:if test="${responseDTO.type == '0'}"> selected</c:if>>전체</option>
                                    <option value="1" <c:if test="${responseDTO.type == '1'}"> selected</c:if>>책이름</option>
                                    <option value="2" <c:if test="${responseDTO.type == '2'}"> selected</c:if>>작성자</option>
                                    <option value="3" <c:if test="${responseDTO.type == '3'}"> selected</c:if>>출판사</option>
                                    <option value="4" <c:if test="${responseDTO.type == '4'}"> selected</c:if>>상품번호</option>
                                </select>
                            </div>
                            <div class="col">
                                <div class="row">
                                    <div class="col-6">
                                        <input type="text" class="form-control" placeholder="검색어" name="search_word"
                                               id="search_word">
                                    </div>
                                    <div class="col">
                                        <button type="submit" class="bi bi-search btn btn-success"> 검색</button>
                                        <button type="button" class="btn btn-success"
                                                onclick="location.href='/admin/book/itemRegist'">등록
                                        </button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    <div class="col-2 mb-2">
                        <select name="page_size" class="form-select" onchange="this.form.submit()">
                            <option value="10" <c:if test="${responseDTO.page_size eq '10'}">selected</c:if> >10개씩 보기</option>
                            <option value="50" <c:if test="${responseDTO.page_size eq '50'}">selected</c:if> >50개씩 보기</option>
                            <option value="100" <c:if test="${responseDTO.page_size eq '100'}">selected</c:if> >100개씩 보기</option>
                        </select>
                    </div>
                </form>



                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">상품번호</th>
                            <th scope="col">책이름</th>
                            <th scope="col">정가</th>
                            <th scope="col">할인율</th>
                            <th scope="col">할인가</th>
                            <th scope="col">저자</th>
                            <th scope="col">출판사</th>
                            <th scope="col">카테고리1</th>
                            <th scope="col">카테고리2</th>
                            <th scope="col">판매상태</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${responseDTO.dtoList}" var="bookDTO">
                        <tr onclick="location.href='/admin/book/itemview?book_code=${bookDTO.book_code}'">
                            <th scope="row">${bookDTO.book_code}</th>
                            <td>${bookDTO.book_name}</td>
                            <td>${bookDTO.price}</td>
                            <td>${bookDTO.discount_per}</td>
                            <td>${bookDTO.discount_price}</td>
                            <td>${bookDTO.author}</td>
                            <td>${bookDTO.publisher}</td>
                            <td>${bookDTO.category_class_code}</td>
                            <td>${bookDTO.category_subject_code}</td>
                            <td><span class="badge bg-warning">${bookDTO.sales_status}</span></td> <!--상태에 따라 bg-수정 -->
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <!-- END Table with stripped rows -->

                <div class="d-flex justify-content-center">
                    <!-- Pagination with icons -->
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item <c:if test="${responseDTO.page_block_start - responseDTO.page_block_size < '1'}"> disabled</c:if>" >
                                <a href="<c:if test="${responseDTO.page_block_start - responseDTO.page_block_size >= '1'}">${responseDTO.linked_params}&page=${responseDTO.page_block_start - responseDTO.page_block_size}</c:if>"
                                   class="page-link" aria-label="Previous">&laquo;
                                </a>
                            </li>
                            <c:forEach begin="${responseDTO.page_block_start}"
                                       end="${responseDTO.page_block_end}"
                                       var="page_num">
                                <c:choose>
                                    <c:when test="${responseDTO.page == page_num}">
                                        <li class="page-item active">
                                            <a href="#" class="page-link">${page_num}</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item">
                                            <a href="${responseDTO.linked_params}&page=${page_num}" class="page-link">${page_num}</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            <li class="page-item <c:if test="${responseDTO.page_block_start + responseDTO.page_block_size > responseDTO.total_page}"> disabled</c:if>">
                                <a href="<c:if test="${responseDTO.page_block_start + responseDTO.page_block_size < responseDTO.total_page}">${responseDTO.linked_params}&page=${responseDTO.page_block_start + responseDTO.page_block_size}</c:if>
                        " class="page-link" aria-label="Next">&raquo;</a>
                            </li>
                        </ul>
                    </nav><!-- End Pagination with icons -->
                </div>
            </div>
        </div>
    </div><!-- End 상품 리스트 -->
</main>
<!--================ 본문 END =================-->

<!-- 사이드바 -->
<jsp:include page="/WEB-INF/views/admin/common/sidebar.jsp"/>
<!-- 사이드바 끝 -->

<!--================ 푸터 Start =================-->
<jsp:include page="/WEB-INF/views/admin/common/footer.jsp"/>
<!--================ 푸터 End =================-->

<!-- Vendor JS Files -->
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
</body>
</html>