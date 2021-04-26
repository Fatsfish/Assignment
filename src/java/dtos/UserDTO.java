package dtos;

import java.io.Serializable;

public class UserDTO implements Serializable {

    private String userID;
    private String fullname;
    private String role;
    private String password;
    private String phone;
    private String email;
    private String address;

    public UserDTO(String userID, String fullname, String role, String password, String phone, String email, String address) {
        this.userID = userID;
        this.fullname = fullname;
        this.role = role;
        this.password = password;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public UserDTO(String userID, String fullname, String role, String password) {
        this.userID = userID;
        this.fullname = fullname;
        this.role = role;
        this.password = password;
    }

    public UserDTO() {
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUserID() {
        return userID;
    }

    public String getFullname() {
        return fullname;
    }

    public String getRole() {
        return role;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getPassword() {
        return password;
    }

}
