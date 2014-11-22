package demo.service;

import demo.domain.Request;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Sorin Andronic
 */
@Service
@Transactional
public class RequestService {
    @PersistenceContext
    private EntityManager em;
    
    public List<Request> getRequests() {
        TypedQuery<Request> query = em.createNamedQuery(Request.FIND_ALL, Request.class);
        return query.getResultList();
    }

    public List<Request> getApproved() {
        TypedQuery<Request> query = em.createNamedQuery(Request.FIND_APPROVED, Request.class);
        return query.getResultList();
    }
    
    public void persist(Request request) {
        em.persist(request);
    }
    
    public void merge(Request request) {
        em.merge(request);
    }
    
    public Request findById(Long id) {
        return em.find(Request.class, id);
    }
}
