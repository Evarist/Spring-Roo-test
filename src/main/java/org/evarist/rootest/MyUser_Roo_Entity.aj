// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.evarist.rootest;

import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.evarist.rootest.MyUser;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MyUser_Roo_Entity {
    
    declare @type: MyUser: @Entity;
    
    @PersistenceContext
    transient EntityManager MyUser.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long MyUser.id;
    
    @Version
    @Column(name = "version")
    private Integer MyUser.version;
    
    public Long MyUser.getId() {
        return this.id;
    }
    
    public void MyUser.setId(Long id) {
        this.id = id;
    }
    
    public Integer MyUser.getVersion() {
        return this.version;
    }
    
    public void MyUser.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void MyUser.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MyUser.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MyUser attached = MyUser.findMyUser(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MyUser.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MyUser.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MyUser MyUser.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MyUser merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager MyUser.entityManager() {
        EntityManager em = new MyUser().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MyUser.countMyUsers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MyUser o", Long.class).getSingleResult();
    }
    
    public static List<MyUser> MyUser.findAllMyUsers() {
        return entityManager().createQuery("SELECT o FROM MyUser o", MyUser.class).getResultList();
    }
    
    public static MyUser MyUser.findMyUser(Long id) {
        if (id == null) return null;
        return entityManager().find(MyUser.class, id);
    }
    
    public static List<MyUser> MyUser.findMyUserEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MyUser o", MyUser.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
