package hobbyhopper

import grails.gorm.services.Service

@Service(UserEvent)
interface UserEventService {

    UserEvent get(Serializable id)

    List<UserEvent> list(Map args)

    Long count()

    void delete(Serializable id)

    UserEvent save(UserEvent userEvent)

}