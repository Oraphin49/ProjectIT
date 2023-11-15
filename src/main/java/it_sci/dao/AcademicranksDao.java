package it_sci.dao;

import it_sci.model.Academic_Ranks;
import it_sci.model.Personnel;

import java.util.List;
import java.util.Set;

public interface AcademicranksDao {

    List<Academic_Ranks> getAcademic_Ranks();
    Academic_Ranks getAcademic_Ranks(long id);
    void saveAcademicRanks(Academic_Ranks academic_ranks);

    void updateAcademicRanks(Academic_Ranks academic_ranks);

    long getLatestId();

    List<Academic_Ranks> getAcademic_RanksDoesNotHavePersonnel(long id);


}
