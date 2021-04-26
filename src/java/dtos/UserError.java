/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dtos;

/**
 *
 * @author User-PC
 */
public class UserError {

    private String userIDError;
    private String fullNameError;
    private String roleIDError;
    private String passwordError;
    private String confirmError;
    private String phoneError;
    private String emailError;
    private String addressError;

    public UserError(String userIDError, String fullNameError, String roleIDError, String passwordError, String confirmError, String phoneError, String emailError, String addressError) {
        this.userIDError = userIDError;
        this.fullNameError = fullNameError;
        this.roleIDError = roleIDError;
        this.passwordError = passwordError;
        this.confirmError = confirmError;
        this.phoneError = phoneError;
        this.emailError = emailError;
        this.addressError = addressError;
    }

    public UserError() {
    }

    public UserError(String userIDError, String fullNameError, String roleIDError, String passwordError, String confirmError) {
        this.userIDError = userIDError;
        this.fullNameError = fullNameError;
        this.roleIDError = roleIDError;
        this.passwordError = passwordError;
        this.confirmError = confirmError;
    }

    public String getUserIDError() {
        return userIDError;
    }

    public String getFullNameError() {
        return fullNameError;
    }

    public String getRoleIDError() {
        return roleIDError;
    }

    public String getPasswordError() {
        return passwordError;
    }

    public String getConfirmError() {
        return confirmError;
    }

    public String getPhoneError() {
        return phoneError;
    }

    public String getEmailError() {
        return emailError;
    }

    public String getAddressError() {
        return addressError;
    }

    public void setUserIDError(String userIDError) {
        this.userIDError = userIDError;
    }

    public void setFullNameError(String fullNameError) {
        this.fullNameError = fullNameError;
    }

    public void setPhoneError(String phoneError) {
        this.phoneError = phoneError;
    }

    public void setEmailError(String emailError) {
        this.emailError = emailError;
    }

    public void setAddressError(String addressError) {
        this.addressError = addressError;
    }

    public void setRoleIDError(String roleIDError) {
        this.roleIDError = roleIDError;
    }

    public void setPasswordError(String passwordError) {
        this.passwordError = passwordError;
    }

    public void setConfirmError(String confirmError) {
        this.confirmError = confirmError;
    }

}
