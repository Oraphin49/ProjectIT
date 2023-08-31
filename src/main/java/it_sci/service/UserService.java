package it_sci.service;

import it_sci.model.Admin;
import it_sci.model.Personnel;

public interface UserService {

    Admin loginAdmin (String email , String password);

    Personnel loginPersonnel (String email, String password);
}
