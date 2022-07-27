package hobbyhopper

class Category {

    long id

    String categoryName

    static mapping = {
        version false
        table "category"
        categoryName column: "category_name"
    }

    static constraints = {
        id(unique: true, nullable:false, blank:false)
    }
}
