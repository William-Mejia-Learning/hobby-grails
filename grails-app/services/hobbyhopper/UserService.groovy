package hobbyhopper

import grails.gorm.services.Service

@Service(User)
interface UserService {

    User get(Serializable id)

    User save(String username, String password, boolean enabled, boolean accountExpired, boolean accountLocked, boolean passwordExpired)

    List<User> list(Map args)

    Long count()

    void delete(Serializable id)

    User save(User user)

}