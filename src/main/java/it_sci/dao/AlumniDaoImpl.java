package it_sci.dao;

import it_sci.model.Alumni;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AlumniDaoImpl implements AlumniDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Alumni> getAlumnis() {
        Session session = sessionFactory.getCurrentSession();
        Query<Alumni> query = session.createQuery("FROM Alumni ", Alumni.class);
        List<Alumni> alumni = query.getResultList();
        return alumni;
    }

    @Override
    public Alumni getAlumni(String alumniId) {
        Session session = sessionFactory.getCurrentSession();
        Alumni alumni = session.get(Alumni.class, alumniId);
        return alumni;
    }

    @Override
    public void SaveAlumni(Alumni alumni) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(alumni);
    }

    @Override
    public long getLatestId() {
        Session session = sessionFactory.getCurrentSession();
        Query<Long> query = session.createQuery("SELECT COUNT(p) FROM Alumni p", Long.class);
        return query.getSingleResult();
    }

    @Override
    public void EditAlumni(Alumni alumni) {
        Session session = sessionFactory.getCurrentSession();
        session.update(alumni);
    }

    @Override
    public void removeAlumni(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Alumni> query = session.createQuery("FROM Alumni a WHERE a.id =: aId", Alumni.class);
        query.setParameter("aId",id);
        Alumni alumni = query.getSingleResult();
        session.remove(alumni);
    }
}
