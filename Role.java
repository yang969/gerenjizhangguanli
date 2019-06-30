package cn.people.pojo;

public class Role {

    private Integer id;
    private String roleName;
    private Integer createdBy;
    private String userRoleName;

    public Role() {
    }

    public Role(Integer id, String roleName, Integer createdBy, String userRoleName) {
        this.id = id;
        this.roleName = roleName;
        this.createdBy = createdBy;
        this.userRoleName = userRoleName;
    }

    public Integer getId() {
        return id;
    }  
                                                                            
    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Integer getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Integer createdBy) {
        this.createdBy = createdBy;
    }

    public String getUserRoleName() {
        return userRoleName;
    }

    public void setUserRoleName(String userRoleName) {
        this.userRoleName = userRoleName;
    }
}
