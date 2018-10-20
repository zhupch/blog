package bookManager.controller;

import bookManager.entity.User;
import bookManager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
@RequestMapping("/")
public class Regist {
    @Autowired
    private UserService userService;
    @RequestMapping("/regist_commit")
    public String regist_commit(@RequestParam("username")String username, @RequestParam("password") String password){
        System.out.println(username+" "+password);
        User u=new User(username,password);
        User user=userService.getDetail(u);
        if(user==null){
            System.out.println(user==null);
            userService.insert(u);
            return "login";
        }
        return "error";
    }
}

