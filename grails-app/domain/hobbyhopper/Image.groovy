package hobbyhopper

class Image {

    private long id

    private String url

    static belongsTo = Event

    Image(String url) {
        this.url = url
    }

    Image() {
    }

    long getId() {
        return id
    }

    void setId(long id) {
        this.id = id
    }

    String getUrl() {
        return url
    }

    void setUrl(String url) {
        this.url = url
    }
    static mapping = {
        version false
        table "image"
        url column: "url"

    }

    static constraints = {
        id(unique: true, nullable:false, blank:false)
    }


}
