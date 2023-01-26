package site.metacoding.firstapp.domain.comment;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.firstapp.web.dto.comment.CommentRespUpdateDto;

@Getter
@Setter
public class Comment {
    private Integer commentId;
    private Integer userId;
    private Integer postId;
    private String commentContent;
    private Timestamp updatedAt;
    private Timestamp createdAt;

    // 가짜데이터
    private String nickName;

    public void update(CommentRespUpdateDto commentRespUpdateDto) {
        this.commentContent = commentRespUpdateDto.getCommentContent();
    }// 걍 메소드 인데 만약에 작동을 안되면 디폴트 생성자나 해당되는것에 생성자를 만들어야하한다.

}
