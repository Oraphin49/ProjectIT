package it_sci.service;

import it_sci.dao.NewsDao;
import it_sci.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsDao newsDao;

    @Override
    @Transactional
    public List<News> getNews() {return newsDao.getNews();}



    @Override
    @Transactional
    public News getNews(Long newsID) {
        return newsDao.getNews(newsID);
    }

    @Override
    @Transactional
    public void SaveNews(News news) {
        long id = newsDao.getLatestId();
//        news.setId(generateLatestId(id + 1));
        newsDao.SaveNews(news);
    }

    public String generateLatestId (long id) {
        String result = String.valueOf(id);
        while (result.length() != 3) {
            result = "0" + result;
        }
        return "N" + result;
    }

    @Override
    @Transactional
    public void EditNews(News news) {
        newsDao.EditNews(news);
    }

    @Override
    @Transactional
    public void removeNews(Long id) {
        newsDao.removeNews(id);
    }
}
