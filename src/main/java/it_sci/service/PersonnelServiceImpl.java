package it_sci.service;

import it_sci.dao.AcademicranksDao;
import it_sci.dao.PersonnelDao;
import it_sci.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Set;

@Service
public class PersonnelServiceImpl implements PersonnelService {
    @Autowired
    private PersonnelDao personnelDao;

    @Autowired
    private AcademicranksDao academicranksDao;

    @Override
    @Transactional
    public List<Personnel> getPersonnel() {
        return personnelDao.getPersonnel();
    }

    @Override
    @Transactional
    public Personnel getPersonnelById(long personnelId) {
        return personnelDao.getPersonnelById(personnelId);
    }

    @Override
    @Transactional
    public List<Award> getAward(long awardId) {
        return personnelDao.getAward(awardId);
    }

    @Override
    @Transactional
    public List<Work_experience> getWorkexperience(long workId) {
        return personnelDao.getWorkexperience(workId);
    }

    @Override
    @Transactional
    public List<Education_histiry>  getEducationHistiry(long EDHid) {
        return personnelDao.getEducationHistiry(EDHid);
    }

    @Override
    @Transactional
    public List<Research_grant> getResearchGrant(long RGid) {
        return personnelDao.getResearchGrant(RGid);
    }

    @Override
    @Transactional
    public List<Project_consulting> getProjectconsulting(long PC) { return personnelDao.getProjectconsulting(PC);}



    @Override
    @Transactional
    public void savePersonnel(Personnel personnel) {
        long id = personnelDao.getLatestId();
        //alumni.setId(generateLatestId(id + 1));
        personnelDao.savePersonnel(personnel);
    }

    @Override
    @Transactional
    public void savePersonnelEducation(Education_histiry education_histiry) {
        personnelDao.savePersonnelEducation(education_histiry);
    }

    @Override
    @Transactional
    public void savePersonnelResearch(Research_grant research_grant) {
        personnelDao.savePersonnelResearch(research_grant);
    }

    @Override
    @Transactional
    public void savePersonnelAward(Award award) {
        personnelDao.savePersonnelAward(award);

    }

    @Override
    @Transactional
    public void savePersonnelWork(Work_experience work_experience) {
        personnelDao.savePersonnelWork(work_experience);

    }

    @Override
    @Transactional
    public void saveProjectconsulting(Project_consulting project_consulting) {
        personnelDao.saveProjectconsulting(project_consulting);

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
    public void updateWork_experience(Work_experience work_experience) {
        personnelDao.updateWork_experience(work_experience);

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

    @Override
    @Transactional
    public void updateProject_consulting(Project_consulting project_consulting) {
        personnelDao.updateProject_consulting(project_consulting);

    }

    @Override
    @Transactional
    public void removePersonnelEducation(long id) {
        personnelDao.removePersonnelEducation(id);
    }

    @Override
    @Transactional
    public void removePersonnelResearch(long id) { personnelDao.removePersonnelResearch(id);}

    @Override
    @Transactional
    public void removePersonnelAward(long id) { personnelDao.removePersonnelAward(id);}

    @Override
    @Transactional
    public void removePersonnelWork(long id) { personnelDao.removePersonnelWork(id);

    }

    @Override
    @Transactional
    public void removeProjectconsulting(long id) { personnelDao.removeProjectconsulting(id);

    }


    @Override
    @Transactional
    public void savePersonnelAcademicRanks(long personnelId, Set<Academic_Ranks> academicRanks) {
        Personnel personnel = personnelDao.getPersonnelById(personnelId);
        personnelDao.savePersonnelAcademicRanks(personnel, academicRanks);
    }

    @Override
    @Transactional
    public Set<Academic_Ranks> getAcademicRanksForPersonnel(long personnelId) {
        return personnelDao.getAcademicRanksForPersonnel(personnelId);
    }

    @Override
    @Transactional
    public void addAcademic_RanksToPersonnel(long personnelid, long id) {
        Academic_Ranks academic_ranks = academicranksDao.getAcademic_Ranks(id);
        Personnel personnel = personnelDao.getPersonnelById(id);
        personnel.getAcademicRank().add(academic_ranks);
        personnelDao.savePersonnel(personnel);
    }

    @Override
    @Transactional
    public void removeAcademic_RanksToPersonnel(long personnelid, long id) {
        Academic_Ranks academic_ranks = academicranksDao.getAcademic_Ranks(id);
        Personnel personnel = personnelDao.getPersonnelById(id);
        personnel.getAcademicRank().add(academic_ranks);
        personnelDao.savePersonnel(personnel);
    }

    @Override
    @Transactional
    public List<Personnel> getPersonnelDoesNotHaveAcademic_Ranks(long id) {
        return personnelDao.getPersonnelDoesNotHaveAcademic_Ranks(id);
    }

}





