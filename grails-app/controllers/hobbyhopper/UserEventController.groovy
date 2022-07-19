package hobbyhopper

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class UserEventController {

    UserEventService userEventService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond userEventService.list(params), model:[userEventCount: userEventService.count()]
    }

    def show(Long id) {
        respond userEventService.get(id)
    }

    def create() {
        respond new UserEvent(params)
    }

    def save(UserEvent userEvent) {
        if (userEvent == null) {
            notFound()
            return
        }

        try {
            userEventService.save(userEvent)
        } catch (ValidationException e) {
            respond userEvent.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userEvent.label', default: 'UserEvent'), userEvent.id])
                redirect userEvent
            }
            '*' { respond userEvent, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond userEventService.get(id)
    }

    def update(UserEvent userEvent) {
        if (userEvent == null) {
            notFound()
            return
        }

        try {
            userEventService.save(userEvent)
        } catch (ValidationException e) {
            respond userEvent.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'userEvent.label', default: 'UserEvent'), userEvent.id])
                redirect userEvent
            }
            '*'{ respond userEvent, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        userEventService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'userEvent.label', default: 'UserEvent'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userEvent.label', default: 'UserEvent'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
