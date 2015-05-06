package com.assesmart.assesment

import com.assesmart.co.AssessmentCO
import com.assesmart.co.ContentCO
import com.assesmart.co.GeneralCO
import com.assesmart.co.ProctorCO
import com.assesmart.co.ReviewCO
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class AssessmentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def assessmentService

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

        Integer id = null
        println assessmentInstance.name
        println assessmentInstance.isRuleBased

        id =  assessmentService.createAssessment(assessmentInstance)

        if(!(assessmentInstance?.id>0) && id>0){
            flash.message = message(code: 'default.created.message', args: [message(code: 'question.label', default: 'Assessment'),id])
        }else if(assessmentInstance?.id>0){
            flash.message = message(code: 'default.updated.message', args: [message(code: 'question.label', default: 'Assessment'), id])
        }
        redirect action: 'index'
        if (assessmentInstance == null) {
            notFound()
            return
        }
    }

    def edit(Assessment assessmentInstance) {
        AssessmentCO assessmentCO = new AssessmentCO()
        assessmentCO.id = assessmentInstance.id
        assessmentCO.name = assessmentInstance.name
        assessmentCO.isRuleBased = assessmentInstance.isRuleBased
        ContentCO contentCO = new ContentCO()
        GeneralCO generalCO = new GeneralCO()
        ReviewCO reviewCO = new ReviewCO()
        ProctorCO proctorCO = new ProctorCO()
        bindData(contentCO, assessmentInstance.content.properties)
        bindData(generalCO, assessmentInstance.general.properties)
        bindData(reviewCO, assessmentInstance.review.properties)
        bindData(proctorCO, assessmentInstance.proctor.properties)
        assessmentCO.setContentCO(contentCO)
        assessmentCO.setGeneralCO(generalCO)
        assessmentCO.setProctorCO(proctorCO)
        assessmentCO.setReviewCO(reviewCO)
        [assessmentInstance:assessmentCO]
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
