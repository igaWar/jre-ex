package demo.service;


import demo.domain.Account;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Robert
 */
@Service
@Transactional
public class AccountService {
    @PersistenceContext
    private EntityManager em;
    
    public List<Account> getAccounts() {
        TypedQuery<Account> query = em.createNamedQuery(Account.FIND_ALL, Account.class);
        return query.getResultList();
    }
    
    public void persist(Account account) {
        em.persist(account);
    }
}
