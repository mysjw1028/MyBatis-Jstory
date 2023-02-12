<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="../layout/post-header.jsp"%>

<div class="container">


    <div style="display: inline-flex;">
        <div style="width: 100px;">
            <h5 style="line-height: 50px;">전체글(${postCount.postCount})</h5>
        </div>


        <input id="asd" type="hidden" value="${principal.userId}" />
        <input id="subscribeId" type="hidden" value="${postList[0].subscribeId}" />
        <input id="opponentId" type="hidden" value="${postList[0].userId}" />


        <!-- 검색바 -->
        <div class="form-group row justify-content-left" style="padding-left: 15px">
            <div class="d-flex justify-content-end">
                <div>
                    <form style="display: inline-flex" method="get" action="/post/listForm/${principal.userId}">
                        <input style="width: 150px" class="my_auth_form_box_input" type="text" placeholder="Search"
                            name="keyword"><!--input에 name으로 걸면 굳이 action에 하면 상관없다.-->
                        <button class="btn btn-sm btn-light" type="submit">
                            Search </button>
                    </form>
                </div>
            </div>
            <div class="form-group row justify-content-left" style="padding-left: 15px">
            </div>
        </div>



        <!--포스팅하러가기-->
        <button id="postingCheckBox" class="postingCheckBox" type="button">
            <a href="/post/writeForm/${principal.userId}">포스팅하러 하기</a>
        </button>

        <!-- 구독  버튼 이름 제대로 변경되지 않음!-->
        <c:if test="${principal.userId != user.userId}">
            <button id="subscribeBtn" class="btn btn-outline-primary" value="${postList[0].subscribeId}">
                ${postList[0].subscribeId !=null ? '구독중': '구독'}
            </button>
        </c:if>

    </div>




    <!-- 게시글 작성 -->

    <div class="my_post_list">
        <c:forEach var="post" items="${postList}">
            <div class="my_post_list_item">
                <div class="my_post_list_item_left">
                    <img id="profileImg" src="/img/${post.postThumnail}" style="width: 100%;height:100%;">
                    <!-- 사진 사이즈 조절 -->
                </div>

                <div class="my_post_list_item_right my_ellipsis">
                    <div style="color: gray; font-size: 18;">
                        ${post.categoryTitle}
                    </div>

                    <input id="postTitle" type="hidden" value="${post.postTitle}" name=postTitle>
                    <div class="my_text_title my_ellipsis">
                        ${post.postTitle}
                    </div>
                    <div>${post.createdAt}</div>
                    <div class="my_mt_md_1" style="padding-top: 30px;">
                        <a href="/post/detailForm/${post.postId}/${principal.userId}">
                            <button type="button" class="btn btn-light" style="border:2px solid black" ;line-height:
                                20px;>더보기</button>
                        </a>
                    </div>
                </div>
            </div>

        </c:forEach>

        <!-- 페이지 -->
        <div class="d-flex justify-content-center">
            <ul class="pagination">
                <li class='page-item ${paging.first ? "disabled" : ""}'><a class="page-link"
                        href="?page=${paging.currentPage-1}&keyword=${paging.keyword}">Prev</a></li>

                <c:forEach var="num" begin="${paging.startPageNum}" end="${paging.lastPageNum}" step="1">
                    <li class='page-item ${paging.currentPage == num-1 ? "active" : ""}'><a class='page-link'
                            href="?page=${num-1}&keyword=${paging.keyword}">${num}</a></li>
                </c:forEach>

                <li class='page-item ${paging.last ? "disabled" : ""}'><a class="page-link"
                        href="?page=${paging.currentPage+1}&keyword=${paging.keyword}">Next</a></li>
            </ul>
        </div>




        <script>
            //구독버튼을  클릭했을때의 로직
            let subscribetest = subscribeId;
            if ($(subscribeId).val == "") { subscribetest == false } else subscribetest == true;

            $("#subscribeBtn").click(() => {
                console.log("구독버튼 실행됨");
                let isSubscribeState = $("#subscribeId").val();

                if (isSubscribeState == "") {
                    insertSubscribe();
                    subscribetest = true;
                    console.log("위에꺼 실행됨");
                } else {
                    deleteSubscribe();
                    subscribetest == false;
                    console.log("아래꺼 실행됨");
                }
            });

            // DB에 insert 요청하기
            function insertSubscribe() {
                let opponentId = $("#opponentId").val();
                let userId = $("#asd").val();

                $.ajax("/post/listForm/" + userId + "/subscribe/" + opponentId, {
                    type: "POST",
                    dataType: "json"
                }).done((res) => {
                    if (res.code == 1) {
                        $("#subscribeId").val(res.data.subscribeId);
                        alert("구독에 성공했습니다");
                    } else {
                        alert("구독 실패했습니다");
                    }
                });
            }

            // DB에 delete 요청하기
            function deleteSubscribe() {//delete는 바디 데이터가 없다
                let subscribeId = $("#subscribeId").val();
                let userId = $("#asd").val();

                $.ajax("/post/listForm/" + userId + "/subscribe/" + subscribeId, {
                    type: "DELETE",
                    dataType: "json"
                }).done((res) => {
                    if (res.code == 1) {
                        alert("구독 취소에 성공했습니다");
                        isSubscribeState = $("subscribeId").val('');
                        reflash(subscribeId);
                        console.log(isSubscribeState);
                    } else {
                        alert("구독 취소에 실패했습니다");
                    }
                });

                function reflash(subscribeId) {
                    location.reload();
                    $("#subscribeId").val(subscribeId);
                }


            }

        </script>






        <%@ include file="../layout/footer.jsp"%>