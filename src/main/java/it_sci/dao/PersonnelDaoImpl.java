package it_sci.dao;

import it_sci.model.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

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
    public Personnel getPersonnelById(long personnelId) {
        Session session = sessionFactory.getCurrentSession();
        Personnel personnel = session.get(Personnel.class, personnelId);
        return personnel;
    }


    @Override
    public List<Award> getAward(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Award> query = session.createQuery("FROM Award a WHERE a.personnel.id = :aId ORDER BY a.id DESC", Award.class);
        query.setParameter("aId", id);
        List<Award> awards = query.getResultList();
        return awards;
    }

    @Override
    public List<Work_experience> getWorkexperience(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Work_experience> query = session.createQuery("FROM Work_experience a WHERE a.personnel.id = :aId ORDER BY a.id DESC", Work_experience.class);
        query.setParameter("aId", id);
        List<Work_experience> work_experiences = query.getResultList();
        return work_experiences;
    }

    @Override
    public List<Education_histiry> getEducationHistiry(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Education_histiry> query = session.createQuery("FROM Education_histiry a WHERE a.personnel.id = :aId ORDER BY a.id DESC", Education_histiry.class);
        query.setParameter("aId", id);
        List<Education_histiry> education_histiry = query.getResultList();
        return education_histiry;
    }

    @Override
    public List<Research_grant> getResearchGrant(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Research_grant> query = session.createQuery("FROM Research_grant a WHERE a.personnel.id = :aId ORDER BY a.id DESC", Research_grant.class);
        query.setParameter("aId", id);
        List<Research_grant> research_grant = query.getResultList();
        return research_grant;
    }

    @Override
    public List<Project_consulting> getProjectconsulting(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Project_consulting> query = session.createQuery("FROM Project_consulting a WHERE a.personnel.id = :aId ORDER BY a.id DESC", Project_consulting.class);
        query.setParameter("aId", id);
        List<Project_consulting> project_consultings = query.getResultList();
        return project_consultings;
    }

    @Override
    public void savePersonnel(Personnel personnel) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(personnel);
    }

    @Override
    public void savePersonnelEducation(Education_histiry education_histiry) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(education_histiry);
    }

    @Override
    public void savePersonnelResearch(Research_grant research_grant) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(research_grant);
    }

    @Override
    public void savePersonnelAward(Award award) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(award);
    }

    @Override
    public void savePersonnelWork(Work_experience work_experience) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(work_experience);

    }

    @Override
    public void saveProjectconsulting(Project_consulting project_consulting) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(project_consulting);
    }


    @Override
    public void removePersonnelEducation(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Education_histiry> query = session.createQuery("FROM Education_histiry e WHERE e.id =: aId", Education_histiry.class);
        query.setParameter("aId",id);
        Education_histiry education_histiry = query.getSingleResult();
        session.remove(education_histiry);
    }

    @Override
    public void removePersonnelResearch(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Research_grant> query = session.createQuery("FROM Research_grant r WHERE r.id =: rId", Research_grant.class);
        query.setParameter("rId",id);
        Research_grant research_grant = query.getSingleResult();
        session.remove(research_grant);
    }

    @Override
    public void removePersonnelAward(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Award> query = session.createQuery("FROM Award a WHERE a.id =: aId", Award.class);
        query.setParameter("aId",id);
        Award award = query.getSingleResult();
        session.remove(award);
    }

    @Override
    public void removePersonnelWork(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Work_experience> query = session.createQuery("FROM Work_experience a WHERE a.id =: aId", Work_experience.class);
        query.setParameter("aId",id);
        Work_experience work_experience = query.getSingleResult();
        session.remove(work_experience);

    }

    @Override
    public void removeProjectconsulting(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Project_consulting> query = session.createQuery("FROM Project_consulting a WHERE a.id =: aId", Project_consulting.class);
        query.setParameter("aId",id);
        Project_consulting project_consulting = query.getSingleResult();
        session.remove(project_consulting);
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

    public void updateWork_experience(Work_experience work_experience) {
        Session session = sessionFactory.getCurrentSession();
        session.update(work_experience);
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
    public void updateProject_consulting(Project_consulting project_consulting) {
        Session session = sessionFactory.getCurrentSession();
        session.update(project_consulting);
    }

    @Override
    public long getLatestId() {
        Session session = sessionFactory.getCurrentSession();
        Query<Long> query = session.createQuery("SELECT COUNT(p) FROM Personnel p", Long.class);
        return query.getSingleResult();
    }

    public void savePersonnelAcademicRanks(Personnel personnel, Set<Academic_Ranks> academicRanks) {
        Session session = sessionFactory.getCurrentSession();
        personnel.setAcademicRank(academicRanks);
        session.saveOrUpdate(personnel);
    }

    @Override
    public Set<Academic_Ranks> getAcademicRanksForPersonnel(long personnelId) {
        Session session = sessionFactory.getCurrentSession();
        Personnel personnel = session.get(Personnel.class, personnelId);
        return personnel.getAcademicRank();
    }

    @Override
    public List<Personnel> getPersonnelDoesNotHaveAcademic_Ranks(long id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Personnel> query = session.createQuery("select p.personnel from Academic_Ranks p where p.id=:id");
        query.setParameter("id", id);
        List<Personnel> personnelList1 = query.getResultList();
        query = session.createQuery("from Personnel");
        List<Personnel> personnelList2 = query.getResultList();
        personnelList2.removeAll(personnelList1);
        return personnelList2;
    }


}
