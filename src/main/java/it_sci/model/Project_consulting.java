package it_sci.model;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name="Project_consulting")
public class Project_consulting {

    @Id
    @Column(name = "projectconsultingid",length = 10)
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    private long id;

    @Column(name = "projectconsultingname",length = 45)
    private String name;

    @Column(name = "projectconsultingyear",length = 4)
    private String year;

    @ManyToOne
    @JoinColumn(name = "personnel_personnelid")
    private Personnel personnel;

    public Project_consulting(long id, String name, String year, Personnel personnel) {
        this.id = id;
        this.name = name;
        this.year = year;
        this.personnel = personnel;
    }

    public Project_consulting() {

    }

    public Project_consulting(String name, String year, Personnel personnel) {
        this.name = name;
        this.year = year;
        this.personnel = personnel;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
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
