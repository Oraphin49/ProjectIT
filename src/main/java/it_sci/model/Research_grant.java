package it_sci.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="research_grant")
public class Research_grant {
    @Id
    @Column(name = "researchgrantid",length = 10)
    private String id;

    @Column(name="researchgrantname",nullable = false,length = 45)
    private String researchgrantname;

    @Column(name="researchgrantyear",nullable = false,length = 4)
    private String researchgrantyear;

    @ManyToOne
    @JoinColumn(name = "personnel_personnelid")
    private Personnel personnel;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getResearchgrantname() {
        return researchgrantname;
    }

    public void setResearchgrantname(String researchgrantname) {
        this.researchgrantname = researchgrantname;
    }

    public String getResearchgrantyear() {
        return researchgrantyear;
    }

    public void setResearchgrantyear(String researchgrantyear) {
        this.researchgrantyear = researchgrantyear;
    }

    public Personnel getPersonnel() {
        return personnel;
    }

    public void setPersonnel(Personnel personnel) {
        this.personnel = personnel;
    }
}
