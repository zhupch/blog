package bookManager.service;

import bookManager.dao.UserDao;
import bookManager.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class UserService {
    @Autowired
    private UserDao useDao;
    public List<User> findAllUser(){
        return useDao.list();
    }
@Transactional(readOnly = false)
    public User getDetail(User user){
        System.out.println("service_getDetail:"+user.getUsername()+"  "+user.getPassword());
        return useDao.getDetail(user);
    }
@Transactional(readOnly = false)
    public int insert (User user){
//        System.out.println("Service:"+user.getUsername()+"  "+user.getPassword());
        return useDao.insert(user);
    }

}
