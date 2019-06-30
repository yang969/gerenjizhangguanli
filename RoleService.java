package cn.people.service.role;

import cn.people.pojo.Role;
import org.springframework.stereotype.Service;
import java.util.List;

@Service("roleService")
public interface RoleService {
    /**                 
     *
     * @return
     */
    public List<Role> getRoleList();
                                
    /**
     * @param role
     * @return
     */
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
