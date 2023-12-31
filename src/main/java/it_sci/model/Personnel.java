package it_sci.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="personnel")
public class Personnel {
    @Id
    @Column(name = "personnelid",length = 10)
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    private long id;

    @Column(name="firstname",nullable = false,length = 50)
    private String firstname;

    @Column(name="lastname",nullable = false,length = 50)
    private String lastname;

    @Column(name="position",nullable = false,length = 50)
    private String position;

    @Column(name = "phone",nullable = false,length = 10)
    private String phone;

    @Column(name="image",nullable = false,length = 45)
    private String image;

    @Column(name="scolarlink",length = 45)
    private String scolarlink;

    @Column(name="description",length = 500)
    private String description;

    @Column(name="expertise",length = 500)
    private String expertise;

    @Column(name="email",nullable = false,length = 60)
    private String email;

    @Column(name="password",nullable = false,length = 16)
    private String Password;


    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "personnel_academic_ranks",
            joinColumns = @JoinColumn(name = "personnelid"),
            inverseJoinColumns = @JoinColumn(name = "academicranksid")
    )
    private Set<Academic_Ranks> academicRank = new HashSet<>();

    public Personnel() {
    }

    public Personnel(long id, String firstname) {
        this.id = id;
        this.firstname = firstname;
    }

    public Personnel( String firstname, String lastname, String position, String phone, String image, String scolarlink, String description, String expertise, String email, String password) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.position = position;
        this.phone = phone;
        this.image = image;
        this.scolarlink = scolarlink;
        this.description = description;
        this.expertise = expertise;
        this.email = email;
        this.Password = password;

    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getScolarlink() {
        return scolarlink;
    }

    public void setScolarlink(String scolarlink) {
        this.scolarlink = scolarlink;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getExpertise() {
        return expertise;
    }

    public void setExpertise(String expertise) {
        this.expertise = expertise;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public Set<Academic_Ranks> getAcademicRank() {
        return academicRank;
    }


    public void setAcademicRank(Set<Academic_Ranks> academicRank) {
        this.academicRank = academicRank;
    }


}

