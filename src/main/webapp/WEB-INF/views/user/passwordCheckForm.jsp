<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="../layout/main-header.jsp"%>
<div class="container">
    <div class="my_auth_box">
        <div div class="my_auth_form_box">
            <div class="my_auth_form_box_title">비밀번호를 다시 입력하세요.</div>
            <div class="my_auth_form_box_sub_title">
                <div>중요한 정보에 접근하려고 합니다.</div>
                <div>비밀번호를 다시 입력하세요</div>
            </div>

            <form action="/user/passwordCheck/${principal.userId}" method="POST">

                <input type="hidden" name="userId" value="${principal.userId}" id="userId">

                <input id="password" name="password" class="my_auth_form_box_input" type="password"
                    placeholder="비밀번호" />

                <input type="hidden" name="userId" , value="${principal.userId}">

                <button class="my_secondary_btn" id="checkBtn" type="submit">확인</button>

                <div>
                    <a href="/user/passwordResetForm">비밀번호 찾기</a>
                </div>

            </form>

        </div>
    </div>
</div>
</div>
<br />
<br />
<br />

<%@ include file="../layout/footer.jsp"%>