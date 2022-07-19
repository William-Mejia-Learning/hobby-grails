package hobbyhopper

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class UserEventServiceSpec extends Specification {

    UserEventService userEventService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new UserEvent(...).save(flush: true, failOnError: true)
        //new UserEvent(...).save(flush: true, failOnError: true)
        //UserEvent userEvent = new UserEvent(...).save(flush: true, failOnError: true)
        //new UserEvent(...).save(flush: true, failOnError: true)
        //new UserEvent(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //userEvent.id
    }

    void "test get"() {
        setupData()

        expect:
        userEventService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<UserEvent> userEventList = userEventService.list(max: 2, offset: 2)

        then:
        userEventList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        userEventService.count() == 5
    }

    void "test delete"() {
        Long userEventId = setupData()

        expect:
        userEventService.count() == 5

        when:
        userEventService.delete(userEventId)
        sessionFactory.currentSession.flush()

        then:
        userEventService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        UserEvent userEvent = new UserEvent()
        userEventService.save(userEvent)

        then:
        userEvent.id != null
    }
}
