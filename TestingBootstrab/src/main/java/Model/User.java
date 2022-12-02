package Model;

public abstract class User
{
    protected String name;
    protected int id;
    protected String email;
    protected String password;
    protected String phoneNumber;
    protected String gender;
    protected String emailVerificationCode ;
    protected String phoneVerificationCode ;
    protected String brief ;
    protected int follwers ;
    protected int follwing ;

    public abstract void register();
    public abstract void login();

    public abstract void setName(String name);
    public abstract void setId(int id);
    public abstract void setEmail(String email);
    public abstract void setPassword(String password);
    public abstract void setPhoneNumber(String phoneNumber);
    public abstract void setGender(String gender);
    public abstract void setGender(char gender);
    public abstract void setEmailVerificationCode(String emailVerificationCode);
    public abstract void setPhoneVerificationCode(String phoneVerificationCode);
    public abstract void setBrief(String brief);
    public abstract void setFollwers(int follwers);
    public abstract void setFollwing(int following);

    public abstract String getName();
    public abstract int getId();
    public abstract String getEmail();
    public abstract String getPassword();
    public abstract String getPhoneNumber();
    public abstract String getGender();
    public abstract String getEmailVerificationCode();
    public abstract String getPhoneVerificationCode();
    public abstract String getBrief();
    public abstract int getFollwers();
    public abstract int getFollwing();
}
