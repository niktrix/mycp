// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.mycp.domain;

import in.mycp.domain.Asset;
import in.mycp.domain.Department;
import in.mycp.domain.Manager;
import in.mycp.domain.Project;
import in.mycp.domain.User;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

privileged aspect Project_Roo_DbManaged {
    
    @ManyToMany(mappedBy = "projects", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private Set<User> Project.users;
    
    @OneToMany(mappedBy = "project")
    private Set<Asset> Project.assets;
    
    @OneToMany(mappedBy = "project")
    private Set<Manager> Project.managers;
    
    @ManyToOne
    @JoinColumn(name = "department", referencedColumnName = "id")
    private Department Project.department;
    
    @Column(name = "name", length = 45)
    private String Project.name;
    
    @Column(name = "details", length = 255)
    private String Project.details;
    
    @Column(name = "quota")
    private Integer Project.quota;
    
    public Set<User> Project.getUsers() {
        return users;
    }
    
    public void Project.setUsers(Set<User> users) {
        this.users = users;
    }
    
    public Set<Asset> Project.getAssets() {
        return assets;
    }
    
    public void Project.setAssets(Set<Asset> assets) {
        this.assets = assets;
    }
    
    public Set<Manager> Project.getManagers() {
        return managers;
    }
    
    public void Project.setManagers(Set<Manager> managers) {
        this.managers = managers;
    }
    
    public Department Project.getDepartment() {
        return department;
    }
    
    public void Project.setDepartment(Department department) {
        this.department = department;
    }
    
    public String Project.getName() {
        return name;
    }
    
    public void Project.setName(String name) {
        this.name = name;
    }
    
    public String Project.getDetails() {
        return details;
    }
    
    public void Project.setDetails(String details) {
        this.details = details;
    }
    
    public Integer Project.getQuota() {
        return quota;
    }
    
    public void Project.setQuota(Integer quota) {
        this.quota = quota;
    }
    
}
