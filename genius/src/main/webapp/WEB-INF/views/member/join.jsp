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
    <!--================Login Box Area =================-->
    <section class="login_box_area section-margin">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12 col-sm-12">
                    <div class="login_form_inner rounded">
                        <h2 class="d-flex justify-content-center align-items-center flex-wrap pb-5">회원가입</h2>
                        <img src="/resources/img/join1.png" width="100%" />
                        <div class="container text-left pt-5 pb-5 p-lg-5">
                            <form action="/member/join" method="post" id="frm">
                                <div class="mb-5">
                                    <h3 class="p-0 mb-4">
                                        <svg width="24" height="24" xmlns="http://www.w3.org/2000/svg" xmlns:serif="http://www.serif.com/" fill-rule="evenodd" clip-rule="evenodd"><path serif:id="shape 17" d="M24 24.001c-.045 0-7.457.003-12 0h12zm-12 0c-4.551.003-11.979 0-12 0h12zm-12-12c-.032-8.648 3.365-11.993 12-12 8.635.007 12.032 3.352 12 12 .032 8.648-3.365 11.994-12 12-8.635-.006-12.032-3.352-12-12zm24-12h-12c4.543-.003 11.955 0 12 0zm-12 0c-4.551-.003-11.979 0-12 0h12z"/></svg>
                                        회원정보 입력
                                    </h3>
                                    <div class="col-md-12 form-group">
                                        <label for="member_id">아이디</label>
                                        <input type="text" class="form-control" id="member_id" name="member_id" placeholder="아이디" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디'">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <label for="member_name">이름</label>
                                        <input type="text" class="form-control" id="member_name" name="member_name" placeholder="이름" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름'">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <label for="pwd">비밀번호</label>
                                        <input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <label for="pwdCheck">비밀번호 확인</label>
                                        <input type="password" class="form-control" id="pwdCheck" name="pwdCheck" placeholder="비밀번호 확인" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호 확인'">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <label for="birthday">생년월일</label>
                                        <input type="date" class="form-control" id="birthday" name="birthday" placeholder="생년월일" onfocus="this.placeholder = ''" onblur="this.placeholder = '생년월일'">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <label>성별</label>
                                        <div class="d-flex" style="gap: 20px">
                                            <label for="female"><input type="radio" class="pixel-radio" id="female" name="gender" value="여">여</label>
                                            <label for="male"><input type="radio" class="pixel-radio" id="male" name="gender" value="남">남</label>
                                        </div>
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <label for="phone">이메일</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="이메일" onfocus="this.placeholder = ''" onblur="this.placeholder = '이메일'">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <label for="phone">연락처</label>
                                        <input type="tel" class="form-control" id="phone" name="phone" placeholder="-없이 입력해주세요" onfocus="this.placeholder = ''" onblur="this.placeholder = '-없이 입력해주세요'">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <label>주소</label>
                                        <div>
                                            <div class="input-group mb-3">
                                                <input type="text" name="zip_code" class="form-control" placeholder="우편번호" id="sample4_postcode" aria-label="Recipient's username" aria-describedby="button-addon2"  onclick="sample4_execDaumPostcode()">
                                                <div class="input-group-append">
                                                    <button class="btn btn-outline-success" type="button" id="button-addon2" onclick="sample4_execDaumPostcode()">우편번호 찾기</button>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="addr1" class="form-control" id="sample4_roadAddress" placeholder="도로명주소">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="addr2" class="form-control" id="sample4_detailAddress"  placeholder="상세주소">
                                            </div>
                                            <span id="guide" style="color:#999;display:none"></span>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <h3 class="p-0 mb-4">
                                        <svg width="24" height="24" xmlns="http://www.w3.org/2000/svg" xmlns:serif="http://www.serif.com/" fill-rule="evenodd" clip-rule="evenodd"><path serif:id="shape 17" d="M24 24.001c-.045 0-7.457.003-12 0h12zm-12 0c-4.551.003-11.979 0-12 0h12zm-12-12c-.032-8.648 3.365-11.993 12-12 8.635.007 12.032 3.352 12 12 .032 8.648-3.365 11.994-12 12-8.635-.006-12.032-3.352-12-12zm24-12h-12c4.543-.003 11.955 0 12 0zm-12 0c-4.551-.003-11.979 0-12 0h12z"/></svg>
                                        이용약관 동의
                                    </h3>
                                    <div class="form-group m-0 p-2">
                                        <input type="checkbox" id="agreeAll" name="agreeAll" onchange="">
                                        <label class="m-0 text-dark" for="agreeAll">아래 모든 내용에 모두 동의합니다.</label>
                                    </div>
                                    <div class="accordion" id="accordionExample">
                                        <div class="card">
                                            <div class="card-header d-flex justify-content-between align-items-center" id="headingOne"  data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                <p class="mb-0 text-dark">
                                                    [필수] 이용약관
                                                </p>
                                                <div class="form-group m-0">
                                                    <input class="terms" type="checkbox" id="terms1" name="terms1" value="Y" onclick="event.stopPropagation();">
                                                    <label class="m-0" for="terms1" onclick="event.stopPropagation();">동의함</label>
                                                </div>
                                            </div>
                                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                <div class="card-body pre-scrollable">
                                                    <p>제1조(목적)
                                                        <br>이 약관은 (주)천재교과서 회사(전자상거래 사업자)가 운영하는 (주)천재교과서 쇼핑몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리.의무 및 책임사항을 규정함을 목적으로 합니다.
                                                        <br>※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」</p>

                                                    <p>제2조(정의)
                                                        <br>① “몰”이란 (주)천재교과서 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
                                                        <br>② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
                                                        <br>③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.
                                                        <br>④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.</p>

                                                    <p>제3조 (약관 등의 명시와 설명 및 개정)
                                                        <br>① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호.모사전송번호.전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보보호책임자등을 이용자가 쉽게 알 수 있도록 (주)천재교과서 쇼핑몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
                                                        <br>② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회.배송책임.환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
                                                        <br>③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
                                                        <br>④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 “몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.
                                                        <br>⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.
                                                        <br>⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.</p>

                                                    <p>제4조(서비스의 제공 및 변경)
                                                        <br>① “몰”은 다음과 같은 업무를 수행합니다.
                                                        <br>&nbsp; 1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
                                                        <br>&nbsp; 2. 구매계약이 체결된 재화 또는 용역의 배송
                                                        <br>&nbsp; 3. 기타 “몰”이 정하는 업무
                                                        <br>② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.
                                                        <br>③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.
                                                        <br>④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</p>

                                                    <p>제5조(서비스의 중단)
                                                        <br>① “몰”은 컴퓨터 등 정보통신설비의 보수점검.교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.
                                                        <br>② “몰”은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
                                                        <br>③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로 이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “몰”이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.</p>

                                                    <p>제6조(회원가입)
                                                        <br>① 이용자는 “몰”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.
                                                        <br>② “몰”은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
                                                        <br>&nbsp; 1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 “몰”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
                                                        <br>&nbsp; 2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
                                                        <br>&nbsp; 3. 기타 회원으로 등록하는 것이 “몰”의 기술상 현저히 지장이 있다고 판단되는 경우
                                                        <br>③ 회원가입계약의 성립 시기는 “몰”의 승낙이 회원에게 도달한 시점으로 합니다.
                                                        <br>④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “몰”에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.</p>

                                                    <p>제7조(회원 탈퇴 및 자격 상실 등)
                                                        <br>① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며 “몰”은 즉시 회원탈퇴를 처리합니다.
                                                        <br>② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은 회원자격을 제한 및 정지시킬 수 있습니다.
                                                        <br>&nbsp; 1. 가입 신청 시에 허위 내용을 등록한 경우
                                                        <br>&nbsp; 2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
                                                        <br>&nbsp; 3. 다른 사람의 “몰” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
                                                        <br>&nbsp; 4. “몰”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
                                                        <br>③ “몰”이 회원 자격을 제한.정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 “몰”은 회원자격을 상실시킬 수 있습니다.
                                                        <br>④ “몰”이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.</p>

                                                    <p>제8조(회원에 대한 통지)
                                                        <br>① “몰”이 회원에 대한 통지를 하는 경우, 회원이 “몰”과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.
                                                        <br>② “몰”은 불특정다수 회원에 대한 통지의 경우 1주일이상 “몰” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.</p>

                                                    <p>제9조(구매신청)
                                                        <br>① “몰”이용자는 “몰”상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, “몰”은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.
                                                        <br>&nbsp; 1. 재화 등의 검색 및 선택
                                                        <br>&nbsp; 2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력
                                                        <br>&nbsp; 3. 약관내용, 청약철회권이 제한되는 서비스, 배송료.설치비 등의 비용부담과 관련한 내용에 대한 확인
                                                        <br>&nbsp; 4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)
                                                        <br>&nbsp; 5. 재화등의 구매신청 및 이에 관한 확인 또는 “몰”의 확인에 대한 동의
                                                        <br>&nbsp; 6. 결제방법의 선택
                                                        <br>② “몰”이 제3자에게 구매자 개인정보를 제공·위탁할 필요가 있는 경우 실제 구매신청 시 구매자의 동의를 받아야 하며, 회원가입 시 미리 포괄적으로 동의를 받지 않습니다. 이 때 “몰”은 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용 목적 및 보유·이용 기간 등을 구매자에게 명시하여야 합니다. 다만 「정보통신망이용촉진 및 정보보호 등에 관한 법률」 제25조 제1항에 의한 개인정보 처리위탁의 경우 등 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다.</p>

                                                    <p>제10조 (계약의 성립)
                                                        <br>① “몰”은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
                                                        <br>&nbsp; 1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
                                                        <br>&nbsp; 2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
                                                        <br>&nbsp; 3. 기타 구매신청에 승낙하는 것이 “몰” 기술상 현저히 지장이 있다고 판단하는 경우
                                                        <br>② “몰”의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.
                                                        <br>③ “몰”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.</p>

                                                    <p>제11조(지급방법)
                                                        <br>“몰”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법중 가용한 방법으로 할 수 있습니다. 단, “몰”은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.
                                                        <br>1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체
                                                        <br>2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제
                                                        <br>3. 온라인무통장입금
                                                        <br>4. 전자화폐에 의한 결제
                                                        <br>5. 수령 시 대금지급
                                                        <br>6. 마일리지 등 “몰”이 지급한 포인트에 의한 결제
                                                        <br>7. “몰”과 계약을 맺었거나 “몰”이 인정한 상품권에 의한 결제
                                                        <br>8. 기타 전자적 지급 방법에 의한 대금 지급 등</p>

                                                    <p>제12조(수신확인통지.구매신청 변경 및 취소)
                                                        <br>① “몰”은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.
                                                        <br>② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 “몰”은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.</p>

                                                    <p>제13조(재화 등의 공급)
                                                        <br>① “몰”은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “몰”이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 이때 “몰”은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.
                                                        <br>② “몰”은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “몰”이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 “몰”이 고의.과실이 없음을 입증한 경우에는 그러하지 아니합니다.</p>

                                                    <p>제14조(환급)
                                                        <br>“몰”은 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.</p>

                                                    <p>제15조(청약철회 등)
                                                        <br>① “몰”과 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다.
                                                        <br>② 이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.
                                                        <br>&nbsp; 1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)
                                                        <br>&nbsp; 2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우
                                                        <br>&nbsp; 3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우
                                                        <br>&nbsp; 4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우
                                                        <br>③ 제2항제2호 내지 제4호의 경우에 “몰”이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.
                                                        <br>④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.</p>

                                                    <p>제16조(청약철회 등의 효과)
                                                        <br>① “몰”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게 재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」제21조의2에서 정하는 지연이자율(괄호 부분 삭제)을 곱하여 산정한 지연이자를 지급합니다.
                                                        <br>② “몰”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.
                                                        <br>③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이 부담합니다.
                                                        <br>④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.</p>

                                                    <p>제17조(개인정보보호)
                                                        <br>① “몰”은 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다.
                                                        <br>② “몰”은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.
                                                        <br>③ “몰”은 이용자의 개인정보를 수집·이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다.
                                                        <br>④ “몰”은 수집된 개인정보를 목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용·제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.
                                                        <br>⑤ “몰”이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보보호 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.
                                                        <br>⑥ 이용자는 언제든지 “몰”이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
                                                        <br>⑦ “몰”은 개인정보 보호를 위하여 이용자의 개인정보를 처리하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.
                                                        <br>⑧ “몰” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.
                                                        <br>⑨ “몰”은 개인정보의 수집·이용·제공에 관한 동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집·이용·제공에 관한 이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.</p>

                                                    <p>제18조(“몰“의 의무)
                                                        <br>① “몰”은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화.용역을 제공하는데 최선을 다하여야 합니다.
                                                        <br>② “몰”은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.
                                                        <br>③ “몰”이 상품이나 용역에 대하여 「표시.광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시.광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.
                                                        <br>④ “몰”은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.</p>

                                                    <p>제19조(회원의 ID 및 비밀번호에 대한 의무)
                                                        <br>① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.
                                                        <br>② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
                                                        <br>③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “몰”에 통보하고 “몰”의 안내가 있는 경우에는 그에 따라야 합니다.</p>

                                                    <p>제20조(이용자의 의무)
                                                        <br>이용자는 다음 행위를 하여서는 안 됩니다.
                                                        <br>1. 신청 또는 변경시 허위 내용의 등록
                                                        <br>2. 타인의 정보 도용
                                                        <br>3. “몰”에 게시된 정보의 변경
                                                        <br>4. “몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
                                                        <br>5. “몰” 기타 제3자의 저작권 등 지적재산권에 대한 침해
                                                        <br>6. “몰” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
                                                        <br>7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위
                                                        <br>
                                                        <br>제21조(연결“몰”과 피연결“몰” 간의 관계)
                                                        <br>① 상위 “몰”과 하위 “몰”이 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 “몰”(웹 사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다.
                                                        <br>② 연결“몰”은 피연결“몰”이 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결“몰”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.</p>

                                                    <p>제22조(저작권의 귀속 및 이용제한)
                                                        <br>① “몰“이 작성한 저작물에 대한 저작권 기타 지적재산권은 ”몰“에 귀속합니다.
                                                        <br>② 이용자는 “몰”을 이용함으로써 얻은 정보 중 “몰”에게 지적재산권이 귀속된 정보를 “몰”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.
                                                        <br>③ “몰”은 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.</p>

                                                    <p>제23조(분쟁해결)
                                                        <br>① “몰”은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치.운영합니다.
                                                        <br>② “몰”은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.
                                                        <br>③ “몰”과 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.</p>

                                                    <p>제24조(재판권 및 준거법)
                                                        <br>① “몰”과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.
                                                        <br>② “몰”과 이용자 간에 제기된 전자상거래 소송에는 한국법을 적용합니다.
                                                        <br>부 칙(시행일) 이 약관은 2020년 7월 15일부터 시행합니다. 부 칙(시행일) 이 약관은 2020년 7월 15일부터 시행합니다. </p>


                                                    <div id="spec1" style="position:relative; z-index:1; left:0px; top:0px;display:none;">
                                                        <div style="position:absolute; width:300px; height:314px; left:30px; top:30px; z-index:1; background:#ffffff; border:1px solid #909090; font-size:0.9em; line-height:1.5em; padding:10px 10px;">
                                                            <div>
                                                                <strong>수집하는 개인정보</strong>
                                                                <br> 회사는 고객상담, 문의 및 불만 해소를 위해 아래와
                                                                <br> 같은 개인정보를 수집합니다. 서비스 신청 등등을
                                                                <br> 위해 아래와 같은 개인정보를 수집하고 있습니다.
                                                                <br> &nbsp;- 수집항목 : 이름 , 전화번호 , 이메일
                                                                <br> &nbsp;- 수집방법 : 홈페이지 온라인상담 게시판을 통해
                                                                <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 이용자가 자발적으로 기입
                                                            </div>
                                                            <div style="padding:6px 0;">
                                                                <strong>개인정보의 수집 및 이용목적</strong>
                                                                <br> 회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.
                                                                <br> &nbsp;- 고객 문의응답, 불만처리 등
                                                            </div>
                                                            <div>
                                                                <strong>개인정보의 보유 및 이용기간</strong>
                                                                <br> 개인정보수집 및 이용목적 달성 이후 즉시 파기를
                                                                <br> 원칙으로 합니다.

                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header d-flex justify-content-between align-items-center" id="headingTwo"  data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                                <p class="mb-0 text-dark">
                                                    [필수] 개인정보 수집 및 이용 동의
                                                </p>
                                                <div class="form-group m-0">
                                                    <input class="terms" type="checkbox" id="terms2" name="terms2" value="Y" onclick="event.stopPropagation();">
                                                    <label class="m-0" for="terms2" onclick="event.stopPropagation();">동의함</label>
                                                </div>
                                            </div>
                                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                                <div class="card-body pre-scrollable">
                                                    <h4>1.&nbsp;처리하는 개인정보 항목 및 처리 목적</h4>
                                                    1)&nbsp;회사는 다음의 목적을 위하여 개인정보를 처리합니다.&nbsp;처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며,&nbsp;이용 목적이 변경되는 경우에는&nbsp;『개인정보 보호법』 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정 입니다.&nbsp;또한&nbsp;본질적인 서비스 제공을 위한 『필수동의』와 고객 각각의 기호와 필요에 맞는 서비스를 제공하기 위한 『선택동의』로 구분되어 다음의 정보를 처리하고 있으며,&nbsp;<strong class="bold" style="font-size:1.3em; font-weight:700;">『선택동의』를 하지 않은 경우에도 서비스 이용 제한은 없습니다.</strong>
                                                    <br>

                                                    <table border="1" cellpadding="0" cellspacing="0" style="width: 100%; border: 1px solid #444444; border-collapse: collapse; margin: 10px 0px 10px 0px; font-size:12px; padding: 10px;" width="93%"><tbody><tr style="border: 1px solid #444444; padding: 10px;"><td width="18.331374853113985%"><strong style="font-size:1.3em; font-weight:700;">구분</strong></td>
                                                        <td width="37.132784958871916%"><strong style="font-size:1.3em; font-weight:700;">개인정보 항목</strong></td>
                                                        <td width="44.5358401880141%"><strong style="font-size:1.3em; font-weight:700;">처리 목적</strong></td></tr>
                                                    <tr style="border: 1px solid #444444; padding: 10px;"><td width="18.331374853113985%">회원가입</td>
                                                        <td width="37.132784958871916%">[필수]&nbsp;아이디,&nbsp;비밀번호,&nbsp;이름,&nbsp;휴대전화,&nbsp;이메일
                                                            <br>[선택]&nbsp;주소,&nbsp;일반 전화번호</td>
                                                        <td width="44.5358401880141%">-&nbsp;이용자의 식별 및 회원서비스 제공
                                                            <br>-&nbsp;서비스 이용,&nbsp;주문 및 거래정보에 대한 공지 및 상담
                                                            <br><strong>-&nbsp;</strong><strong class="bold" style="font-size:1.3em; font-weight:700;">마케팅 활용 및 광고성 정보 전달</strong>
                                                            <br>-&nbsp;서비스 이용 내역 분석</td></tr>
                                                    <tr style="border: 1px solid #444444; padding: 10px;"><td width="18.331374853113985%">SNS&nbsp;계정 가입</td>
                                                        <td width="37.132784958871916%">[필수 –&nbsp;네이버]&nbsp;이름,&nbsp;이메일주소,&nbsp;휴대폰번호
                                                            <br>[필수 –&nbsp;카카오]&nbsp;카카오계정 이메일,&nbsp;프로필정보(닉네임)</td>
                                                        <td width="44.5358401880141%">-&nbsp;이용자의 식별 및 회원서비스 제공
                                                            <br>-&nbsp;서비스 이용,&nbsp;주문 및 거래정보에 대한 공지 및 상담
                                                            <br>-&nbsp;<strong class="bold" style="font-size:1.3em; font-weight:700;">마케팅 활용 및 광고성 정보 전달</strong>
                                                            <br>-&nbsp;서비스 이용 내역 분석</td></tr>
                                                    <tr style="border: 1px solid #444444; padding: 10px;"><td width="18.331374853113985%">회원,&nbsp;비회원 구매 시</td>
                                                        <td width="37.132784958871916%">[필수 –&nbsp;수취인정보]&nbsp;수취인명,&nbsp;주소,&nbsp;휴대폰번호,&nbsp;이메일주소
                                                            <br>[필수 –&nbsp;계좌이체]&nbsp;예금주명</td>
                                                        <td width="44.5358401880141%">-&nbsp;구매물품 배송,&nbsp;고객과 체결한 계약의 이행
                                                            <br>-&nbsp;민원사항의 상담 및 처리</td></tr>
                                                    <tr style="border: 1px solid #444444; padding: 10px;"><td width="18.331374853113985%">비회원 구매 시</td>
                                                        <td width="37.132784958871916%">[필수]&nbsp;주문자명,&nbsp;주문조회 비밀번호</td>
                                                        <td width="44.5358401880141%">비회원 주문 내역 조회 시 본인확인</td></tr>
                                                    <tr style="border: 1px solid #444444; padding: 10px;"><td width="18.331374853113985%">현금영수증 신청 시</td>
                                                        <td width="37.132784958871916%">[필수]&nbsp;개인 휴대폰번호</td>
                                                        <td width="44.5358401880141%">현금영수증 발급</td></tr>
                                                    <tr style="border: 1px solid #444444; padding: 10px;"><td width="18.331374853113985%">고객만족센터&nbsp;1:1&nbsp;문의</td>
                                                        <td width="37.132784958871916%">[필수]&nbsp;작성자 이름,&nbsp;상담내용,&nbsp;비밀번호(비밀글 작성 시)</td>
                                                        <td width="44.5358401880141%">고객상담,&nbsp;상담 처리,&nbsp;진행사항 및 결과 통보</td></tr>
                                                    <tr style="border: 1px solid #444444; padding: 10px;"><td width="18.331374853113985%">자동생성정보</td>
                                                        <td width="37.132784958871916%">IP주소,&nbsp;쿠키,&nbsp;접속일시,&nbsp;기타 서비스 이용기록</td>
                                                        <td width="44.5358401880141%">서비스 이용기록 및 통계분석</td></tr></tbody></table>&nbsp;
                                                    <br>&nbsp;2)&nbsp;회사는 다음과 같은 방법으로 개인정보를 수집할 수 있으며 개인식별이 가능한 개인정보를 수집하는 경우에는 고객으로부터 동의를 받습니다.&nbsp;고객이 동의 버튼을 클릭하거나,&nbsp;내 정보 수정 등을 통해 추가로 수집하는 개인정보를 기재한 후 저장할 경우 개인정보 수집에 동의한 것으로 봅니다.
                                                    <br>&nbsp;①&nbsp;홈페이지,&nbsp;모바일앱,&nbsp;서면,&nbsp;팩스,&nbsp;전화,&nbsp;고객센터 문의하기,&nbsp;이벤트 응모
                                                    <br>&nbsp;②&nbsp;서비스 이용 과정에서 자동으로 생성되는 정보
                                                    <br>

                                                    <table border="1" cellpadding="0" cellspacing="0" style="width: 100%; border: 1px solid #444444; border-collapse: collapse; margin: 10px 0px 10px 0px; font-size:12px; padding: 10px;" width="93%"><tbody><tr><td width="32.63506063947078%"><strong style="font-size:1.3em; font-weight:700;">수집 및 이용 목적</strong></td>
                                                        <td width="29.878721058434397%"><strong style="font-size:1.3em; font-weight:700;">수집항목</strong></td>
                                                        <td width="37.48621830209482%"><strong style="font-size:1.3em; font-weight:700;">보유기간</strong></td></tr>
                                                    <tr><td width="32.63506063947078%">서비스 이용기록 및 통계분석,&nbsp;부정이용 방지,&nbsp;개인정보 침해사고 대비</td>
                                                        <td width="29.878721058434397%">IP주소,&nbsp;쿠키,&nbsp;접속 일시,&nbsp;서비스 이용기록</td>
                                                        <td width="37.48621830209482%">회원탈퇴 시 또는 법정 의무 보관기간
                                                            <br>(쿠키는 브라우저 종료 시 또는 로그아웃 시 만료)</td></tr></tbody></table>&nbsp;
                                                    <br>3)&nbsp;회사는 통계 작성,&nbsp;과학적 연구,&nbsp;공익적 기록보존 등을 위하여 개인정보를 가명처리하여 활용할 수 있습니다.
                                                    <br>&nbsp;
                                                    <br>&nbsp;
                                                    <br>

                                                    <h4>2.&nbsp;개인정보의 처리 및 보유기간</h4>
                                                    <br><strong class="bold">1)&nbsp;회사는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유·이용기간 내에서 개인정보를 처리·보유 합니다.&nbsp;각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.</strong>
                                                    <br>

                                                    <table border="1" cellpadding="0" cellspacing="0" style="width: 100%; border: 1px solid #444444; border-collapse: collapse; margin: 10px 0px 10px 0px; font-size:12px; padding: 10px;" width="93%"><tbody><tr><td width="15.350877192982455%"><strong style="font-size:1.3em; font-weight:700;">개인정보 유형</strong></td>
                                                        <td width="31.469298245614034%"><strong style="font-size:1.3em; font-weight:700;">보유목적</strong></td>
                                                        <td width="29.82456140350877%"><strong style="font-size:1.3em; font-weight:700;">관련 근거</strong></td>
                                                        <td width="23.355263157894736%"><strong style="font-size:1.3em; font-weight:700;">보유기간</strong></td></tr>
                                                    <tr><td rowspan="2" width="15.350877192982455%">회원정보</td>
                                                        <td width="31.469298245614034%">이용자 식별 및 서비스 제공,&nbsp;서비스 이용에 대한 공지 및 상담</td>
                                                        <td width="29.82456140350877%">정보주체 동의</td>
                                                        <td width="23.355263157894736%"><strong class="bold" style="font-size:1.3em; font-weight:700;">탈퇴 후 지체없이 파기</strong></td></tr>
                                                    <tr><td width="37.17616580310881%">서비스 이용 및 상담,&nbsp;소비자 불만,&nbsp;분쟁처리에 관한 기록</td>
                                                        <td width="35.233160621761655%">전자상거래 등에서의 소비자보호에 관한 법률</td>
                                                        <td width="27.590673575129532%"><strong class="bold" style="font-size:1.3em; font-weight:700;">3년</strong></td></tr>
                                                    <tr><td rowspan="2" width="15.350877192982455%">결제정보
                                                        <br>(회원,&nbsp;비회원)</td>
                                                        <td width="31.469298245614034%">주문 상품의 결제 및 환불,&nbsp;배송</td>
                                                        <td width="29.82456140350877%">정보주체 동의</td>
                                                        <td width="23.355263157894736%"><strong class="bold" style="font-size:1.3em; font-weight:700;">법정 의무 보관기간</strong></td></tr>
                                                    <tr><td width="37.17616580310881%">계약 또는 청약 철회에 관한 기록</td>
                                                        <td width="35.233160621761655%">전자상거래 등에서의 소비자보호에 관한 법률</td>
                                                        <td width="27.590673575129532%"><strong class="bold" style="font-size:1.3em; font-weight:700;">5년</strong></td></tr>
                                                    <tr><td rowspan="2" width="15.350877192982455%">기타 서비스</td>
                                                        <td width="31.469298245614034%">부정 이용자 식별</td>
                                                        <td width="29.82456140350877%">통신비밀보호법</td>
                                                        <td width="23.355263157894736%"><strong class="bold" style="font-size:1.3em; font-weight:700;">3개월</strong></td></tr>
                                                    <tr><td width="37.17616580310881%">현금영수증 발급,&nbsp;제세공과금 처리</td>
                                                        <td width="35.233160621761655%">소득세법</td>
                                                        <td width="27.590673575129532%"><strong class="bold" style="font-size:1.3em; font-weight:700;">5년</strong></td></tr></tbody></table><strong>&nbsp;</strong>
                                                    <br>2)&nbsp;다만,&nbsp;다음의 사유에 해당하는 경우에는 해당 사유 종료 시 까지 처리 및 보유합니다.
                                                    <br>①&nbsp;이용요금의 정산,&nbsp;소송이나 분쟁 등 기타 필요한 경우
                                                    <br>②&nbsp;관계 법령의 규정에 의하여 보존할 필요가 있는 경우
                                                    <br>

                                                    <table border="1" cellpadding="0" cellspacing="0" style="width: 100%; border: 1px solid #444444; border-collapse: collapse; margin: 10px 0px 10px 0px; font-size:12px; padding: 10px;" width="93%"><tbody><tr><td width="40%"><strong style="font-size:1.3em; font-weight:700;">관련법령</strong></td>
                                                        <td width="40%"><strong style="font-size:1.3em; font-weight:700;">보유항목</strong></td>
                                                        <td width="20%"><strong style="font-size:1.3em; font-weight:700;">보유기간</strong></td></tr>
                                                    <tr><td rowspan="4" width="40%">전자상거래 등에서의 소비자 보호에 관한 법률 및 동법 시행령</td>
                                                        <td width="40%">계약 또는 청약 철회에 관한 기록</td>
                                                        <td width="20%">5년</td></tr>
                                                    <tr><td width="40%">대금결제 및 재화 등의 공급에 관한 기록</td>
                                                        <td width="20%">5년</td></tr>
                                                    <tr><td width="40%">소비자의 불만 또는 분쟁처리에 관한 기록</td>
                                                        <td width="20%">3년</td></tr>
                                                    <tr><td width="40%">표시∙광고에 관한 기록</td>
                                                        <td width="20%">6개월</td></tr>
                                                    <tr><td width="40%">통신비밀보호법 및 동법 시행령</td>
                                                        <td width="40%">인터넷 로그기록,&nbsp;접속지 추적자료</td>
                                                        <td width="20%">3개월</td></tr></tbody></table>※&nbsp;개인정보 유효기간제에 따라&nbsp;1년(고객이 별도로 요청한 경우 그 기간)&nbsp;동안 서비스를 이용하지 않은 회원의 개인정보는 별도 분리하여 안전하게 관리 됩니다.&nbsp;단,&nbsp;회원가입 시&nbsp;“평생회원”&nbsp;가입에 동의한 회원정보는 개인정보 유효기간제에 적용되지 않고 회원 탈퇴 시까지 파기되지 않습니다.
                                                    <br>&nbsp;
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header d-flex justify-content-between align-items-center" id="headingThree"  data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                                                <p class="mb-0 text-dark">
                                                    [선택] 쇼핑정보 수신 동의
                                                </p>
                                                <div class="form-group m-0">
                                                    <input class="terms" type="checkbox" id="terms3" name="terms3" value="Y" onclick="event.stopPropagation();">
                                                    <label class="m-0" for="terms3" onclick="event.stopPropagation();">동의함</label>
                                                </div>
                                            </div>
                                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                <div class="card-body pre-scrollable">
                                                    <p>할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나 이메일로 받아보실 수 있습니다.</p>
                                                    <p>단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.</p>
                                                    <p>선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지 수신여부를 변경하실 수 있습니다.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header d-flex justify-content-between align-items-center" id="headingFour"  data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                                                <p class="mb-0 text-dark">
                                                    [선택] SMS 및 이메일 수신 동의
                                                </p>
                                                <div class="form-group m-0">
                                                    <input class="terms" type="checkbox" id="terms4" name="terms4" value="Y" onclick="event.stopPropagation();">
                                                    <label class="m-0" for="terms4" onclick="event.stopPropagation();">동의함</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pt-3 d-flex flex-column" style="gap : 10px">
                                    <button type="submit" class="btn btn-success w-100">제출하기</button>
                                    <button type="button" class="btn btn-outline-success w-100" onclick="location.href = '/'">취소</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Login Box Area =================-->
</main>
<!--================ 본문 END =================-->

<!-- 사이드바 -->
<jsp:include page="/WEB-INF/views/common/sidebar.jsp" />
<!-- 사이드바 끝 -->

<!--================ 푸터 Start =================-->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<!--================ 푸터 End =================-->
<script>
    const agreeAll = document.getElementById('agreeAll');
    agreeAll.addEventListener('change', ()=>{
        let checkYN = agreeAll.checked;
        let terms = document.querySelectorAll('.terms');
        if(checkYN) {
            for (let term of terms) {
                term.checked = true;
            }
        } else {
            for (let term of terms) {
                term.checked = false;
            }
        }
    })

</script>

<!-- 다음 주소 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
<!-- 다음 주소 api -->

<script src="/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
<script src="/resources/vendors/skrollr.min.js"></script>
<script src="/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="/resources/vendors/jquery.ajaxchimp.min.js"></script>
<script src="/resources/vendors/mail-script.js"></script>
<script src="/resources/js/main.js"></script>
</body>

