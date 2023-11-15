package it_sci.service;

import it_sci.model.Academic_Ranks;

import java.util.List;

public interface AcademicranksService {

    List<Academic_Ranks> getAcademic_Ranks();

    Academic_Ranks getAcademic_Ranks(long id);

    void saveAcademicRanks(Academic_Ranks academic_ranks);

    void updateAcademicRanks(Academic_Ranks academic_ranks);

    void addAcademicRanksToPersonnel(long id, long personnelid);

    void removeAcademicRanksToPersonnel(long id, long personnelid);

    List<Academic_Ranks> getAcademic_RanksDoesNotHavePersonnel(long id);

}
