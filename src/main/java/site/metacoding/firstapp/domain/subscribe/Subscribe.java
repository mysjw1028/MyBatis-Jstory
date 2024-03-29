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
    private Integer userId; // 자기
    private Integer opponentId; // 상대방
    private Timestamp createdAt;

    public Subscribe(Integer userId, Integer opponentId) {
        this.userId = userId;
        this.opponentId = opponentId;
    }
}
