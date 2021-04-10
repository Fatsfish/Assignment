package dtos;

import java.io.Serializable;

public class UserDTO implements Serializable {

    private String userID;
    private String fullname;
    private String role;
    private String password;

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

    public String getUserID() {
        return userID;
    }

    public String getFullname() {
        return fullname;
    }

    public String getRole() {
        return role;
    }

    public String getPassword() {
        return password;
    }

}
