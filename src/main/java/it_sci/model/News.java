package it_sci.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="news")
public class News {

    @Id
    @Column(name = "newsid",length = 10)
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    private long id;

    @Column(name="newsname",nullable = false,length = 45)
    private String newsname;

    @Temporal(TemporalType.TIMESTAMP)
    private Date date;


    @Column(name="newsdetail",nullable = false,length = 500)
    private String newsdetail;

    @Column(name="category",nullable = false,length = 50)
    private String category;

    @Column(name="linkpage",nullable = false,length = 100)
    private String linkpage;

//    @ManyToOne
//    @JoinColumn(name = "news_newsid")
//    private News_image news_image;

    public News() {
    }

    public News(String newsname, Date date, String newsdetail, String category, String linkpage) {
        this.newsname = newsname;
        this.date = date;
        this.newsdetail = newsdetail;
        this.category = category;
        this.linkpage = linkpage;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNewsname() {
        return newsname;
    }

    public void setNewsname(String newsname) {
        this.newsname = newsname;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getNewsdetail() {
        return newsdetail;
    }

    public void setNewsdetail(String newsdetail) {
        this.newsdetail = newsdetail;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getLinkpage() {
        return linkpage;
    }

    public void setLinkpage(String linkpage) {
        this.linkpage = linkpage;
    }


}
