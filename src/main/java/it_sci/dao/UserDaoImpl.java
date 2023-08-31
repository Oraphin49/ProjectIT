package it_sci.dao;

import it_sci.model.Admin;
import it_sci.model.Personnel;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public Admin getAdminByUsername(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Admin> query = session.createQuery("from Admin a  WHERE a.email =: a_email", Admin.class);
        query.setParameter("a_email", id);
        Admin admin = new Admin();
        try {
            admin = query.getSingleResult();
        } catch (Exception e) {
        }
        return admin;
    }

    @Override
    public Personnel getPersonnel(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Personnel> query = session.createQuery("from Personnel p  WHERE p.email =: p_email", Personnel.class);
        query.setParameter("p_email", id);
        Personnel personnel = new Personnel();
        try {
            personnel = query.getSingleResult();
        } catch (Exception e) {
        }
        return personnel;
    }
}
