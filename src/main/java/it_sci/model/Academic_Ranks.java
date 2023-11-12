package it_sci.model;

import org.springframework.beans.MutablePropertyValues;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "academic_ranks")
public class Academic_Ranks {
    @Id
    @Column(name = "academicranksid",length = 10)
    private long id;

    @Column(name = "academicranksname",nullable = false,length = 50)
    private String name;

    @ManyToMany (fetch = FetchType.EAGER)
    @JoinTable(
            name = "personnel_academic_ranks",
            joinColumns = @JoinColumn(name = "academicranksid"),
            inverseJoinColumns = @JoinColumn(name = "personnelid")
    )
    private Set<Personnel> personnel = new HashSet<>();

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

    public Set<Personnel> getPersonnel() {
        return personnel;
    }

    public void setPersonnel(Set<Personnel> personnel) {
        this.personnel = personnel;
    }
}
