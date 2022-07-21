package hobbyhopper

class UserEvent {

    long id

    static belongsTo = [User, Event]

    private boolean isOwner

//


    UserEvent() {
    }

    boolean getIsOwner() {
        return isOwner
    }

    void setIsOwner(boolean isOwner) {
        this.isOwner = isOwner
    }

    long getId() {
        return id
    }

    void setId(long id) {
        this.id = id
    }

    static mapping = {
        version false
        table "user_events"
        isOwner column: "is_owner"
    }

    static constraints = {
        id(unique: true, nullable:false, blank:false)
    }

}