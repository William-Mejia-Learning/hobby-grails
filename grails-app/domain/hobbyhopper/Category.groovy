package hobbyhopper

class Category {

    long id

    private String categoryName

    Category(version, String categoryName) {
        this.version = version
        this.categoryName = categoryName
    }

    Category() {
    }

    long getId() {
        return id
    }

    void setId(long id) {
        this.id = id
    }

    String getCategoryName() {
        return categoryName
    }

    void setCategoryName(String categoryName) {
        this.categoryName = categoryName
    }

    static mapping = {
        version false
        table "category"
        categoryName column: "category_name"
    }

    static constraints = {
        id(unique: true, nullable:false, blank:false)
    }
}
