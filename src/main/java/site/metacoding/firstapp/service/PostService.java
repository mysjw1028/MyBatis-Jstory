package site.metacoding.firstapp.service;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import lombok.RequiredArgsConstructor;
import site.metacoding.firstapp.domain.love.Love;
import site.metacoding.firstapp.domain.love.LoveDao;
import site.metacoding.firstapp.domain.post.PostDao;
import site.metacoding.firstapp.domain.subscribe.Subscribe;
import site.metacoding.firstapp.domain.subscribe.SubscribeDao;
import site.metacoding.firstapp.web.dto.post.PostDatailDto;

@RequiredArgsConstructor
@Service
public class PostService {
    private final PostDao postDao;
    private final LoveDao loveDao;
    private final SubscribeDao subscribeDao;

    public PostDatailDto 게시글상세보기(@PathVariable Integer postId, @PathVariable Integer userId) {
        return postDao.findByDetail(postId, userId);
    }

    public Love 좋아요(Love love) {
        loveDao.insert(love);// id, usersId, boardsId 완벽하게 동기화 할려면 SELECT를 해서 해야한다,
        return love;
    }

    public void 좋아요취소(Integer loveId) {
        loveDao.deleteById(loveId);
    }

    public Subscribe 구독하기(Subscribe subscribe) {
        subscribeDao.insert(subscribe);// id, usersId, boardsId 완벽하게 동기화 할려면 SELECT를 해서 해야한다,
        return subscribe;
    }

    public void 구독취소(Integer subscribeId) {
        subscribeDao.deleteById(subscribeId);
    }

}
