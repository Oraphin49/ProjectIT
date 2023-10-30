package it_sci.service;


import it_sci.dao.AcademicranksDao;
import it_sci.dao.PersonnelDao;
import it_sci.model.Academic_Ranks;
import it_sci.model.Personnel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class AcademicranksServiceImpl implements AcademicranksService{

    @Autowired
    private AcademicranksDao academicranksDao;

    @Autowired
    private PersonnelDao personnelDao;


    @Override
    @Transactional
    public List<Academic_Ranks> getAcademic_Ranks() {
        return academicranksDao.getAcademic_Ranks();
    }

    @Override
    @Transactional
    public Academic_Ranks getAcademic_Ranks(long id){
        return  academicranksDao.getAcademic_Ranks(id);
    }


    @Override
    @Transactional
    public void SaveAcademicRanks(Academic_Ranks academic_ranks) {
        long id = academicranksDao.getLatestId();
        academicranksDao.SaveAcademicRanks(academic_ranks);

    }

    @Override
    @Transactional
    public void UpdateAcademicRanks(Academic_Ranks academic_ranks) {
        academicranksDao.UpdateAcademicRanks(academic_ranks);

    }

    @Override
    @Transactional
    public void addAcademicRanksToPersonnel(long id, long personnelid) {
        Personnel personnel = personnelDao.getPersonnelById(id);
        Academic_Ranks academic_ranks = academicranksDao.getAcademic_Ranks(id);
        academic_ranks.getPersonnel().add(personnel);
        academicranksDao.SaveAcademicRanks(academic_ranks);
    }

    @Override
    @Transactional
    public void removeAcademicRanksToPersonnel(long id, long personnelid) {
        Personnel personnel = personnelDao.getPersonnelById(id);
        Academic_Ranks academic_ranks = academicranksDao.getAcademic_Ranks(id);
        academic_ranks.getPersonnel().add(personnel);
        academicranksDao.SaveAcademicRanks(academic_ranks);
    }

    @Override
    @Transactional
    public List<Academic_Ranks> getAcademic_RanksDoesNotHavePersonnel(long id) {
            return academicranksDao.getAcademic_RanksDoesNotHavePersonnel(id);
    }
}
