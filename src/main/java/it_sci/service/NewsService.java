package it_sci.service;

import it_sci.model.News;

import javax.transaction.Transactional;
import java.util.List;

public interface NewsService {
    List<News> getNews();

//    News getNews(Long id);

    News getNews(Long newsID);

    void saveNews(News news);

    void editNews(News news);

    void removeNews(Long id);
    long max_id();
}
