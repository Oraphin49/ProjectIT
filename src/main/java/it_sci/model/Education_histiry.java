package it_sci.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="education_histiry")
public class Education_histiry {
    @Id
    @Column(name = "educationid",length = 10)
    private String id;

    @Column(name = "educationname",nullable = false,length = 50)
    private String firstname;

    @Column(name = "major",nullable = false,length = 50)
    private String major;

    @Column(name = "university",nullable = false,length = 45)
    private String university;

    @Column(name = "educationyear",nullable = false,length = 4)
    private String educationyear;

    @Column(name = "country",nullable = false,length = 45)
    private String country;

    @ManyToOne
    @JoinColumn(name = "personnel_personnelid")
    private Personnel personnel;

    public Education_histiry() {

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getEducationyear() {
        return educationyear;
    }

    public void setEducationyear(String educationyear) {
        this.educationyear = educationyear;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Personnel getPersonnel() {
        return personnel;
    }

    public void setPersonnel(Personnel personnel) {
        this.personnel = personnel;
    }
}
