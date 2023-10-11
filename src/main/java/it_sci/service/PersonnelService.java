package it_sci.service;

import it_sci.model.*;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

public interface PersonnelService {
    List<Personnel> getPersonnel();

    Personnel getPersonnelById(String personnelId);

    Academic_Ranks getAcademicRankById(String acId);

    List<Award> getAward(String awardId);

    List<Work_experience> getWorkexperience(String workId);

    List<Education_histiry> getEducationHistiry(String EDHid);

    List<Research_grant> getResearchGrant(String RGid);

    List<Academic_Ranks> getAcademicRanks();

    void SavePersonnel(Personnel personnel);
    void SavePersonnelEducation(Education_histiry education_histiry);

    void SavePersonnelResearch(Research_grant research_grant);

    void  SavePersonnelAward(Award award);

    void  SavePersonnelWork(Work_experience work_experience);

    void updatePersonnel(Personnel personnel);

    void updateAward(Award award);

    void updateWork_experience(Work_experience work_experience);

    void updateEducation_histiry(Education_histiry education_histiry);

    void updateResearch_grant(Research_grant research_grant);


    void removePersonnelEducation(long id);

    void removePersonnelResearch(long id);

    void  removePersonnelAward(long id);

    void  removePersonnelWork(long id);
}
