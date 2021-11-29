package login;

public class User1 {
    static String email;
    
    static String code;

    public User1() {
    }

    public User1(String email, String code) {
        this.email = email;
        
        this.code = code;
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
