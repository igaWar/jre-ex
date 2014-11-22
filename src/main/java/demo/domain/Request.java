package demo.domain;

import java.io.Serializable;
import javax.persistence.*;

/**
 *
 * @author Sorin Andronic
 */
@NamedQueries({
    @NamedQuery(name = Request.FIND_ALL, query = "select a from Request a order by a.userid"),
    @NamedQuery(name = Request.FIND_APPROVED, query = "select a from Request a where a.status LIKE 'approved'")
})
@Entity
public class Request implements Serializable {
    public static final String FIND_ALL = "Request.findAll";
    public static final String FIND_APPROVED = "Request.findApproved";
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(length = 7, nullable = false)
    private String userid;
    @Column(length = 60, nullable = false)
    private String name;
    @Column(length = 60, nullable = false)
    private String email;
    @Column(length = 256, nullable = false)
    private String exceptionSites;
    @Column(length = 256, nullable = false)
    private String justification;
    @Column(length = 10, nullable = false, updatable = true)
    private String status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getExceptionSites() {
        return exceptionSites;
    }

    public void setExceptionSites(String exceptionSites) {
        this.exceptionSites = exceptionSites;
    }

    public String getJustification() {
        return justification;
    }

    public void setJustification(String justification) {
        this.justification = justification;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
    
}