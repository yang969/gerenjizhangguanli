package cn.people.dao.bill;

import cn.people.pojo.Bill;
import java.util.List;

public interface BillDao {

    List<Bill> getBillList();

    /**
     * @param bill
     * @return
     */
    Integer addBill(Bill bill);

    /**
     * @param bill
     * @return
     */
    Integer modifyBill(Bill bill);

    /**
     * @param id
     * @return
     */
    Integer removeById(Integer id);

    /**
     * @param id
     * @return
     */
    Bill findById(Integer id);

    /**
     *
     * @param sysuserParam
     * @return
     */
    List<Bill> selectByParams(BillParam sysuserParam);

}
