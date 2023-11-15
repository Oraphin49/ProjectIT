package it_sci.dao;

import it_sci.model.News;

import java.util.List;

public interface NewsDao {
    List<News> getNews();

    News getNews(Long id);

    void saveNews(News news);
    void editNews(News news);

    long getLatestId();

    long max_id();
    void removeNews(Long id);

}
