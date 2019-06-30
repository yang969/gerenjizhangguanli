package cn.people.controller;

import cn.people.pojo.User;
import cn.people.service.user.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping("/getUserList")
    public String getUserList(Model model){
        List<User> userList=userService.getUserList();
        model.addAttribute("userList",userList);
        return "userList";
    }

    @RequestMapping("/modifyUser")
    public String modify(User user1, HttpSession session, Model model) {
        if (null==session.getAttribute("user")) {
            return "login";
        }else {
            userService.modify(user1);
            return "redirect:getUserList";
        }
    }

    @RequestMapping("/findById")
    public String findById(HttpSession session,Model model,@Param("id") String id){
        if (null==session.getAttribute("user") ) {
            return "login";
        }else {
            if ( null!=id&&id !="") {
                User user1 = userService.findById(Integer.parseInt(id));
                model.addAttribute("user1", user1);
                return "userModify";
            }else {
                return "userList";
            }

        }
    }


    @RequestMapping("/removeById")
    public String removeById(HttpSession session,@Param("id") String id) {
        if (null==session.getAttribute("user") ) {
            return "login";
        }else {
            if ( null!=id&&id !="") {
                userService.removeById(Integer.parseInt(id));
            }
        }
        return "redirect:getUserList";

    }

    @RequestMapping("/doRegister")
    public String add(User user, HttpSession session, HttpServletRequest request) {
        if (userService.add(user)){
            return "login";
        }else {
            return "register";
        }
    }

    @RequestMapping("/register")
    public String register(){
        return "register";
    }

}
