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
        "/signup"(controller: "user", action: "create")

        //Login
        "/login"(controller: "auth", action: "login")

        //create event
        "/create-event"(controller: "event", action: "create")



        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
