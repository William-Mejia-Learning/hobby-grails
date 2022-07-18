package hobbyhopper

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/signup"(view:"/user/create")

        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}