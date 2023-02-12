package site.metacoding.firstapp.domain.subscribe;

import java.util.List;

import site.metacoding.firstapp.web.dto.subscribe.SubscribeDto;

public interface SubscribeDao {
    public void insert(Subscribe subscribe);

    public List<Subscribe> findAll();

    public void findByDetail(Subscribe subscribe);

    public SubscribeDto findById(Integer subscribeId, Integer userId);

    public void update(Subscribe subscribe);

    public void deleteById(Integer subscribeId);
}
