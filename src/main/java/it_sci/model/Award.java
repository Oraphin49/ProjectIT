package it_sci.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="awards")
public class Award {
    @Id
    @Column(name = "awardid",length = 10)
    private String id;

    @Column(name = "awardname",length = 45)
    private String name;

    @Column(name = "awardyear",length = 4)
    private String year;

    @ManyToOne
    @JoinColumn(name = "personnel_personnelid")
    private Personnel personnel;

    public Award(String id, String name, String year) {
        this.id = id;
        this.name = name;
        this.year = year;
    }

    public Award() {

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public Personnel getPersonnel() {
        return personnel;
    }

    public void setPersonnel(Personnel personnel) {
        this.personnel = personnel;
    }
}
