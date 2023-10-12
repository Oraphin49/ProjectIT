package it_sci.model;

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

    @ManyToMany(mappedBy = "academicRank")
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


}
