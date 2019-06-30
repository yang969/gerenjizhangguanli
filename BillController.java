package cn.people.controller;

import cn.people.dao.bill.BillParam;
import cn.people.pojo.Bill;
import cn.people.pojo.Role;
import cn.people.service.bill.BillService;
import cn.people.service.role.RoleService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.List;

@Controller
public class BillController {

    @Resource
    private BillService billService;

    @Resource
    private RoleService roleService;

    @RequestMapping("/getBillList")
    public String getBillList(Model model){
        List<Bill> billList = billService.getBillList();
        List<Role> roles =roleService.getRoleList();
        model.addAttribute("billList",billList);
        model.addAttribute("roles", roles);
        return "billList";
    }

    @RequestMapping("/findByParams")
    public String findByParams(BillParam billParam, Model model,HttpServletRequest request){



        billParam.setCreationDate(request.getParameter("creationDate"));


        List<Bill> billList=billService.findByParams(billParam);

        //实现数据回显
        model.addAttribute("billList",billList);

        return "billList";
    }


    @RequestMapping("/Add")
    public String billAdd(HttpSession session,Model model) {
        if (null!=session.getAttribute("user")) {
            List<Role> roles = roleService.getRoleList();
            model.addAttribute("roles", roles);
            return "billAdd";
        }else {
            return "login";
        }
    }

    @RequestMapping("/billAddAction")
    public String billAddAction(HttpSession session, Bill bill){
        if (null!=session.getAttribute("user")) {

            billService.addBill(bill);

            return "redirect:getBillList";
        }else {
            return "login";
        }
    }

    @RequestMapping("/billModify")
    public String modify(Bill bill1, HttpSession session, Model model) {
        if (null==session.getAttribute("user")) {
            return "login";
        }else {
            billService.modifyBill(bill1);
            return "redirect:getBillList";
        }
    }

    @RequestMapping("/findBillById")
    public String findById(HttpSession session,Model model,@Param("id") String id){
        if (null==session.getAttribute("user") ) {
            return "login";
        }else {
            if ( null!=id&&id !="") {
                Bill bill1 = billService.findById(Integer.parseInt(id));
                List<Role> roles1 = roleService.getRoleList();
                model.addAttribute("roles1", roles1);
                model.addAttribute("bill1", bill1);
                return "billModify";
            }else {
                return "billList";
            }

        }
    }

    @RequestMapping("/removeBillById")
    public String removeById(HttpSession session,@Param("id") String id) {
        if (null==session.getAttribute("user") ) {
            return "login";
        }else {
            if ( null!=id&&id !="") {
                billService.removeById(Integer.parseInt(id));
            }
        }
        return "redirect:getBillList";
    }

}
