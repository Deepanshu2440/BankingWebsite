package login;

public class User {
    static String email;
    static String pass;
    static String code;

    public User() {
    }

    public User(String email,String pass, String code) {
        this.email = email;
        this.pass = pass;
        this.code = code;
    }

    public static String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public static String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
    
}
