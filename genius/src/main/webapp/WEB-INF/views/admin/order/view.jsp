<%--
  Created by IntelliJ IDEA.
  User: kjw
  Date: 2024-04-26
  Time: 오후 3:56
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
    <title>Title</title>
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
        <h1>주문관리 상세</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item">주문관리</li>
                <li class="breadcrumb-item active">상세</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->


    <section class="section">
        <div class="row">
            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">주문 정보</h5>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">주문 번호</div>
                            <div class="col-lg-9 col-md-8">${orderDTO.order_num}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label">주문 상태</div>
                            <div class="col-lg-9 col-md-8">${orderDTO.order_state}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label">주문일시</div>
                            <div class="col-lg-9 col-md-8">${orderDTO.order_date}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label">주문자 ID</div>
                            <div class="col-lg-9 col-md-8">${orderDTO.member_id}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label">주문자 이름</div>
                            <div class="col-lg-9 col-md-8">${orderDTO.idx}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label">주문자 전화번호</div>
                            <div class="col-lg-9 col-md-8">${orderDTO.idx}</div>
                        </div>

                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">주문 상세정보</h5>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">상품 번호</div>
                            <div class="col-lg-9 col-md-8">${bookDTO.book_code}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">상품명</div>
                            <div class="col-lg-9 col-md-8">${bookDTO.book_name}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">수량</div>
                            <div class="col-lg-9 col-md-8">${orderDTO.amount}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">적용가</div>
                            <div class="col-lg-9 col-md-8">${bookDTO.discount_price}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">개별 총계</div>
                            <div class="col-lg-9 col-md-8">${orderDTO.price}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">총수량</div>
                            <div class="col-lg-9 col-md-8">${orderDTO.amount}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">총 합계</div>
                            <div class="col-lg-9 col-md-8">${orderDTO.total_price}</div>
                        </div>

                    </div>
                </div>

            </div>

            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">배송지 정보</h5>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">수신인</div>
                            <div class="col-lg-9 col-md-8">${deliveryDTO.idx}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">우편번호</div>
                            <div class="col-lg-9 col-md-8">${deliveryDTO.idx}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">주소 1</div>
                            <div class="col-lg-9 col-md-8">${deliveryDTO.delivery_addr1}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">주소 2</div>
                            <div class="col-lg-9 col-md-8">${deliveryDTO.delivery_addr2}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">수신인 전화번호</div>
                            <div class="col-lg-9 col-md-8">${deliveryDTO.idx}</div>
                        </div>

                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">배송정보</h5>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">배송회사</div>
                            <div class="col-lg-9 col-md-8">${deliveryDTO.delivery_company}</div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">배송시작일</div>
                            <div class="col-lg-9 col-md-8">${deliveryDTO.delivery_start_date}</div>
                        </div>


                        <div class="row">
                            <div class="col-lg-3 col-md-4 label ">배송종료일</div>
                            <div class="col-lg-9 col-md-8">${deliveryDTO.delivery_end_date}</div>
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