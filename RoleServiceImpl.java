package cn.people.service.role;

import cn.people.dao.role.RoleDao;
import cn.people.pojo.Role;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("roleService")
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleDao roleDao;

    @Override
    public List<Role> getRoleList() {
        return roleDao.getRoleList();
    }

    @Override
    public Integer roleAdd(Role role) {
        return null;
    }

    @Override
    public Integer updateRole(Role role) {
        return null;
    }

    @Override
    public Integer deleteRoleById(Integer id) {
        return null;
    }

    @Override
    public Role getRoleById(Integer id) {
        return null;
    }
}
