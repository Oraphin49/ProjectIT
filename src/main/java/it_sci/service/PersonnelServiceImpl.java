package it_sci.service;

import it_sci.dao.PersonnelDao;
import it_sci.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

@Service
public class PersonnelServiceImpl implements PersonnelService {
    @Autowired
    private PersonnelDao personnelDao;

    @Override
    @Transactional
    public List<Personnel> getPersonnel() {
        return personnelDao.getPersonnel();
    }

    @Override
    @Transactional
    public Personnel getPersonnel(String personnelId) {
        return personnelDao.getPersonnel(personnelId);
    }

    @Override
    @Transactional
    public List<Award> getAward(String awardId) {
        return personnelDao.getAward(awardId);
    }

    @Override
    @Transactional
    public List<Education_histiry>  getEducationHistiry(String EDHid) {
        return personnelDao.getEducationHistiry(EDHid);
    }

    @Override
    @Transactional
    public List<Research_grant> getResearchGrant(String RGid) {
        return personnelDao.getResearchGrant(RGid);
    }

    @Override
    @Transactional
    public List<Academic_Ranks> getAcademicRanks() {
        return personnelDao.getAcademicRanks();
    }


    @Override
    @Transactional
    public Academic_Ranks getAcademicRankById(String acId) {
        return personnelDao.getAcademicRankById(acId);
    }

    @Override
    @Transactional
    public void SavePersonnel(Personnel personnel) {
        long id = personnelDao.getLatestId();
        //alumni.setId(generateLatestId(id + 1));
        personnelDao.SavePersonnel(personnel);
    }

    @Override
    @Transactional
    public void updatePersonnel(Personnel personnel ) {
        personnelDao.updatePersonnel(personnel);
    }

    @Override
    @Transactional
    public void updateAward(Award award) {
        personnelDao.updateAward(award);
    }

    @Override
    @Transactional
    public void updateEducation_histiry(Education_histiry education_histiry) {
        personnelDao.updateEducation_histiry(education_histiry);
    }

    @Override
    @Transactional
    public void updateResearch_grant(Research_grant research_grant) {
        personnelDao.updateResearch_grant(research_grant);
    }


}



