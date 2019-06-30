package cn.people.service.user;

import cn.people.pojo.User;

import java.util.List;

public interface UserService {

    /**
     *登录
     * @param email
     * @param userPassword
     * @return
     */
    User getLogin(String email,String userPassword);

    /**
     *添加
     * @param user
     * @return
     */
    boolean add(User user);

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
     */
    Integer removeById(Integer id);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    Integer modify(User user);
}
