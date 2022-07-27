package hobbyhopper

class UserEvent {

    long id

    static belongsTo = [Event]

    boolean isOwner = true

    static mapping = {
        version false
        table "user_events"
        isOwner column: "is_owner"

    }

    static constraints = {
        id(unique: true, nullable:false, blank:false)
    }

}