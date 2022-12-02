package Model;

import java.util.ArrayList;

public class Customer extends User
{
    protected String address;
    protected String walletAccount;
    protected String rate;

    public Customer()
    {
        this.brief = "";
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPaymentAccount(String walletAccount) {
        this.walletAccount = walletAccount;
    }

    public String getAddress() {
        return this.address;
    }

    public String getPaymentAccount() {
        return this.walletAccount;
    }

    @Override
    public void register() {

    }

    @Override
    public void login() {

    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public void setId(int id) {
        this.id = id;
    }

    @Override
    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Override
    public void setGender(String gender) {
        this.gender = gender;
    }

    @Override
    public void setGender(char gender) {
        this.gender.toCharArray()[0] = gender;
    }

    @Override
    public void setEmailVerificationCode(String emailVerificationCode) {
        this.emailVerificationCode = emailVerificationCode;
    }

    @Override
    public void setPhoneVerificationCode(String phoneVerificationCode) {
        this.phoneVerificationCode = phoneVerificationCode;
    }

    @Override
    public void setBrief(String brief) {
        this.brief = brief;
    }

    @Override
    public void setFollwers(int follwers) {
        this.brief = brief;
    }

    @Override
    public void setFollwing(int following) {
        this.follwing = following;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public int getId() {
        return this.id;
    }

    @Override
    public String getEmail() {
        return this.email;
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    @Override
    public String getGender() {
        return this.gender;
    }

    @Override
    public String getEmailVerificationCode() {
        return this.emailVerificationCode;
    }

    @Override
    public String getPhoneVerificationCode() {
        return this.phoneVerificationCode;
    }

    @Override
    public String getBrief() {
        return this.brief;
    }

    @Override
    public int getFollwers() {
        return this.follwers;
    }

    @Override
    public int getFollwing() {
        return this.follwing;
    }

    public String getRate() {
        return rate;
    }

    @Override
    public String toString() {
        return
                id+","+name+","+email+","+password+","+address+","+phoneNumber+","+gender+","+brief+","+follwers+","+follwing+","+rate;
    }
}
