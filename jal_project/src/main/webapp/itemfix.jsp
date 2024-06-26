<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WMS 잘해보조</title>
    <link rel="stylesheet" href="../css/layout.css">
    <link rel="stylesheet" href="../css/ui.css">
    <link rel="stylesheet" href="../css/common.css">
    <!-- <link rel="stylesheet" href="../css/dashboard.css"> -->
    <link rel="stylesheet" href="../css/itemMng.css">
    <!-- <link rel="stylesheet" href="../css/inReg.css">
    <link rel="stylesheet" href="../css/outReg.css">
    <link rel="stylesheet" href="../css/invenView.css">
    <link rel="stylesheet" href="../css/inoutHistory.css">
    <link rel="stylesheet" href="../css/capacityView.css">
    <link rel="stylesheet" href="../css/boardList.css">
    <link rel="stylesheet" href="../css/userMng.css"> -->

    <script src="../js/system.js"></script>
    <script src="../js/item.js"></script>


</head>
<body>
    <header>
        <div class="top-logo">
            <img src="https://github.com/hyungaaa/team/blob/764a5932f4e0fe6e3dfc7ae81c561905ef779660/jal_logo_final.png?raw=true">
        </div>
        <div class="top-bar">
            <h1>물류관리시스템</h1>
        </div>
        <div class="top-bar-links">
            <a href="mypage.html">마이페이지</a>
            <a href="#">설정</a>
            <a href="login.html">로그아웃</a>
        </div>
    </header>
    <nav>
        <div class="navi-bar">
            <ul>
                <li class="navi-item1"><a href="dashboard.html">대시<br>보드</a></li>
                <li class="navi-item2"><a href="itemMng.jsp">제품<br>관리</a></li>
                <li class="navi-item3"><a href="inReg.html">입고<br>등록</a></li>
                <li class="navi-item4"><a href="outReg.html">출고<br>등록</a></li>
                <li class="navi-item5"><a href="invenView.html">재고<br>현황</a></li>
                <li class="navi-item6"><a href="inoutHistory.html">입출고<br>이력</a></li>
                <li class="navi-item7"><a href="capacityView.jsp">수용량<br>현황</a></li>
                <li class="navi-item8"><a href="boardList.html">건의<br>게시판</a></li>
                <li class="navi-item9"><a href="userMng.html">사용자<br>관리</a></li>
            </ul>
        </div>
    </nav>
    <main>
       <!-- 새로운 제품 추가 창 -->

    <!-- 대분류 카테고리 -->
    <div id="bigCategory">
        <ul>
            <li><a href="#"><span class="mng_span">간편식사</span>></a></li>
            <li><a href="#"><span class="mng_span">과자류</span>></a></li>
            <li><a href="#"><span class="mng_span">아이스크림</span>></a></li>
            <li><a href="#"><span class="mng_span">식품</span>></a></li>
            <li><a href="#"><span class="mng_span">음료</span>></a></li>
        </ul>
        <button class="main_btn">카테고리 설정</button>
    </div>

    <!-- 제품 추가 -->

    
    <div id="productBoard_new">
       <table>
            <tr>
                <td colspan="6" height="200" auto>
                    <img src="https://i.ibb.co/X8yfSV4/image.png" class="img_fix">
                    <!-- <button type="button" class="main_btn_new2">이미지 업로드</button> -->
                    </td>
            <tr>
                <th>제품명</th>
                <td colspan="3"><input type="text" id="input_new1" value="김)크랩가득유부초밥" style="text-align: center;"></td>
                <th>대분류</th>
                <td> <select value="category" class="select_new1">
                        <option value="easy">간편식사</option>
                        <option value="snack">과자류</option>
                        <option value="icecream">아이스크림</option>
                        <option value="food">식품</option>
                        <option value="beverage">음료</option>
                      </select>
                </td>
                
            </tr>
            <tr>
                <th>제품번호</th>
                <td><input type="text" id="input_new2" value="EJB00002" style="text-align: center;"></td>
                <th>보관위치</th>
                <td><select class="select_new1">
                        <option>A-01</option>
                        <option>A-02</option>
                        <option selected>B-01</option>
                        <option>B-02</option>
                        <option>B-03</option>
                        <option>B-04</option>
                        <option>C-01</option>
                        <option>C-02</option>
                        <option>C-03</option>
                    </select>
                </td>
                <th>소분류</th>
                <td><select value="smallCategory" class="select_new1">
                    <option value="all">전체</option>
                    <option value="lunch">도시락</option>
                    <option value="sand">샌드위치/햄버거</option>
                    <option value="bob" selected>주먹밥/김밥</option>
                    <option value="etc">기타</option>
                </select></td>
                
            </tr>
            <tr>
                
                <th>규격</th>
                <td>
                    <select value="size" class="select_new1">
                        <option value="small" selected>S(소형)</option>
                        <option value="medium">M(중형)</option>
                        <option value="large">L(대형)</option>
                    </select>
                </td>
                <th>단위</th>
                <td>
                    <input type="text" id="input_new3" value="20" style="text-align: center;">
                    <select value="unit" class="select_new3">
                        <option value="each">EA</option>
                        <option value="box">box</option>
                    </select>
                </td>
                <th>등록일</th>
                    <td><input type="date" id="input_new2"></td>
            </tr>
            <tr>
                <th>관련 글</th>
                <td colspan="5">
                    <select value="BestQna" class="select_new2">
                        <option value=""></option>
                        <option value=""></option>
                        <option value=""></option>
                    </select>
                    <div id="new_button1">
                    <button type="button" class="main_btn"><a href="boardList.html" id="lim_a">더 보기</button></a>
                    </div>
                </td>
            </tr>
       </table>
       <!-- 저장 버튼 -->
       <div id="button_new">
           <button type="button" class="main_btn"><a href="itemMng.jsp" id="lim_a">취소</button></a>
           <button type="button" class="main_btn"><a href="itemMng.jsp" id="lim_a">저장</button></a>
       </div>
    </div>
    </main>
    <footer>
        <div class="footer-content">
            <div class="status-user">
                접속자: 천안센터 관리자
            </div>
            <div class="status-message">
                데이터가 조회되었습니다.
            </div>
            <div class="status-time">
                현재 시간: <span id="current-time"></span>
            </div>
        </div>
    </footer>
</body>
</html>
