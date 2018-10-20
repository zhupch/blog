package bookManager.dao;

import bookManager.entity.User;

import java.util.List;

public interface UserDao {
    List<User> list();
    User getDetail( User user);
    int insert(User user);
}
