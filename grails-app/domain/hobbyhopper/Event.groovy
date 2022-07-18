package hobbyhopper

class Event {

    private long id;

    private String eventName;

    private String referenceUrl;

    private String address;

    private Date startDate;

    private Date endDate;

    private String startTime;

    private String endTime;

//    static hasMany = [user:UserEvent]
//    private List<UserEvent> userEvents;


    static constraints = {
        id(unique: true, nullable:false, blank:false)
    }


}
