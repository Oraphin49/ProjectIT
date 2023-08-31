package it_sci.service;

import it_sci.model.Alumni;

import java.util.List;

public interface AlumniService {

    List<Alumni> getAlumnis();

    Alumni getAlumni(String alumniId);

    void SaveAlumni(Alumni alumni);

    void EditAlumni(Alumni alumni);

    void removeAlumni(String id);

}


