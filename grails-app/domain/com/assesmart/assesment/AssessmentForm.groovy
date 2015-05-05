package com.assesmart.assesment

import com.assesmart.question.Question


/**
 * Created by vivekmaster146 on 5/5/15.
 */
class AssessmentForm {
    String name
    Integer noOfQuestions
    List questions

    static hasMany = [questions: Question]
    static belongsTo = [assessment:Assessment]


    static constraints = {
        name nullable: false
        noOfQuestions nullable: true
        questions nullable: true
        assessment nullable: false
    }
}
