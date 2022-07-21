package hobbyhopper

class Event {

    long id;

    private String eventName;

    private String referenceUrl;

    private String address;

    private Date startDate;

    private Date endDate;

    private String startTime;

    private String endTime;

    private int categoryId;

//    static belongsTo = [UserEvent]
//
    static hasMany = [userEvents : UserEvent, images : Image]

    Event(String eventName, String referenceUrl, String address, Date startDate, Date endDate, String startTime, String endTime, int categoryId) {
        this.eventName = eventName
        this.referenceUrl = referenceUrl
        this.address = address
        this.startDate = startDate
        this.endDate = endDate
        this.startTime = startTime
        this.endTime = endTime
        this.categoryId = categoryId
    }

    Event() {

    }

    long getId() {
        return id
    }

    void setId(long id) {
        this.id = id
    }

    String getEventName() {
        return eventName
    }

    void setEventName(String eventName) {
        this.eventName = eventName
    }

    String getReferenceUrl() {
        return referenceUrl
    }

    void setReferenceUrl(String referenceUrl) {
        this.referenceUrl = referenceUrl
    }

    String getAddress() {
        return address
    }

    void setAddress(String address) {
        this.address = address
    }

    Date getStartDate() {
        return startDate
    }

    void setStartDate(Date startDate) {
        this.startDate = startDate
    }

    Date getEndDate() {
        return endDate
    }

    void setEndDate(Date endDate) {
        this.endDate = endDate
    }

    String getStartTime() {
        return startTime
    }

    void setStartTime(String startTime) {
        this.startTime = startTime
    }

    String getEndTime() {
        return endTime
    }

    void setEndTime(String endTime) {
        this.endTime = endTime
    }

    int getCategoryId() {
        return categoryId
    }

    void setCategoryId(int categoryId) {
        this.categoryId = categoryId
    }

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
