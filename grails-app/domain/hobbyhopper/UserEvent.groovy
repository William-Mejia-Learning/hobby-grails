package hobbyhopper

class UserEvent {

    long id

    static belongsTo = [User]

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
        id column: "id"
        isOwner column: "is_owner"
        events column: ""
    }

    static constraints = {
        id(unique: true, nullable:false, blank:false)
    }

}