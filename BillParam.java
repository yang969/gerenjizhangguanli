package cn.people.dao.bill;

import com.alibaba.fastjson.annotation.JSONField;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class BillParam {


    private Date creationDate;

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String str) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
        Date creationDate;
        try {
            creationDate = sdf.parse(str);
            this.creationDate = creationDate;
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}
