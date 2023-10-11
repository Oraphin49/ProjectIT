package it_sci.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name="work_experrience")
public class Work_experience {

    @Id
    @Column(name = "workexperienceid",length = 10)
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    private long id;


    @Column(name="workexperiencename",nullable = false,length = 45)
    private String workexperiencename;

    @Column(name="workexperienceyear",nullable = false,length = 4)
    private String workexperienceyear;

    @ManyToOne
    @JoinColumn(name = "personnel_personnelid")
    private Personnel personnel;


    public Work_experience(String workexperiencename, String workexperienceyear, Personnel personnel) {
        this.workexperiencename = workexperiencename;
        this.workexperienceyear = workexperienceyear;
        this.personnel = personnel;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getWorkexperiencename() {
        return workexperiencename;
    }

    public void setWorkexperiencename(String workexperiencename) {
        this.workexperiencename = workexperiencename;
    }

    public String getWorkexperienceyear() {
        return workexperienceyear;
    }

    public void setWorkexperienceyear(String workexperienceyear) {
        this.workexperienceyear = workexperienceyear;
    }

    public Personnel getPersonnel() {
        return personnel;
    }

    public void setPersonnel(Personnel personnel) {
        this.personnel = personnel;
    }

    public Work_experience() {
    }


}
