<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2024-04-25
  Time: 오후 1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="org.fullstack4.genius.Common.CommonUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<jsp:include page="/WEB-INF/views/common/header.jsp">
    <jsp:param name="menuGubun" value="book"/>
</jsp:include>
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
                                        <li class="filter-list"><input class="pixel-radio" type="radio" value="" onclick="categorySubjectSearch(this)" name="subject_code_check" checked><label>전체</label></li>
                                        <c:forEach items="${subjectList}" var="list">
                                            <li class="filter-list"><input class="pixel-radio" type="radio" value="${list.category_code}" onclick="categorySubjectSearch(this)" id="${list.category_code}" name="subject_code_check" <c:if test="${responseDTO.subject_code == list.category_code}"> checked</c:if>><label for="${list.category_code}">${list.name}</label></li>
                                        </c:forEach>
                                    </ul>
                                </form>
                            </li>
                        </ul>
                    </div>
                    <div class="sidebar-filter">
                        <div class="top-filter-head">카테고리</div>
                        <div class="common-filter">
                            <div class="filter-list"><input class="pixel-radio" type="radio" value="" onclick="categoryClassSearch(this)" name="class_code_check" checked><label>전체</label></div>
                            <div class="head">초등</div>
                                <ul>
                                    <c:forEach items="${classList}" var="list">
                                        <c:if test='${fn:contains(list.name, "초등")}'>
                                            <li class="filter-list"><input class="pixel-radio" type="radio" value="${list.category_code}" onclick="categoryClassSearch(this)" id="${list.category_code}" name="class_code_check" <c:if test="${responseDTO.class_code == list.category_code}"> checked</c:if>><label for="${list.category_code}">${list.name}</label></li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                        </div>
                        <div class="common-filter">
                            <div class="head">중등</div>
                                <ul>
                                    <c:forEach items="${classList}" var="list">
                                        <c:if test='${fn:contains(list.name, "중등")}'>
                                            <li class="filter-list"><input class="pixel-radio" type="radio" value="${list.category_code}" onclick="categoryClassSearch(this)" id="${list.category_code}" name="class_code_check" <c:if test="${responseDTO.class_code == list.category_code}"> checked</c:if>><label for="${list.category_code}">${list.name}</label></li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                        </div>
                        <div class="common-filter">
                            <div class="head">고등</div>
                                <ul>
                                    <c:forEach items="${classList}" var="list">
                                        <c:if test='${fn:contains(list.name, "고등")}'>
                                            <li class="filter-list"><input class="pixel-radio" type="radio" value="${list.category_code}" onclick="categoryClassSearch(this)" id="${list.category_code}" name="class_code_check" <c:if test="${responseDTO.class_code == list.category_code}"> checked</c:if>><label for="${list.category_code}">${list.name}</label></li>
                                        </c:if>
                                    </c:forEach>
                                </ul>
                        </div>
                    </div>
                </div>
                <!-- 카테고리 Bar -->
                <div class="col-xl-9 col-lg-8 col-md-7">
                    <!-- Start Filter Bar -->

                    <form id="search_form">
                        <input type="hidden" id="category_class_code" name="class_code" value="${responseDTO.class_code}">
                        <input type="hidden" id="category_subject_code" name="subject_code" value="${responseDTO.subject_code}">
                        <!-- Start Filter Bar -->
                        <div class="filter-bar mb-0">
                            <div class="input-group d-flex justify-content-between">
                                <div class="d-flex justify-content-start">
                                    <div class="sorting mr-0">
                                        <select name="sort">
                                            <option value="1" <c:if test="${responseDTO.sort == '1'}"> selected</c:if>>출판일 최신순</option>
                                            <option value="2" <c:if test="${responseDTO.sort == '2'}"> selected</c:if>>판매량순</option>
                                            <option value="3" <c:if test="${responseDTO.sort == '3'}"> selected</c:if>>낮은가격순</option>
                                            <option value="4" <c:if test="${responseDTO.sort == '4'}"> selected</c:if>>높은가격순</option>
                                        </select>
                                    </div>
                                    <div class="sorting ">
                                        <select name="status">
                                            <option value="0" <c:if test="${responseDTO.status == '0'}"> selected</c:if>>판매상태 전체</option>
                                            <option value="1" <c:if test="${responseDTO.status == '1'}"> selected</c:if>>판매중</option>
                                            <option value="2" <c:if test="${responseDTO.status == '2'}"> selected</c:if>>판매준비중</option>
                                            <option value="3" <c:if test="${responseDTO.status == '3'}"> selected</c:if>>판매종료</option>
                                            <option value="4" <c:if test="${responseDTO.status == '4'}"> selected</c:if>>품절</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="sorting d-flex">
                                    <select name="type">
                                        <option value="0" <c:if test="${responseDTO.type == '0'}"> selected</c:if>>전체</option>
                                        <option value="1" <c:if test="${responseDTO.type == '1'}"> selected</c:if>>책이름</option>
                                        <option value="2" <c:if test="${responseDTO.type == '2'}"> selected</c:if>>저자</option>
                                        <option value="3" <c:if test="${responseDTO.type == '3'}"> selected</c:if>>출판사</option>
                                    </select>
                                    <div class="filter-bar-search">
                                        <input type="text" placeholder="Search" name="search_word" value="${responseDTO.search_word}" style="width: 100%">
                                    </div>
                                    <div>
                                        <button type="submit" class="btn btn-success">검색</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pb-2 d-flex justify-content-between">

                            <div class="sorting">
                                <button type="button" class="btn btn-success" onclick="cartChoices()">장바구니에 담기</button>
                            </div>
                        </div>

                    </form>
                    <!-- End Filter Bar -->
                    <!-- Start Best Seller -->
                    <section class="lattest-product-area pb-40 category-list">
                        <div class="row">
                            <c:forEach items="${responseDTO.dtoList}" var="list">
                                <div class="col-md-6 col-lg-4">
                                    <div class="card text-center card-product" data-code ="${list.book_code}">
                                        <div class="card-product__img target" for="ch1">
                                            <img class="card-img img-h350" src="/resources/upload/book/${list.book_img}" alt="">
                                            <ul class="card-product__imgOverlay">
                                                <li><button onclick="event.stopPropagation();location.href='/order/payment1?book_code=${list.book_code}'"><i class="ti-money"></i></button></li>
                                                <li><button onclick="event.stopPropagation();addcart('${list.book_code}')"><i class="ti-shopping-cart"></i></button></li>
                                            </ul>
                                            <div class="form-check targetTo ">
                                                <input class="form-check-input lg-checkbox choose" type="checkbox" value="${list.book_code}" id="ch1">
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p>${list.class_name} > ${list.subject_name}</p>
                                            <h4 class="card-product__title"><a href="#">${list.book_name}</a></h4>
                                            <h5><c:if test="${list.sales_status == '1'}"><span class="badge bg-success text-white">판매중</span></c:if>
                                                <c:if test="${list.sales_status == '2'}"><span class="badge bg-warning text-white" >판매준비중</span></c:if>
                                                <c:if test="${list.sales_status == '3'}"><span class="badge bg-dark text-white" >판매종료</span></c:if>
                                                <c:if test="${list.sales_status == '4'}"><span class="badge bg-danger text-white" >품절</span></c:if></h5>
                                            <p class="card-product__price text-geni"><s class="text-muted h6">${CommonUtil.comma(list.price)}</s> ${CommonUtil.comma(list.discount_price)}</p>
                                            <p class="card-product__rank stars">
                                                <c:choose>
                                                    <c:when test="${list.rank_avg > 0}">
                                                        <c:forEach begin="1" end="5" step="1" varStatus="status">
                                                            <c:if test="${status.index <= list.rank_avg}">
                                                                <i class="fa fa-star"></i>
                                                            </c:if>
                                                            <c:if test="${status.index > list.rank_avg}">
                                                                <i class="fa fa-star text-secondary"></i>
                                                            </c:if>
                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:forEach begin="1" end="5" step="1">
                                                            <i class="fa fa-star text-secondary"></i>
                                                        </c:forEach>
                                                    </c:otherwise>
                                                </c:choose>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
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
            location.href = "/book/view?book_code=" + product.dataset.code;
        })
    }
    let checkboxes = document.querySelectorAll('input[type=checkbox]');
    for (let checkbox of checkboxes) {
        checkbox.addEventListener('click', (e)=> {
            e.stopPropagation();
        })
    }
    function categorySubjectSearch(element){
        document.getElementById("category_subject_code").value = element.value;
        document.getElementById("search_form").submit();
    }
    function categoryClassSearch(element){
        document.getElementById("category_class_code").value = element.value;
        document.getElementById("search_form").submit();
    }
    /* 체크박스 장바구니 선택 로직*/
    function cartChoices() {
        let chooses = document.querySelectorAll('.choose');
        let idxList = [];
        for(let choice of chooses) {
            if(choice.checked) {
                idxList.push(choice.value);
                console.log(choice.value);
            }
        }
        if(idxList.length>0){
            $.ajax({
                url:"/mypage/addcart.dox",
                dataType:"json",
                type : "POST",
                data : {
                    "member_id":"${sessionScope['member_id']}",
                    "book_code":JSON.stringify(idxList),
                    "quantity" :1
                },
                success : function(data) {
                    if(data.result == "success") {
                        alert("장바구니에 성공적으로 상품이 담겼습니다.");
                        location.href="/mypage/cart";
                    }else{
                        alert("장바구니에 상품이 담기지 못했습니다");
                    }
                },
                fail : function (data){
                    alert("일시적인 오류가 발생했습니다");
                }

            });
        }else{
            alert("체크하신 상품이 없습니다.");
        }

    }
    function addcart(item){
        $.ajax({
            url:"/mypage/addcart.dox",
            dataType:"json",
            type : "POST",
            data : {
                "member_id":"${sessionScope['member_id']}",
                "book_code":item,
                "quantity" :1
            },
            success : function(data) {
                if(data.result == "success") {
                    alert("장바구니 성공");///문제가 있을수 있어용
                    location.href = "/mypage/cart";
                }else{
                    alert("장바구니에 상품이 담기지 못했습니다");
                }
            },
            fail : function (data){

            }

        });

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

