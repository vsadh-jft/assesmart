package com.assesmart.question

import com.assesmart.enumeration.QuestionType
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['IS_AUTHENTICATED_FULLY'])
class QuestionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def questionService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Question.list(params), model: [questionInstanceCount: Question.count()]
    }

    def show(Question questionInstance) {
        respond questionInstance
    }

    def selectType(){

    }

    def create() {
        println params
        [questionType:params.questionType]
    }

    @Transactional
    def save(Question questionInstance) {
        String questionType = params.questionType
        String itemBank = params.itemBank.id
        String description = params.description;
        Integer id = null
        if (questionInstance == null) {
            notFound()
            return
        }
        if(questionType.equals(QuestionType.MULTIPLE_CHOICE.toString())){
            List answers = params.list('answer')
            Integer correctAnswer = params.int('correctAnswer')
            if(correctAnswer==null){
                flash.message=message(code: 'question.invalid.correct.answer')
                render view: questionInstance?.id>0?'edit':'create', model: [questionInstance:questionInstance,questionType: params.questionType]
                return
            }
            id =  questionService.createUpdateMultipleChoiceQuestion(answers,correctAnswer,Integer.valueOf(itemBank),questionInstance?.id,description)
        }else if(questionType.equals(QuestionType.MULTIPLE_SELECT.toString())){
            List answers = params.list('answer')
            List correctAnswers = params.list('correctAnswer')
            if(correctAnswers.size()<1){
                flash.message=message(code: 'question.invalid.correct.answer')
                render view: questionInstance?.id>0?'edit':'create', model: [questionInstance:questionInstance,questionType: params.questionType]
                return
            }
            id =  questionService.createUpdateMultipleSelectQuestion(answers,correctAnswers,Integer.valueOf(itemBank),questionInstance?.id,description)
        }else if(questionType.equals(QuestionType.ESSAY.toString())){
            Integer height = params.int('height');
            id =  questionService.createUpdateEssayQuestion(Integer.valueOf(itemBank),questionInstance?.id,description,height)
        }else if(questionType.equals(QuestionType.SINGLE_RESPONSE.toString())){
            Integer points = params.int('points');
            List answers = params.list('answer')
            id =  questionService.createUpdateSingleResponseQuestion(answers,Integer.valueOf(itemBank),questionInstance?.id,description,points)
        }
        if(!(questionInstance?.id>0) && id>0){
            flash.message = message(code: 'default.created.message', args: [message(code: 'question.label', default: 'Question'),id])
        }else if(questionInstance?.id>0){
            flash.message = message(code: 'default.updated.message', args: [message(code: 'question.label', default: 'Question'), id])
        }
        redirect action: 'index'
    }

    def addAnswer(){
        String questionType = params.questionType
        println params
        if(questionType==QuestionType.MULTIPLE_CHOICE.toString()){
            render template: 'mutipleChoice' , model: [answerIndex:params.answerIndex]
        }else if(questionType==QuestionType.MULTIPLE_SELECT.toString()){
            render template: 'multipleSelect' , model: [answerIndex:params.answerIndex]
        }else if(questionType==QuestionType.SINGLE_RESPONSE.toString()){
            render template: 'singleResponse' , model: [answerIndex:params.answerIndex]
        }
    }

    def edit(Question questionInstance) {
        respond questionInstance
    }

    @Transactional
    def update(Question questionInstance) {
        println params
        println questionInstance?.questionType
        if (questionInstance == null) {
            notFound()
            return
        }

        if (questionInstance.hasErrors()) {
            respond questionInstance.errors, view: 'edit'
            return
        }

        questionInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Question.label', default: 'Question'), questionInstance.id])
                redirect questionInstance
            }
            '*' { respond questionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Question questionInstance) {

        if (questionInstance == null) {
            notFound()
            return
        }

        questionInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Question.label', default: 'Question'), questionInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'question.label', default: 'Question'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
