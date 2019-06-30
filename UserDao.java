package cn.people.dao.user;

import cn.people.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface UserDao {

    /**
     *登录验证
     * @param email
     * @param userPassword
     * @return
     */
    User getLogin(@Param("email") String email, @Param("userPassword") String userPassword);

    /**
     * 添加用户
     * @param user
     * @return
     */
    Integer add(User user);

    /**
     *用户列表
     * @return
     */
    List<User> getUserList();
       
    /**
     *通过ID查询用户
     * @param id
     * @return
     */
    User findById(Integer id);
                           
    /**
     * 通过Id删除用户
     * @param id
     * @return
     * @throws Exception
     */
    Integer removeById(Integer id);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    Integer modify(User user);

}
