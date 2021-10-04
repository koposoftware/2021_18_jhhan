<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>play하나 금융지식 능력고사</title>
    <link rel="stylesheet" href="style.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery.min.js"></script>
    <!-- FontAweome CDN Link for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<body>
    <!-- start Quiz button -->
    <div class="start_btn"><button> 2021 투자능력고사 <br>시작하기!</button></div>

    <!-- Info Box -->
    <div class="info_box">
        <div class="info-title"><span>퀴즈 시작시 공지사항</span></div>
        <div class="info-list">
            <div class="info">1. 질문에 대한 답변은 <span>15 초 이내</span>에 해주세요.</div>
            <div class="info">2. 한번 답을 고르면, 다시 선택하실 수 없습니다.</div>
            <div class="info">3. 시간이 다 되면 아무런 답도 선택할 수 없어요ㅠㅠ</div>
            <div class="info">4. 퀴즈가 진행되고 있는 중에는 페이지를 나가시면 안됩니다.</div>
            <div class="info">5. 정답일 경우 점수를 얻게 됩니다!</div>
            <div class="info"><br>그럼 시작하러 가볼까요~?</div>
        </div>
        <div class="buttons">
            <button class="quit">안할래요</button>
            <button class="restart">시작하기!!</button>
        </div>
    </div>

    <!-- Quiz Box -->
    <div class="quiz_box">
        <header>
            <div class="title">PlayHana 투자능력고사</div>
            <div class="timer">
                <div class="time_left_txt">시간</div>
                <div class="timer_sec">15</div>
            </div>
            <div class="time_line"></div>
        </header>
        <section>
            <div class="que_text">
                <!-- 질문들어감 -->
            
            </div>
            <div class="option_list">
                <!-- 보기들어감 -->
            </div>
        </section>

        <!-- footer of Quiz Box -->
        <footer>
            <div class="total_que">
                <!-- 문제번호 -->
            </div>
            <button class="next_btn">다음문제</button>
        </footer>
    </div>

    <!-- Result Box -->
    <div class="result_box">
        <div class="icon">
            <i class="fas fa-crown"></i>
        </div>
        <div class="complete_text">투자능력고사 완료!</div>
        <div class="score_text">
            <!-- 점수-->
        </div>
        <div class="buttons">
            <button class="restart">다시하러가기</button>
            <button class="quit">끝내기</button>
        </div>
    </div>

    <!-- Inside this JavaScript file I've inserted Questions and Options only -->
    <script src="js/questions.js"></script>

    <!-- Inside this JavaScript file I've coded all Quiz Codes -->
    <script src="js/script.js"></script>

</body>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/quiz/style.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/quiz/js/questions.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/quiz/js/script.js"></script>