package com.assesmart.question

import com.assesmart.enumeration.QuestionType
import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['IS_AUTHENTICATED_FULLY'])
class QuestionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

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
        println params
        String str = params.questionType
        println "save question........"
        println str
        if (questionInstance == null) {
            notFound()
            return
        }
        println QuestionType.MULTIPLE_CHOICE
        if(str.equals(QuestionType.MULTIPLE_CHOICE.toString())){
            List answers = params.list('answer')
            Integer correctAnswer = params.int('correctAnswer')
            List<Answer> answersList = new LinkedList<Answer>();
            for(String s:answers){
                if(s==''){
                    flash.message='Please enter all fields'
                    render view: 'create', model: [questionInstance:questionInstance,questionType: params.questionType]
                    return
                }
                Answer answer =new Answer();
                answer.setAnswer(s)
                answer.setCorrectAnswer(answers.get(correctAnswer).equals(s)?true:false)
                answer.setQuestion(questionInstance)
                answersList.add(answer)
            }
            questionInstance.setAnswers(answersList)
        }else if(str.equals(QuestionType.MULTIPLE_SELECT.toString())){
            List answers = params.list('answer')
            Integer correctAnswer = params.int('correctAnswer')
            List<Answer> answersList = new LinkedList<Answer>();
            for(String s:answers){
                Answer answer =new Answer();
                answer.setAnswer(s)
                answer.setCorrectAnswer(answers.get(correctAnswer).equals(s)?true:false)
                answer.setQuestion(questionInstance)
                answersList.add(answer)
            }
        }


        if (questionInstance.hasErrors()) {
            respond questionInstance.errors, view: 'create'
            return
        }

        questionInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'question.label', default: 'Question'), questionInstance.id])
                redirect action: 'index'
            }
            '*' { respond questionInstance, [status: CREATED] }
        }
    }

    def addAnswer(){
        println "here..."
        render template: 'mutipleChoice' , model: [answerIndex:params.answerIndex]
    }

    def edit(Question questionInstance) {
        respond questionInstance
    }

    @Transactional
    def update(Question questionInstance) {
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
