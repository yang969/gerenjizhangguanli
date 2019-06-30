package cn.people.pojo;


public class User {

    /**
     * 主键id
     */
    private Integer id;
    /**
     * 用户名
     *
     *              /
    private String userName;
    /**
     * 手机号                   
     */
    private String phone;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 密码
     */
    private String userPassword;

    public User() {
    }

    public User(Integer id, String userName, String phone, String email, String userPassword) {
        this.id = id;
        this.userName = userName;
        this.phone = phone;
        this.email = email;
        this.userPassword = userPassword;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }
}
