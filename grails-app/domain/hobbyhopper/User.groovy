package hobbyhopper

class User {

    long id;

    String username;
    String email;
    String password;
    String image;

    static hasMany = [events : Event]

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
        events joinTable: [name: "user_events", key: "id", column: "user_id"]

    }

    String toString() {
        "${username}"
    }

}
