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
}
