package cn.people.controller;

import cn.people.pojo.Role;
import cn.people.service.role.RoleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class RoleController {

    @Resource
    private RoleService roleService;


    @RequestMapping("/getRoleList")
    public String getRoleList(Model model){
        List<Role> roleList = null;

        try{
            roleList=roleService.getRoleList();
        }catch (Exception e){
            e.printStackTrace();
        }
        model.addAttribute("roleList", roleList);
        return "roleList";
    }
}
