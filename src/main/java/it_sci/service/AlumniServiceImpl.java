package it_sci.service;

import it_sci.dao.AlumniDao;
import it_sci.model.Alumni;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

@Service
public class AlumniServiceImpl  implements AlumniService {
    @Autowired
    private AlumniDao alumniDao;

    @Override
    @Transactional
    public List<Alumni> getAlumnis() {
        return alumniDao.getAlumnis();
    }

    @Override
    @Transactional
    public Alumni getAlumni(String alumniId) {
        return alumniDao.getAlumni(alumniId);
    }

    @Override
    @Transactional
    public void saveAlumni(Alumni alumni) {
//        long id = alumniDao.getLatestId();
        //alumni.setId(generateLatestId(id + 1));
        alumniDao.saveAlumni(alumni);
    }

    @Override
    @Transactional
    public void editAlumni(Alumni alumni) {
        alumniDao.editAlumni(alumni);
    }

    @Override
    @Transactional
    public void removeAlumni(String id) {
        alumniDao.removeAlumni(id);
    }

}
