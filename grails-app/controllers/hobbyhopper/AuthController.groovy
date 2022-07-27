package hobbyhopper

class AuthController {

    AuthService authService
    UserService userService

    def login() {
    }

    def doLogin() {
        if (authService.doLogin(params.username, params.password)) {
            redirect(controller: "event", action: "index")
        } else {
            redirect(controller: "auth", action: "login")
        }
    }


    def logout() {
        session.invalidate()
        redirect(controller: "auth", action: "login")
    }





}
