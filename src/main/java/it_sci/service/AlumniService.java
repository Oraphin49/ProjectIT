package it_sci.service;

import it_sci.model.Alumni;

import java.util.List;

public interface AlumniService {

    List<Alumni> getAlumnis();

    Alumni getAlumni(String alumniId);

    void saveAlumni(Alumni alumni);

    void editAlumni(Alumni alumni);

    void removeAlumni(String id);

}


