package site.metacoding.firstapp.web.dto.subscribe;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubscribeDto {
    private Integer subscribeId;
    private Integer userId;
    private Integer opponentId;
}
