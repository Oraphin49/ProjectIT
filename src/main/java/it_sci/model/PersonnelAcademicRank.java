package it_sci.model;

import javax.persistence.*;

@Entity
@Table(name = "personnel_academic_ranks")
public class PersonnelAcademicRank {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    @JoinColumn(name = "personnelid")
    private Personnel personnel;

    @ManyToOne
    @JoinColumn(name = "academicranksid")
    private Academic_Ranks academicRank;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Personnel getPersonnel() {
        return personnel;
    }

    public void setPersonnel(Personnel personnel) {
        this.personnel = personnel;
    }

    public Academic_Ranks getAcademicRank() {
        return academicRank;
    }

    public void setAcademicRank(Academic_Ranks academicRank) {
        this.academicRank = academicRank;
    }
}
