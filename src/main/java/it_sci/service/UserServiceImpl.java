package it_sci.service;

import it_sci.dao.UserDao;
import it_sci.model.Admin;
import it_sci.model.Personnel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();

    @Override
    @Transactional
    public Admin loginAdmin(String email, String password) {
        Admin admin = userDao.getAdminByUsername(email);
        return (admin != null && admin.getEmail() != null && bCryptPasswordEncoder.matches(password,admin.getPassword()) ? admin : null);
    }

    @Override
    @Transactional
    public Personnel loginPersonnel(String email, String password) {
        Personnel personnel = userDao.getPersonnel(email);
        return (personnel != null && personnel.getEmail() != null && bCryptPasswordEncoder.matches(password,personnel.getPassword()) ? personnel : null);
    }
}
