package demo.domain;

import java.io.Serializable;
import javax.persistence.*;

/**
 *
 * @author Robert
 */
@NamedQueries({
    @NamedQuery(name = Account.FIND_ALL, query = "select a from Account a order by a.name")
})
@Entity
public class Account implements Serializable {

    public static final String FIND_ALL = "Account.findAll";

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(length = 64, nullable = false, unique = true)
    private String name;
    @Column(length = 64, nullable = false)
    private String email;

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
}
