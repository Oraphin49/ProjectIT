package it_sci.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "alumni")
public class Alumni {
    @Id
    @Column(name = "alumniid",length = 10)
    private String id;

    @Column(name = "firstname",nullable = false,length = 50)
    private String firstname;

    @Column(name = "lastname",nullable = false,length = 50)
    private String lastname;

    @Column(name = "graduationyear",nullable = false,length = 4)
    private String graduationyear;

    @Column(name = "position",nullable = false,length = 50)
    private String position;

    @Column(name = "company",nullable = false,length = 45)
    private String company;

    @Column(name = "phone",nullable = false,length = 10)
    private String phone;

    @Column(name = "email",nullable = false,length = 60)
    private String email;

    @Column(name = "image",nullable = false,length = 45)
    private String image;

    @Column(name = "expertise",nullable = false,length = 300)
    private String expertise;

    @Column(name = "award",nullable = false,length = 300)
    private String award;


    public Alumni () {}

    public Alumni(String id, String firstname, String lastname, String graduationyear, String position, String company, String phone, String email, String image, String expertise, String award) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.graduationyear = graduationyear;
        this.position = position;
        this.company = company;
        this.phone = phone;
        this.email = email;
        this.image = image;
        this.expertise = expertise;
        this.award = award;
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

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getGraduationyear() {
        return graduationyear;
    }
    public void setGraduationyear(String graduationyear) {
        this.graduationyear = graduationyear;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getExpertise() {
        return expertise;
    }

    public void setExpertise(String expertise) {
        this.expertise = expertise;
    }

    public String getAward() {
        return award;
    }

    public void setAward(String award) {
        this.award = award;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }


}
