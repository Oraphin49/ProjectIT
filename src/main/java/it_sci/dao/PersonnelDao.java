package it_sci.dao;

import it_sci.model.*;

import java.util.List;

public interface PersonnelDao {
    List<Personnel> getPersonnel();

    Personnel getPersonnelById(String id);

    List<Award> getAward(String id);

    List<Education_histiry> getEducationHistiry(String id);

    List<Research_grant> getResearchGrant(String id);

    List<Academic_Ranks> getAcademicRanks();
    Academic_Ranks getAcademicRankById(String id);

    void SavePersonnel(Personnel personnel);

    void SavePersonnelEducation(Education_histiry education_histiry);
    void SavePersonnelResearch(Research_grant research_grant);
    void removePersonnelEducation(long id);

    void removePersonnelResearch(long id);
    void updatePersonnel(Personnel personnel);
    void updateAward(Award award);

    void updateEducation_histiry(Education_histiry education_histiry);

    void updateResearch_grant(Research_grant research_grant);

    long getLatestId();
}
