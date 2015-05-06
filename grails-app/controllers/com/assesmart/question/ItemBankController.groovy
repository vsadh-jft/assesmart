package com.assesmart.question

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['IS_AUTHENTICATED_FULLY'])
class ItemBankController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemBank.list(params), model: [itemBankInstanceCount: ItemBank.count()]
    }

    def show(ItemBank itemBankInstance) {
        respond itemBankInstance
    }

    def showByItemBank(){

        params.max = Math.min(params.max ?: 10, 100)
        println params
        if(params.id){
            def questionInstanceList = Question.findAllByItemBank(ItemBank.get(params.id))
            println "size"
            println questionInstanceList.size()
          render view:'showByItemBank' ,model:[questionInstanceList:questionInstanceList,questionInstanceCount: questionInstanceList.size()]
        }
    }

    def create() {
        respond new ItemBank(params)
    }

    @Transactional
    def save(ItemBank itemBankInstance) {
        if(itemBankInstance.id==null && !(itemBankInstance.id>0)){
            itemBankInstance.setCreatedDate(new Date())
        }
        if (itemBankInstance == null) {
            notFound()
            return
        }

        itemBankInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'itemBank.label', default: 'ItemBank'), itemBankInstance.id])
                redirect itemBankInstance
            }
            '*' { respond itemBankInstance, [status: CREATED] }
        }
    }

    def edit(ItemBank itemBankInstance) {

        respond itemBankInstance
    }

    @Transactional
    def update(ItemBank itemBankInstance) {
        if (itemBankInstance == null) {
            notFound()
            return
        }

        if (itemBankInstance.hasErrors()) {
            respond itemBankInstance.errors, view: 'edit'
            return
        }

        itemBankInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ItemBank.label', default: 'ItemBank'), itemBankInstance.id])
                redirect itemBankInstance
            }
            '*' { respond itemBankInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ItemBank itemBankInstance) {

        if (itemBankInstance == null) {
            notFound()
            return
        }

        itemBankInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ItemBank.label', default: 'ItemBank'), itemBankInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemBank.label', default: 'ItemBank'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
