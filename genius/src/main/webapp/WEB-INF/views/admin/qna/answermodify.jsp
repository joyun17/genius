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
    <title>Admin / QnA - answer modify</title>
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

    <!-- include summernote css/js -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>


</head>
<body>
<!--================ 헤더 start =================-->
<jsp:include page="/WEB-INF/views/admin/common/header.jsp" />
<!--================ 헤더 End =================-->

<!--================ 본문 start =================-->
<main id="main" class="main">

    <div class="pagetitle">
        <h1>QnA 등록</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/admin/admin">메인</a></li>
                <li class="breadcrumb-item"><a href="/admin/qna/list">QnA</a></li>
                <li class="breadcrumb-item active">QnA 답변 수정</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
        <div class="row">
            <div class="col-xl-12">

<%--                Start QnA-Q--%>
                <div class="card">
                    <div class="card-body pt-3">

                        <div class="tab-pane fade show active profile-overview" >

                                <input type="hidden" name="qna_idx" value="${qnaDTO.qna_idx}">


                                <div class="row mb-3">
                                    <label for="category_code" class="col-md-4 col-lg-2 col-form-label label">카테고리</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="category_code" type="text" class="form-control"
                                               value="Question" disabled>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="title" class="col-md-4 col-lg-2 col-form-label label">제목</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="title" type="text" class="form-control"
                                               value="${qnaDTO.title}" disabled>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="member_id" class="col-md-4 col-lg-2 col-form-label label">작성자</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="member_id" type="text" class="form-control"
                                               value="${qnaDTO.member_id}" disabled>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-4 col-lg-2 col-form-label label">파일</label>
                                    <div class="col-md-8 col-lg-9">
                                        <i class="bi-file-earmark-arrow-down label"></i><a href="#none" onclick="">파일명.ext</a>
                                    </div>

                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-4 col-lg-2 col-form-label label">내용</label>
                                    <div class="col-md-8 col-lg-9 overflow-auto mx-2 border border-gray rounded p-2" style="max-height: 500px;">
                                        ${qnaDTO.contents}
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
<%--            End QnA-Q--%>



                <div class="card">
                    <div class="card-body pt-3">

                        <div class="tab-pane fade show active profile-overview" id="profile-overview">

                            <!--Form -->
                            <form method="post" action="/admin/qna/answerregist">
                                <input type="hidden" name="qna_idx" value="${qnaDTO.qna_idx}">


                                <div class="row mb-3">
                                    <label for="category_code" class="col-md-4 col-lg-2 col-form-label">카테고리</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="category_code" type="text" class="form-control" id="category_code"
                                               value="Answer" disabled>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="title" class="col-md-4 col-lg-2 col-form-label">제목</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="title" type="text" class="form-control" id="title"
                                               value="${qnaDTO.title}">
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="member_id" class="col-md-4 col-lg-2 col-form-label">작성자</label>
                                    <div class="col-md-8 col-lg-9">
                                        <input name="member_id" type="text" class="form-control" id="member_id"
                                               value="${sessionScope.member_id}" readonly>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label class="col-md-4 col-lg-2 col-form-label">파일</label>
                                    <div class="col-md-8 col-lg-9">
                                        <i class="bi-file-earmark-arrow-down label"></i><a href="#none" onclick="">파일명.ext</a>
                                    </div>

                                </div>

                                <div class="row mb-3">
                                    <label for="summernote" class="col-md-4 col-lg-2 col-form-label">내용</label>
                                    <div class="col-md-8 col-lg-10">
                                        <textarea id="summernote" name="contents" >${qnaDTO.contents}</textarea>
                                    </div>
                                </div>

                                <div class="d-flex text-center mt-5 justify-content-end">
                                    <button type="submit" class="btn btn-success me-2">수정 완료</button>
                                    <button type="button" class="btn btn-outline-success" onclick="history.back()">취소</button>
                                </div>

                            </form><!-- EndForm -->

                        </div>
                    </div>
                </div><!-- End Bordered Tabs -->
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
    //서머노트
    $('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 500,
        toolbar: [
            ['style', ['style']],
            ['font', ['bold', 'underline', 'clear']],
            ['color', ['color']],
            ['para', ['ol', 'paragraph']],
            ['table', ['table']],
            ['insert', ['link', 'picture', 'video']],
            ['view', ['fullscreen', 'codeview', 'help']]
        ]
    });

    function imageUploader(file, el) {
        var formData = new FormData();
        formData.append('file', file);
        $.ajax({
            data : formData,
            type : "POST",
            //아래 url 수정 필요
            url : '/',
            contentType : false,
            processData : false,
            enctype : 'multipart/form-data',
            success : function(data) {
                $(el).summernote('insertImage', "${pageContext.request.contextPath}/assets/images/upload/"+data, function($image) {
                    $image.css('width', "100%");
                });
                // 값이 잘 넘어오는지 콘솔 확인 해보셔도됩니다.
                console.log(data);
            }
        });
    }

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