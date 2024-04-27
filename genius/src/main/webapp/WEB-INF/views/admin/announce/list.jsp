<%--
  Created by IntelliJ IDEA.
  User: kjw
  Date: 2024-04-26
  Time: 오후 7:33
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
    <title>Admin / announce</title>
    <!-- Favicons -->
    <link href="/resources/admin/img/favicon.png" rel="icon">
    <link href="/resources/admin/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

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
<jsp:include page="/WEB-INF/views/admin/common/header.jsp" />
<!--================ 헤더 End =================-->

<!--================ 본문 start =================-->
<main id="main" class="main">

    <div class="pagetitle">
        <h1>공지사항 관리</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/admin/admin">메인</a></li>
                <li class="breadcrumb-item active">공지사항</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">공지사항 관리</h5>
                        <p>공지사항을 관리하는 페이지 입니다.</p>
                        <div class="row">
                            <form>
                                <div class="row mb-3">
                                    <div class="col">
                                        <div class="row mb-3">
                                            <div class="col-3"><input class="form-control" type="date" name="reg_date1" id="reg_date1">
                                            </div>
                                            ~
                                            <div class="col-3"><input class="form-control" type="date" name="reg_date2" id="reg_date2">
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="col-2">
                                            <select name="search_category" id="search_category" class="form-select">
                                                <option value="" selected>전체</option>
                                                <option value="member_id">작성자</option>
                                                <option value="bbs_title">제목</option>
                                                <option value="bbs_content">내용</option>
                                            </select>
                                        </div>

                                        <div class="col-6">
                                            <input type="text" class="form-control" placeholder="검색어" name="search_word" id="search_word">
                                        </div>
                                        <div class="col">
                                            <button type="submit" class="bi bi-search btn btn-success"> 검색</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="col-2 mb-2">
                            <select class="form-select">
                                <option value="5">5개씩 보기</option>
                                <option value="10" selected>10개씩 보기</option>
                                <option value="100">100개씩 보기</option>
                            </select>
                        </div>

                        <form id="frm_announce_delete" method="post" action="/admin/announce/delete">
                        <!-- Table with stripped rows -->
                        <table class="table">
                            <thead>
                            <tr>
                                <th><input id="chk_all" type="checkbox">번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                                <th>조회수</th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:if test="${bbsDTOlist ne null}">
                                <c:forEach items="${bbsDTOlist}" var="bbsDTO">
                                    <tr onclick="location.href='/admin/announce/view'">
                                        <td><input class="chk_del" type="checkbox" value="${bbsDTO.bbs_idx}">${bbsDTO.bbs_idx}</td>
                                        <td>${bbsDTO.bbs_title}</td>
                                        <td>${bbsDTO.member_id}</td>
                                        <td>${bbsDTO.reg_date}</td>
                                        <td>${bbsDTO.read_cnt}</td>
                                    </tr>
                                </c:forEach>
                            </c:if>

                            <tr onclick="location.href='/admin/announce/view'">
                                <td><input class="chk_del" type="checkbox" value="${bbsDTO.bbs_idx}"> 31</td>
                                <td>글제목입니당</td>
                                <td>작성자아이디입니다</td>
                                <td>작성일입니다</td>
                                <td>99</td>
                            </tr>

                            <tr onclick="location.href='/admin/announce/view'">
                                <td><input class="chk_del" type="checkbox" value="${bbsDTO.bbs_idx}"> 33</td>
                                <td>글제목입니당</td>
                                <td>작성자아이디입니다</td>
                                <td>작성일입니다</td>
                                <td>199</td>
                            </tr>

                            </tbody>
                        </table>
                        <!-- End Table with stripped rows -->
                        </form>

                        <div class="d-flex justify-content-end">
                            <button type="button" class="btn btn-success me-2"
                                    onclick="location.href='/admin/announce/contentregist'">등록</button>
                            <button type="button" class="btn btn-success"
                                    onclick="announce_delete()">삭제</button>
                        </div>


                        <div class="d-flex justify-content-center">
                            <!-- Pagination with icons -->
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav><!-- End Pagination with icons -->
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</main><!-- End #main -->
<!--================ 본문 END =================-->

<!-- 사이드바 -->
<jsp:include page="/WEB-INF/views/admin/common/sidebar.jsp" />
<!-- 사이드바 끝 -->

<!--================ 푸터 Start =================-->
<jsp:include page="/WEB-INF/views/admin/common/footer.jsp" />
<!--================ 푸터 End =================-->


<script>
    // 삭제 스크립트
    const frm_delete = document.querySelector("#frm_announce_delete");
    function announce_delete() {
        let flag_delete = confirm("정말 삭제하시겠습니까?");
        if (flag_delete) {
            frm_delete.submit();
        }
    }

    // 체크박스 스크립트
    const chk_all = document.querySelector("#chk_all");
    const chk_group = document.querySelectorAll(".chk_del");

    chk_all.addEventListener('click', (e)=> {
        if ( chk_all.checked ) {
            for(let i=0; i<chk_group.length; i++) {
                chk_group[i].checked = true;
            }
        }
        else {
            for(let i=0; i<chk_group.length; i++) {
                chk_group[i].checked = false;
            }
        }
    })

</script>

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
