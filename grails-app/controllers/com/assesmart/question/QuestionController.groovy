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
        println str
        if (questionInstance == null) {
            notFound()
            return
        }
        if(str.equals(QuestionType.MULTIPLE_CHOICE.toString())){
            List answers = params.list('answer')
            Integer correctAnswer = params.int('correctAnswer')
            if(correctAnswer==null){
                flash.message='There must be atleast one correct answer'
                render view: 'create', model: [questionInstance:questionInstance,questionType: params.questionType]
                return
            }
            List<Answer> answersList = new LinkedList<Answer>();
            for(String s:answers){
                if(s==''){
                    flash.message='Please enter all fields'
                    render view: 'create', model: [questionInstance:questionInstance,questionType: params.questionType]
                    return
                }
                Answer answer =new Answer();
                answer.setAnswer(s)
                answer.setCorrectAnswer(answers.get(correctAnswer-1).equals(s)?true:false)
                answer.setQuestion(questionInstance)
                answersList.add(answer)
            }
            if(questionInstance?.id>0){
                Answer.findAllByQuestion(questionInstance).each {it.delete()}
            }
            questionInstance.setAnswers(answersList)
        }else if(str.equals(QuestionType.MULTIPLE_SELECT.toString())){
            List answers = params.list('answer')
            List correctAnswers = params.list('correctAnswer')
            if(correctAnswers.size()<1){
                flash.message='There must be atleast one correct answer'
                render view: 'create', model: [questionInstance:questionInstance,questionType: params.questionType]
                return
            }
            List<Answer> answersList = new LinkedList<Answer>();
            int i =1;
            for(String s:answers){
                if(s==''){
                    flash.message='Please enter all fields'
                    render view: 'create', model: [questionInstance:questionInstance,questionType: params.questionType]
                    return
                }
                Answer answer =new Answer();
                answer.setAnswer(s)
                answer.setCorrectAnswer(correctAnswers.toArray().contains(i.toString())?true:false)
                answer.setQuestion(questionInstance)
                answersList.add(answer)
                i++;
            }
            if(questionInstance?.id>0){
                Answer.findAllByQuestion(questionInstance).each {it.delete()}
            }
            questionInstance.setAnswers(answersList)
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
        String str = params.questionType
        println params
        if(str==QuestionType.MULTIPLE_CHOICE.toString()){
            render template: 'mutipleChoice' , model: [answerIndex:params.answerIndex]
        }else if(str==QuestionType.MULTIPLE_SELECT.toString()){
            render template: 'multipleSelect' , model: [answerIndex:params.answerIndex]
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
