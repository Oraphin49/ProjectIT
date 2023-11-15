package it_sci.dao;

import it_sci.model.Alumni;

import java.util.List;

public interface AlumniDao {
    List<Alumni> getAlumnis();

    Alumni getAlumni(String id);

    void saveAlumni(Alumni alumni);

    long getLatestId();

    void editAlumni(Alumni alumni);

    void removeAlumni(String id);

}
