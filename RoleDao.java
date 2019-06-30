package cn.people.dao.role;

import cn.people.pojo.Role;

import java.util.List;

public interface RoleDao {

    /**
     *
     * @return
     */
    public List<Role> getRoleList();
                 
    /**
     * @param role
     * @return
     *                /
    public Integer roleAdd(Role role);

    /**
     * @param role
     * @return
     */
    public Integer updateRole(Role role);

    /**
     * @param id
     * @return
     */
    public Integer deleteRoleById(Integer id);

    /**
     * @param id
     * @return
     */
    public Role getRoleById(Integer id);

}
