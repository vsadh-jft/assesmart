package com.assesmart.assesment



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AssessmentFormController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AssessmentForm.list(params), model: [assessmentFormInstanceCount: AssessmentForm.count()]
    }

    def show(AssessmentForm assessmentFormInstance) {
        respond assessmentFormInstance
    }

    def create() {
        respond new AssessmentForm(params)
    }

    @Transactional
    def save(AssessmentForm assessmentFormInstance) {
        if (assessmentFormInstance == null) {
            notFound()
            return
        }

        if (assessmentFormInstance.hasErrors()) {
            respond assessmentFormInstance.errors, view: 'create'
            return
        }

        assessmentFormInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'assessmentForm.label', default: 'AssessmentForm'), assessmentFormInstance.id])
                redirect assessmentFormInstance
            }
            '*' { respond assessmentFormInstance, [status: CREATED] }
        }
    }

    def edit(AssessmentForm assessmentFormInstance) {
        respond assessmentFormInstance
    }

    @Transactional
    def update(AssessmentForm assessmentFormInstance) {
        if (assessmentFormInstance == null) {
            notFound()
            return
        }

        if (assessmentFormInstance.hasErrors()) {
            respond assessmentFormInstance.errors, view: 'edit'
            return
        }

        assessmentFormInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AssessmentForm.label', default: 'AssessmentForm'), assessmentFormInstance.id])
                redirect assessmentFormInstance
            }
            '*' { respond assessmentFormInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AssessmentForm assessmentFormInstance) {

        if (assessmentFormInstance == null) {
            notFound()
            return
        }

        assessmentFormInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AssessmentForm.label', default: 'AssessmentForm'), assessmentFormInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'assessmentForm.label', default: 'AssessmentForm'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
