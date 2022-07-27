package hobbyhopper

class Event {

    long id;
    String eventName;
    String referenceUrl;
    String address;
    Date startDate;
    Date endDate;
    String startTime;
    String endTime;
    int categoryId;

//    static belongsTo = [UserEvent]

    static hasMany = [userEvents : UserEvent, images : Image]

    static mapping = {
        version false
        table "events"
        eventName column: "event_name"
        referenceUrl column: "reference_url"
        address column: "address"
        startDate column: "start_date"
        endDate column: "end_date"
        startTime column: "start_time"
        endTime column: "end_time"
        categoryId column: "category_id"

        images joinTable: [name: "image", key: "id", column: "event_id"]

        userEvents joinTable: [name: "user_events", key: "id", column: "event_id"]

    }

    static constraints = {
        id(unique: true, nullable: false, blank: false)
    }


}
