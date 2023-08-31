package it_sci.service;

import it_sci.model.*;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

public interface PersonnelService {
    List<Personnel> getPersonnel();

    Personnel getPersonnel(String personnelId);

    Academic_Ranks getAcademicRankById(String acId);

    List<Award> getAward(String awardId);

    List<Education_histiry> getEducationHistiry(String EDHid);

    List<Research_grant> getResearchGrant(String RGid);

    List<Academic_Ranks> getAcademicRanks();

    void SavePersonnel(Personnel personnel);
    void updatePersonnel(Personnel personnel);

    void updateAward(Award award);

    void updateEducation_histiry(Education_histiry education_histiry);

    void updateResearch_grant(Research_grant research_grant);
}
