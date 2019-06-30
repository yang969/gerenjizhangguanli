package cn.people.service.bill;

import cn.people.dao.bill.BillDao;
import cn.people.dao.bill.BillParam;
import cn.people.pojo.Bill;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("billService")
public class BillServiceImpl implements BillService {

    @Resource
    private BillDao billDao;

    @Override
    public List<Bill> getBillList() {
        return billDao.getBillList();
    }

    @Override
    public Integer addBill(Bill bill) {
        return billDao.addBill(bill);
    }

    @Override
    public Integer modifyBill(Bill bill) {
        return billDao.modifyBill(bill);
    }

    @Override
    public Integer removeById(Integer id) {
        return billDao.removeById(id);
    }

    @Override
    public Bill findById(Integer id) {
        return billDao.findById(id);
    }

    @Override
    public List<Bill> findByParams(BillParam billParam) {
        return billDao.selectByParams(billParam);
    }

}
