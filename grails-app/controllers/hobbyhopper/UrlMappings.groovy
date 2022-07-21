package hobbyhopper

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        //Landing Page
        "/"(view:"/index")

        //signup page
        "/signup"(view: "/user/create")
        "/register"{
            controller = "index"
            action = "index"
        }



        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
