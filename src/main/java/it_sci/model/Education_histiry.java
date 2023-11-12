package it_sci.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="education_histiry")
public class Education_histiry {
    @Id
    @Column(name = "educationid",length = 10)
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    private long id;

    @Column(name = "degreename",nullable = false,length = 50)
    private String degreename;

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

    public Education_histiry(String degreename, String major, String university, String educationyear, String country, Personnel personnel) {
        this.degreename = degreename;
        this.major = major;
        this.university = university;
        this.educationyear = educationyear;
        this.country = country;
        this.personnel = personnel;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDegreename() {
        return degreename;
    }

    public void setDegreename(String degreename) {
        this.degreename = degreename;
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
