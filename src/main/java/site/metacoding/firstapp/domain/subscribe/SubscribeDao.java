package site.metacoding.firstapp.domain.subscribe;

import java.util.List;

public interface SubscribeDao {
    public void insert(Subscribe subscribe);

    public List<Subscribe> findAll();

    public void findByDetail(Subscribe subscribe);

    public void findById(Integer subscribeId);

    public void update(Subscribe subscribe);

    public void deleteById(Integer subscribeId);
}
