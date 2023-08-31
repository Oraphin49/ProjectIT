package it_sci.dao;

import it_sci.model.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PersonnelDaoImpl implements PersonnelDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Personnel> getPersonnel() {
        Session session = sessionFactory.getCurrentSession();
        Query<Personnel> query = session.createQuery("FROM Personnel ", Personnel.class);
        List<Personnel> personnel = query.getResultList();
        return personnel;
    }

    @Override
    public Personnel getPersonnel(String personnelId) {
        Session session = sessionFactory.getCurrentSession();
        Personnel personnel = session.get(Personnel.class, personnelId);
        return personnel;
    }

    @Override
    public List<Award> getAward(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Award> query = session.createQuery("FROM Award a WHERE a.personnel.id =: aId", Award.class);
        query.setParameter("aId",id);
        List<Award> award = query.getResultList();
        return award;
    }

    @Override
    public List<Education_histiry> getEducationHistiry(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Education_histiry> query = session.createQuery("FROM Education_histiry a WHERE a.personnel.id =: aId", Education_histiry.class);
        query.setParameter("aId",id);
        List<Education_histiry> education_histiry = query.getResultList();
        return education_histiry;
    }

    @Override
    public List<Research_grant> getResearchGrant(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Research_grant> query = session.createQuery("FROM Research_grant a WHERE a.personnel.id =: aId", Research_grant.class);
        query.setParameter("aId",id);
        List<Research_grant> research_grant = query.getResultList();
        return research_grant;
    }

    @Override
    public List<Academic_Ranks> getAcademicRanks() {
        Session session = sessionFactory.getCurrentSession();
        Query<Academic_Ranks> query = session.createQuery("FROM Academic_Ranks", Academic_Ranks.class);
        List<Academic_Ranks> academic_ranks = query.getResultList();
        return academic_ranks;
    }

    @Override
    public Academic_Ranks getAcademicRankById(String acId) {
        Session session = sessionFactory.getCurrentSession();
        Academic_Ranks academic_ranks = session.get(Academic_Ranks.class, acId);
        return academic_ranks;
    }

    @Override
    public void SavePersonnel(Personnel personnel) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(personnel);
    }
    @Override
    public void updatePersonnel(Personnel personnel) {
        Session session = sessionFactory.getCurrentSession();
        session.update(personnel);
    }

    @Override
    public void updateAward(Award award) {
        Session session = sessionFactory.getCurrentSession();
        session.update(award);
    }

    @Override
    public void updateEducation_histiry(Education_histiry education_histiry) {
        Session session = sessionFactory.getCurrentSession();
        session.update(education_histiry);
    }

    @Override
    public void updateResearch_grant(Research_grant research_grant) {
        Session session = sessionFactory.getCurrentSession();
        session.update(research_grant);
    }

    @Override
    public long getLatestId() {
        Session session = sessionFactory.getCurrentSession();
        Query<Long> query = session.createQuery("SELECT COUNT(p) FROM Personnel p", Long.class);
        return query.getSingleResult();
    }


}
