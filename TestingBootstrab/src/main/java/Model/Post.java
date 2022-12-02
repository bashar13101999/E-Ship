package Model;

import java.util.ArrayList;

public class Post
{
    private Customer customer;
    private String customerName;
    private String postingDate ;
    private String category ;
    private String nameOfPiece ;
    private String countryFrom ;
    private String countryTo ;
    private String price ;
    private String time ;
    private String description ;
    private static ArrayList<Post> posts = new ArrayList<>();

    public Post()
    {

    }

    public Post(String customerName, String postingDate, String category, String nameOfPiece, String countryFrom, String countryTo, String price, String time, String description)
    {
        this.customerName = customerName;
        this.postingDate = postingDate;
        this.category = category;
        this.nameOfPiece = nameOfPiece;
        this.countryFrom = countryFrom;
        this.countryTo = countryTo;
        this.price = price;
        this.time = time;
        this.description = description;
    }
    public static void add(Post post)
    {
        posts.add(post);
    }
    public static ArrayList<Post> getPosts()
    {
        return posts;
    }
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public void setPostingDate(String postingDate) {
        this.postingDate = postingDate;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setNameOfPiece(String nameOfPiece) {
        this.nameOfPiece = nameOfPiece;
    }

    public void setCountryFrom(String countryFrom) {
        this.countryFrom = countryFrom;
    }

    public void setCountryTo(String countryTo) {
        this.countryTo = countryTo;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Customer getCustomer() {
        return customer;
    }

    public String getPostingDate() {
        return postingDate;
    }

    public String getCategory() {
        return category;
    }

    public String getNameOfPiece() {
        return nameOfPiece;
    }

    public String getCountryFrom() {
        return countryFrom;
    }

    public String getCountryTo() {
        return countryTo;
    }

    public String getPrice() {
        return price;
    }

    public String getTime() {
        return time;
    }

    public String getDescription() {
        return description;
    }

    public String getCustomerName() {
        return customerName;
    }

    public static int getSize() {

        return posts.size();
    }

    @Override
    public String toString() {
        return "Post{" +
                "customer=" + customer +
                ", customerName='" + customerName + '\'' +
                ", postingDate='" + postingDate + '\'' +
                ", category='" + category + '\'' +
                ", nameOfPiece='" + nameOfPiece + '\'' +
                ", countryFrom='" + countryFrom + '\'' +
                ", countryTo='" + countryTo + '\'' +
                ", price='" + price + '\'' +
                ", time='" + time + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
