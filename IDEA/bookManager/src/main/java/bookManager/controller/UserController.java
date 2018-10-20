package bookManager.controller;

import bookManager.dao.UserDao;
import bookManager.entity.User;
import bookManager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    public String login(@RequestParam("username")String username,@RequestParam("password") String password){
        User u=new User(username,password);
        System.out.println("Controller:"+u.getUsername()+"  "+u.getPassword());
        User user=userService.getDetail(u);
        if (user != null) {
            System.out.println(user.getUsername()+"  "+user.getPassword());
            System.out.println("username:"+username);
            System.out.println("password:"+password);
            return "success";

        }
        else {
            return "error";
        }
    }
    @RequestMapping("/register")
    public String register(){
        return "register";
    }
/*    @RequestMapping("/regist_commit")
    public String regist_commit(@RequestParam("username")String username,@RequestParam("password") String password){
        System.out.println(username+" "+password);
        User u=new User(username,password);
        User user=userService.getDetail(u);
        if(user==null){
            System.out.println(user==null);
            userService.insert(u);
            return "login";
        }
        return "error";
    }*/
//    @RequestMapping("/kk")
    @ResponseBody
//**********************************test***************************************/
    public List<User> test(Model model){
        List<User> list=userService.findAllUser();
        return list;
    }
}
