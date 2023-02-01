package site.metacoding.firstapp.domain.subscribe;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class Subscribe {
    private Integer subscribeId;
    private Integer userId;
    private Integer postId;
    private Timestamp createdAt;

    public Subscribe(Integer userId, Integer postId) {
        this.userId = userId;
        this.postId = postId;
    }
}
