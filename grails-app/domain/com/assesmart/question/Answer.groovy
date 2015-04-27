package com.assesmart.question

/**
 * Created by vivekmaster146 on 27/4/15.
 */
class Answer {
    String answer
    Boolean correctAnswer
    static belongsTo = [question: Question]

    static constraints = {
        answer nullable: true, blank: false
        correctAnswer nullable: true
    }

    String toString(){
        return answer
    }
}
