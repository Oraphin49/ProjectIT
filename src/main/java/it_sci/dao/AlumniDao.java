package it_sci.dao;

import it_sci.model.Alumni;

import java.util.List;

public interface AlumniDao {
    List<Alumni> getAlumnis();

    Alumni getAlumni(String id);

    void SaveAlumni(Alumni alumni);

    long getLatestId();

    void EditAlumni(Alumni alumni);

    void removeAlumni(String id);

}
