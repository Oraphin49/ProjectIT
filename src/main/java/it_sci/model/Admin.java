package it_sci.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {

    @Id
    @Column(name = "adminid",length = 10)
    private String id;

    @Column(name="adminname",nullable = false,length = 45)
    private String adminname;

    @Column(name="email",nullable = false,length = 60)
    private String email;

    @Column(name="password",nullable = false,length = 16)
    private String Password;

    public Admin(String id, String adminname, String email, String password) {
        this.id = id;
        this.adminname = adminname;
        this.email = email;
        Password = password;
    }

    public Admin() {

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
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
}
