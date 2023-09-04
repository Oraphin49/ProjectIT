package it_sci.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="research_grant")
public class Research_grant {
    @Id
    @Column(name = "researchgrantid",length = 10)
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    private long id;

    @Column(name="researchgrantname",nullable = false,length = 45)
    private String researchgrantname;

    @Column(name="researchgrantyear",nullable = false,length = 4)
    private String researchgrantyear;

    @ManyToOne
    @JoinColumn(name = "personnel_personnelid")
    private Personnel personnel;



    public Research_grant() {

    }

    public Research_grant(String researchgrantname, String researchgrantyear, Personnel personnel) {
        this.researchgrantname = researchgrantname;
        this.researchgrantyear = researchgrantyear;
        this.personnel = personnel;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
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
