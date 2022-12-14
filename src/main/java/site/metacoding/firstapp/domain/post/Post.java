package site.metacoding.firstapp.domain.post;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Post {
    private Integer postId;
    private Integer categoryId;
    private String postTitle;
    private String nickName;
    private String postContent;
    private String postThumnail;
    private Integer userId;
    private Timestamp updatedAt;
    private Timestamp createdAt;

    // db에 없는값
    private Integer loveCount;
    private String postCount;
    private Integer loveId;
    private String categoryTitle;

    // 페이징
    private Integer startNum;

    public void update(Post post) {
        this.postId = post.getPostId();
        this.categoryId = post.getCategoryId();
        this.postTitle = post.getPostTitle();
        this.postContent = post.getPostContent();
        this.postThumnail = post.getPostThumnail();
    }

}
