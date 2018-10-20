package bookManager.entity;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;

public class User {
//    private int id;
    private String username;
    private String password;

    public User(String name, String password) {
        this.username=name;
        this.password=password;
    }

/*    public User(int id,String name, String password){
        this.id=id;
        this.username=name;
        this.password=password;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }*/

    public String getUsername() {
        return username;
    }

    public void setName(String name) {
        this.username = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
