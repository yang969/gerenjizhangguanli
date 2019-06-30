package cn.people.service.bill;

import cn.people.dao.bill.BillParam;
import cn.people.pojo.Bill;

import java.util.List;

public interface BillService {

    /**
     *
     * @return
     */
    List<Bill> getBillList();

    /**
     *
     * @param bill
     * @return
     */
    Integer addBill(Bill bill);

    /**                 
     *
     * @param bill
     * @return
     */             
    Integer modifyBill(Bill bill);

    /**
     *
     * @param id
     * @return
     */
    Integer removeById(Integer id);

    /**
     *
     * @param id
     * @return
     */
    Bill findById(Integer id);

    /**
     *
     * @param billParam
     * @return
     */
    List<Bill> findByParams(BillParam billParam);

}
