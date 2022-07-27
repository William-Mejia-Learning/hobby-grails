package hobbyhopper

class AuthService {

    def login() {
    }

    def doLogin(String userName, String password){
        User user = User.findByUsernameAndEmail(userName, password)
        if (user){
            return true
        }
        return false
    }

}