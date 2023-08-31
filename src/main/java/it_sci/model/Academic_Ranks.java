package it_sci.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "academic_ranks")
public class Academic_Ranks {
    @Id
    @Column(name = "academicranksid",length = 10)
    private String id;

    @Column(name = "academicranksname",nullable = false,length = 50)
    private String name;

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
}
