// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.mycp.domain;

import in.mycp.domain.InstanceP;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect InstanceP_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager InstanceP.entityManager;
    
    public static final EntityManager InstanceP.entityManager() {
        EntityManager em = new InstanceP().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long InstanceP.countInstancePs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM InstanceP o", Long.class).getSingleResult();
    }
    
    public static InstanceP InstanceP.findInstanceP(Integer id) {
        if (id == null) return null;
        return entityManager().find(InstanceP.class, id);
    }
    
    public static List<InstanceP> InstanceP.findInstancePEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM InstanceP o", InstanceP.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void InstanceP.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void InstanceP.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            InstanceP attached = InstanceP.findInstanceP(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void InstanceP.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void InstanceP.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public InstanceP InstanceP.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        InstanceP merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
