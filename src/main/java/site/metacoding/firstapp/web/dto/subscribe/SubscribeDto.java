package site.metacoding.firstapp.web.dto.subscribe;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubscribeDto {
    private Integer subscribeId;
    private Integer userId;
    private Integer opponentId;
    public static Object findById(Integer subscribeId2, Integer userId2) {
        return null;
    }
}
