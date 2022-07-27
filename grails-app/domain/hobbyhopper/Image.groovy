package hobbyhopper

class Image {

    long id

    String url

    static belongsTo = Event

    static mapping = {
        version false
        table "image"
        url column: "url"

    }

    static constraints = {
        id(unique: true, nullable:false, blank:false)
    }


}
