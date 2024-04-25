<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2024-04-25
  Time: 오후 1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>genius</title>
    <link rel="icon" href="/resources/img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="/resources/vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="/resources/vendors/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="/resources/vendors/nice-select/nice-select.css">
    <link rel="stylesheet" href="/resources/vendors/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/vendors/owl-carousel/owl.carousel.min.css">

    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/swiper-bundle.min.css"/>

    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<!--================ 헤더 start =================-->
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<!--================ 헤더 End =================-->

<!--================ 본문 start =================-->
<main class="site-main">
    <!-- ================ start banner area ================= -->
    <section class="bg-img1 p-6" id="category">
        <div class="container h-100 p-3">
            <div class="blog-banner pt-1 pb-1">
                <div class="text-center ">
                    <h1 class=" text-white">교재</h1>
                    <span class=" text-white">Books</span>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ end banner area ================= -->

    <!-- ================ 내용 section start ================= -->
    <section class="section-margin--small mb-5">
        <div class="container">
            <div class="row">
                <!-- 카테고리 Bar -->
                <div class="col-xl-3 col-lg-4 col-md-5">
                    <div class="sidebar-categories">
                        <div class="head">과목</div>
                        <ul class="main-categories">
                            <li class="common-filter">
                                <form action="#">
                                    <ul>
                                        <li class="filter-list"><input class="pixel-radio" type="radio" id="s01" name="category_subject_code"><label for="s01">국어</label></li>
                                        <li class="filter-list"><input class="pixel-radio" type="radio" id="s02" name="category_subject_code"><label for="s02">영어</label></li>

                                    </ul>
                                </form>
                            </li>
                        </ul>
                    </div>
                    <div class="sidebar-filter">
                        <div class="top-filter-head">카테고리</div>
                        <div class="common-filter">
                            <div class="head">초등</div>
                            <form action="#">
                                <ul>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="c01" name="category_class_code"><label for="c01">초등 1학년</label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="c02" name="category_class_code"><label for="c02">초등 2학년</label></li>
                                </ul>
                            </form>
                        </div>
                        <div class="common-filter">
                            <div class="head">중등</div>
                            <form action="#">
                                <ul>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="c07" name="category_class_code"><label for="c07">중등 1학년</label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="c08" name="category_class_code"><label for="c08">중등 2학년</label></li>
                                </ul>
                            </form>
                        </div>
                        <div class="common-filter">
                            <div class="head">고등</div>
                            <form action="#">
                                <ul>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="c10" name="category_class_code"><label for="c10">고등 1학년</label></li>
                                    <li class="filter-list"><input class="pixel-radio" type="radio" id="c11" name="category_class_code"><label for="c11">고등 2학년</label></li>
                                </ul>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- 카테고리 Bar -->
                <div class="col-xl-9 col-lg-8 col-md-7">
                    <!-- Start Filter Bar -->
                    <div class="pb-2 d-flex justify-content-between">
                        <div class="d-flex justify-content-start">
                            <div class="sorting">
                                <select name="sort">
                                    <option value="1">출판일 최신순</option>
                                    <option value="2">판매량순</option>
                                    <option value="3">낮은가격순</option>
                                    <option value="4">높은가격순</option>
                                </select>
                            </div>
                            <div class="sorting ">
                                <select name="sales_status">
                                    <option value="1">판매상태 전체</option>
                                    <option value="2">판매중</option>
                                    <option value="3">판매준비중</option>
                                    <option value="4">판매종료</option>
                                    <option value="5">품절</option>
                                </select>
                            </div>
                        </div>
                        <div class="sorting">
                            <button type="button" class="btn btn-success">장바구니에 담기</button>
                        </div>
                    </div>
                    <!-- Start Filter Bar -->
                    <div class="filter-bar">
                        <div class="input-group d-flex justify-content-end">
                            <div class="sorting d-flex">
                                <select name="sales_status">
                                    <option value="1">전체</option>
                                    <option value="2">책이름</option>
                                    <option value="3">저자</option>
                                    <option value="4">출판사</option>
                                </select>
                                <div class="filter-bar-search">
                                    <input type="text" placeholder="Search" style="width: 100%">
                                </div>
                                <div>
                                    <button type="button" class="btn btn-success">검색</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Filter Bar -->
                    <!-- Start Best Seller -->
                    <section class="lattest-product-area pb-40 category-list">
                        <div class="row">
                            <div class="col-md-6 col-lg-4">
                                <div class="card text-center card-product">
                                    <div class="card-product__img target" for="ch1">
                                        <img class="card-img img-h350" src="/resources/img/product/product1.jpg" alt="">
                                        <ul class="card-product__imgOverlay">
                                            <li><button><i class="ti-bag"></i></button></li>
                                            <li><button><i class="ti-shopping-cart"></i></button></li>
                                        </ul>
                                        <div class="form-check targetTo z-100">
                                            <input class="form-check-input lg-checkbox" type="checkbox" value="" id="ch1">
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p>카테고리1 > 카테고리2</p>
                                        <h4 class="card-product__title"><a href="#">책 제목</a></h4>
                                        <p class="card-product__price text-geni"><s class="text-muted h6">10,000원</s> 15,000원</p>
                                        <p class="card-product__rank stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="card text-center card-product">
                                    <div class="card-product__img target" for="ch2">
                                        <img class="card-img img-h350" src="/resources/img/product/product2.jpg" alt="">
                                        <ul class="card-product__imgOverlay">
                                            <li><button><i class="ti-bag"></i></button></li>
                                            <li><button><i class="ti-shopping-cart"></i></button></li>
                                        </ul>
                                        <div class="form-check targetTo z-100">
                                            <input class="form-check-input lg-checkbox" type="checkbox" value="" id="ch2">
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p>카테고리1 > 카테고리2</p>
                                        <h4 class="card-product__title"><a href="#">책 제목</a></h4>
                                        <p class="card-product__price text-geni"><s class="text-muted h6">10,000원</s> 15,000원</p>
                                        <p class="card-product__rank stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="card text-center card-product">
                                    <div class="card-product__img target" for="ch3">
                                        <img class="card-img img-h350" src="/resources/img/product/product3.jpg" alt="">
                                        <ul class="card-product__imgOverlay">
                                            <li><button><i class="ti-bag"></i></button></li>
                                            <li><button><i class="ti-shopping-cart"></i></button></li>
                                        </ul>
                                        <div class="form-check targetTo z-100">
                                            <input class="form-check-input lg-checkbox" type="checkbox" value="" id="ch3">
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p>카테고리1 > 카테고리2</p>
                                        <h4 class="card-product__title"><a href="#">책 제목</a></h4>
                                        <p class="card-product__price text-geni"><s class="text-muted h6">10,000원</s> 15,000원</p>
                                        <p class="card-product__rank stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="card text-center card-product">
                                    <div class="card-product__img target" for="ch4">
                                        <img class="card-img img-h350" src="/resources/img/product/product4.jpg" alt="">
                                        <ul class="card-product__imgOverlay">
                                            <li><button><i class="ti-bag"></i></button></li>
                                            <li><button><i class="ti-shopping-cart"></i></button></li>
                                        </ul>
                                        <div class="form-check targetTo z-100">
                                            <input class="form-check-input lg-checkbox" type="checkbox" value="" id="ch4">
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p>카테고리1 > 카테고리2</p>
                                        <h4 class="card-product__title"><a href="#">책 제목</a></h4>
                                        <p class="card-product__price text-geni"><s class="text-muted h6">10,000원</s> 15,000원</p>
                                        <p class="card-product__rank stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="card text-center card-product">
                                    <div class="card-product__img target" for="ch5">
                                        <img class="card-img img-h350" src="/resources/img/product/product5.jpg" alt="">
                                        <ul class="card-product__imgOverlay">
                                            <li><button><i class="ti-bag"></i></button></li>
                                            <li><button><i class="ti-shopping-cart"></i></button></li>
                                        </ul>
                                        <div class="form-check targetTo z-100">
                                            <input class="form-check-input lg-checkbox" type="checkbox" value="" id="ch5">
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p>카테고리1 > 카테고리2</p>
                                        <h4 class="card-product__title"><a href="#">책 제목</a></h4>
                                        <p class="card-product__price text-geni"><s class="text-muted h6">10,000원</s> 15,000원</p>
                                        <p class="card-product__rank stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="card text-center card-product">
                                    <div class="card-product__img target" for="ch6">
                                        <img class="card-img img-h350" src="/resources/img/product/product6.jpg" alt="">
                                        <ul class="card-product__imgOverlay">
                                            <li><button><i class="ti-bag"></i></button></li>
                                            <li><button><i class="ti-shopping-cart"></i></button></li>
                                        </ul>
                                        <div class="form-check targetTo z-100">
                                            <input class="form-check-input lg-checkbox" type="checkbox" value="" id="ch6">
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p>카테고리1 > 카테고리2</p>
                                        <h4 class="card-product__title"><a href="#">책 제목</a></h4>
                                        <p class="card-product__price text-geni"><s class="text-muted h6">10,000원</s> 15,000원</p>
                                        <p class="card-product__rank stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="card text-center card-product">
                                    <div class="card-product__img target" for="ch7">
                                        <img class="card-img img-h350" src="/resources/img/product/product7.jpg" alt="">
                                        <ul class="card-product__imgOverlay">
                                            <li><button><i class="ti-bag"></i></button></li>
                                            <li><button><i class="ti-shopping-cart"></i></button></li>
                                        </ul>
                                        <div class="form-check targetTo z-100">
                                            <input class="form-check-input lg-checkbox" type="checkbox" value="" id="ch7">
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p>카테고리1 > 카테고리2</p>
                                        <h4 class="card-product__title"><a href="#">책 제목</a></h4>
                                        <p class="card-product__price text-geni"><s class="text-muted h6">10,000원</s> 15,000원</p>
                                        <p class="card-product__rank stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="card text-center card-product">
                                    <div class="card-product__img target" for="ch8">
                                        <img class="card-img img-h350" src="/resources/img/product/product8.jpg" alt="">
                                        <ul class="card-product__imgOverlay">
                                            <li><button><i class="ti-bag"></i></button></li>
                                            <li><button><i class="ti-shopping-cart"></i></button></li>
                                        </ul>
                                        <div class="form-check targetTo z-100">
                                            <input class="form-check-input lg-checkbox" type="checkbox" value="" id="ch8">
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p>카테고리1 > 카테고리2</p>
                                        <h4 class="card-product__title"><a href="#">책 제목</a></h4>
                                        <p class="card-product__price text-geni"><s class="text-muted h6">10,000원</s> 15,000원</p>
                                        <p class="card-product__rank stars">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="card text-center card-product">
                                    <div class="card-product__img target" for="ch9">
                                        <img class="card-img img-h350" src="/resources/img/product/product1.jpg" alt="">
                                        <ul class="card-product__imgOverlay">
                                            <li><button><i class="ti-bag"></i></button></li>
                                            <li><button><i class="ti-shopping-cart"></i></button></li>
                                        </ul>
                                        <div class="form-check targetTo z-100">
                                            <input class="form-check-input lg-checkbox" type="checkbox" value="" id="ch9">
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p>카테고리1 > 카테고리2</p>
                                        <h4 class="card-product__title"><a href="#">책 제목</a></h4>
                                        <p class="card-product__price text-geni"><s class="text-muted h6">10,000원</s> 15,000원</p>
                                        <p class="card-product__rank">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- End Best Seller -->
                </div>
            </div>
        </div>
        <!-- 페이징 영역 start -->
        <nav class="blog-pagination justify-content-center d-flex">
            <ul class="pagination">
                <li class="page-item">
                    <a href="#" class="page-link" aria-label="Previous">&lt;</a>
                </li>
                <li class="page-item">
                    <a href="#" class="page-link">01</a>
                </li>
                <li class="page-item active">
                    <a href="#" class="page-link">02</a>
                </li>
                <li class="page-item">
                    <a href="#" class="page-link">03</a>
                </li>
                <li class="page-item">
                    <a href="#" class="page-link">04</a>
                </li>
                <li class="page-item">
                    <a href="#" class="page-link">09</a>
                </li>
                <li class="page-item">
                    <a href="#" class="page-link" aria-label="Next">&gt;</a>
                </li>
            </ul>
        </nav>
        <!-- 페이징 영역 end -->
    </section>
    <!-- ================ 내용 section end ================= -->
</main>
<!--================ 본문 END =================-->

<!-- 사이드바 -->
<jsp:include page="/WEB-INF/views/common/sidebar.jsp" />
<!-- 사이드바 끝 -->

<!--================ 푸터 Start =================-->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<!--================ 푸터 End =================-->
<script src="/resources/js/swiper-bundle.min.js"></script>
<script>
    let products = document.querySelectorAll('.card-product');
    for (let product of products) {
        product.addEventListener("click", ()=> {
            location.href = "/book/view?idx=1";
        })
    }
</script>

<script src="/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
<script src="/resources/vendors/skrollr.min.js"></script>
<script src="/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="/resources/vendors/jquery.ajaxchimp.min.js"></script>
<script src="/resources/vendors/mail-script.js"></script>
<script src="/resources/js/main.js"></script>
</body>

