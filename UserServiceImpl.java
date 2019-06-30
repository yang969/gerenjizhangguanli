package cn.people.service.user;

import cn.people.dao.user.UserDao;
import cn.people.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")                  
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public User getLogin(String email, String userPassword) {
        User user =null;
        user = userDao.getLogin(email,userPassword);
        if (null!=user){
            if (!user.getEmail().equals(email) || !user.getUserPassword().equals(userPassword)){
                    user=null;
            }
        }
        return user;
    }

    @Override
    public boolean add(User user) {
        boolean flag=false;
        if (userDao.add(user)>0){
            flag=true;
        }
        return flag;
    }

    @Override
    public List<User> getUserList() {
        return userDao.getUserList();
    }

    @Override
    public User findById(Integer id)  {
        return userDao.findById(id);
    }

    @Override
    public Integer removeById(Integer id)  {
        return userDao.removeById(id);
    }

    @Override
    public Integer modify(User user)  {
        return userDao.modify(user);
    }
}
