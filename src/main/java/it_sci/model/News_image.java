package it_sci.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Entity
@Table(name="news_image")
public class News_image {
    @EmbeddedId
    private News news;

    @Embeddable
    public class News implements Serializable {
        @ManyToOne
        @JoinColumn(name = "news_newsid")
        private it_sci.model.News news;
        @Column(name = "image_news",length = 10)
        private String image_news;

        // Constructors, getters, setters, etc.
    }
}

