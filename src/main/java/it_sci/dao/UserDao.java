package it_sci.dao;

import it_sci.model.Admin;
import it_sci.model.Personnel;

public interface UserDao {

    Admin getAdminByUsername (String id);

    Personnel getPersonnel (String id);


}
