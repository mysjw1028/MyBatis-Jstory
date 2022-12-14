<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="../layout/main-header.jsp"%>
<div class="container">
    <div class="my_auth_box">
        <div div class="my_auth_form_box">
            <div class="my_auth_form_box_title">제이스토리 계정 탈퇴</div>
            <div class="my_auth_form_box_sub_title">
                <input type="hidden" id="userId" value="${principal.userId}">
                <div>제이스토리 계정을 탈퇴합니다.</div>
                <div>작성하신 게시글도 모두 삭제됩니다.</div>
            </div>
            <form>
                <div style="display: flex">
                    <div class="my_auth_form_box_info_detail">비밀번호</div>
                    <input id="password" class="my_auth_form_box_input" type="password" />
                </div>

                <div style="text-align: right">
                    <button id="btnDelete" class="btn btn-outline-danger">
                        탈퇴
                    </button>
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