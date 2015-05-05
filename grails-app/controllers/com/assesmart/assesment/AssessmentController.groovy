package com.assesmart.assesment

import com.assesmart.co.AssessmentCO
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class AssessmentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Assessment.list(params), model:[assessmentInstanceCount: Assessment.count()]
    }

    def show(Assessment assessmentInstance) {
        respond assessmentInstance
    }

    def create() {
        respond new AssessmentCO()
    }

    @Transactional
    def save(AssessmentCO assessmentInstance) {
        println assessmentInstance.name
        println assessmentInstance.contentCO.assessmentDescription
        println assessmentInstance.name
        if (assessmentInstance == null) {
            notFound()
            return
        }

        if (assessmentInstance.hasErrors()) {
            respond assessmentInstance.errors, view:'create'
            return
        }

        assessmentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'assessment.label', default: 'Assessment'), assessmentInstance.id])
                redirect assessmentInstance
            }
            '*' { respond assessmentInstance, [status: CREATED] }
        }
    }

    def edit(Assessment assessmentInstance) {
        respond assessmentInstance
    }

    @Transactional
    def update(Assessment assessmentInstance) {
        if (assessmentInstance == null) {
            notFound()
            return
        }

        if (assessmentInstance.hasErrors()) {
            respond assessmentInstance.errors, view:'edit'
            return
        }

        assessmentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Assessment.label', default: 'Assessment'), assessmentInstance.id])
                redirect assessmentInstance
            }
            '*'{ respond assessmentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Assessment assessmentInstance) {

        if (assessmentInstance == null) {
            notFound()
            return
        }

        assessmentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Assessment.label', default: 'Assessment'), assessmentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'assessment.label', default: 'Assessment'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
