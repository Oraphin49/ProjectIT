package it_sci.dao;

import it_sci.model.News;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NewsDaoImpl  implements NewsDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<News> getNews() {
        Session session = sessionFactory.getCurrentSession();
        Query<News> query = session.createQuery("FROM News ", News.class);
        List<News> news = query.getResultList();
        return news;
    }

    @Override
    public News getNews(Long newsId) {
        Session session = sessionFactory.getCurrentSession();
        News news = session.get(News.class, newsId);
        return news;
    }

    @Override
    public void SaveNews(News news) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(news);
    }

    @Override
    public long getLatestId() {
        Session session = sessionFactory.getCurrentSession();
        Query<Long> query = session.createQuery("SELECT COUNT(p) FROM News p", Long.class);
        return query.getSingleResult();
    }

    @Override
    public void EditNews(News news) {
        Session session = sessionFactory.getCurrentSession();
        session.update(news);
    }

    @Override
    public void removeNews(Long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<News> query = session.createQuery("FROM News a WHERE a.id =: aId", News.class);
        query.setParameter("aId",id);
        News news = query.getSingleResult();
        session.remove(news);
    }
}
