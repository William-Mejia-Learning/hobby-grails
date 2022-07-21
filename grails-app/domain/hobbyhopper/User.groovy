package hobbyhopper
import grails.rest.Resource


class User {

    long id;

    private String username;

    private String email;

    private String password;

    private String image;

    static hasMany = [userEvents : UserEvent]

    User(String username, String email, String password, String image) {
        this.username = username
        this.email = email
        this.password = password
        this.image = image
    }

    User() {

    }


    int getId() {
        return id
    }

    void setId(int id) {
        this.id = id
    }

    String getUsername() {
        return username
    }

    void setUsername(String username) {
        this.username = username
    }

    String getEmail() {
        return email
    }

    void setEmail(String email) {
        this.email = email
    }

    String getPassword() {
        return password
    }

    void setPassword(String password) {
        this.password = password
    }

    String getImage() {
        return image
    }

    void setImage(String image) {
        this.image = image
    }
    static constraints = {
        id(unique: true, nullable:false, blank:false)
    }
//user_events
    static mapping = {
        version false
        table "users"
        username column: "username"
        email column: "email"
        password column: "password"
        image column: "image"
        userEvents joinTable: [name: "user_events", key: "id", column: "user_id"]

    }
//
    String toString() {
        "${username}"
    }

}
