package it_sci.dao;


import it_sci.model.Academic_Ranks;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AcademicranksDaoImpl implements AcademicranksDao {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public List<Academic_Ranks> getAcademic_Ranks() {
        Session session = sessionFactory.getCurrentSession();
        Query<Academic_Ranks> query = session.createQuery("FROM Academic_Ranks ", Academic_Ranks.class);
        List<Academic_Ranks> academic_ranks = query.getResultList();
        return academic_ranks;
    }

    @Override
    public Academic_Ranks getAcademic_Ranks( long id) {
        Session session = sessionFactory.getCurrentSession();
        Academic_Ranks academic_ranks = session.get(Academic_Ranks.class,id);
        return academic_ranks;
    }


    @Override
    public void SaveAcademicRanks(Academic_Ranks academic_ranks) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(academic_ranks);
    }

    @Override
    public void UpdateAcademicRanks(Academic_Ranks academic_ranks) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(academic_ranks);
    }

    @Override
    public long getLatestId() {
        Session session = sessionFactory.getCurrentSession();
        Query<Long> query = session.createQuery("SELECT COUNT(p) FROM Academic_Ranks p", Long.class);
        return query.getSingleResult();
    }

    @Override
    public List<Academic_Ranks> getAcademic_RanksDoesNotHavePersonnel(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Academic_Ranks> query = session.createQuery("select s.academicRank from Personnel s where s.id=:id");
        query.setParameter("id", id);
        List<Academic_Ranks> academicRanksList1 = query.getResultList();
        query = session.createQuery("from Academic_Ranks ");
        List<Academic_Ranks> academicRanksList2 = query.getResultList();
        academicRanksList2.removeAll(academicRanksList1);
        return academicRanksList2;
    }


}
