package it_sci.service;

import it_sci.model.*;

import java.util.List;
import java.util.Set;

public interface PersonnelService {
    List<Personnel> getPersonnel();

    Personnel getPersonnelById(long personnelId);

    List<Award> getAward(long awardId);

    List<Work_experience> getWorkexperience(long workId);

    List<Education_histiry> getEducationHistiry(long EDHid);

    List<Research_grant> getResearchGrant(long RGid);

    List<Project_consulting> getProjectconsulting(long PC);


    void savePersonnel(Personnel personnel);
    void savePersonnelEducation(Education_histiry education_histiry);

    void savePersonnelResearch(Research_grant research_grant);

    void  savePersonnelAward(Award award);

    void  savePersonnelWork(Work_experience work_experience);

    void saveProjectconsulting(Project_consulting project_consulting);

    void updatePersonnel(Personnel personnel);

    void updateAward(Award award);

    void updateWork_experience(Work_experience work_experience);

    void updateEducation_histiry(Education_histiry education_histiry);

    void updateResearch_grant(Research_grant research_grant);

    void  updateProject_consulting(Project_consulting project_consulting);


    void removePersonnelEducation(long id);

    void removePersonnelResearch(long id);

    void  removePersonnelAward(long id);

    void  removePersonnelWork(long id);

    void  removeProjectconsulting(long id);

    void savePersonnelAcademicRanks(long personnelId, Set<Academic_Ranks> academicRanks);
    Set<Academic_Ranks> getAcademicRanksForPersonnel(long personnelId);

    void addAcademic_RanksToPersonnel(long personnelid, long id);

    void removeAcademic_RanksToPersonnel(long personnelid, long id);

    List<Personnel> getPersonnelDoesNotHaveAcademic_Ranks(long id);

}
