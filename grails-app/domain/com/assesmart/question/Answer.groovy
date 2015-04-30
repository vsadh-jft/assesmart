package com.assesmart.question

/**
 * Created by vivekmaster146 on 27/4/15.
 */
class Answer {
    String answer
    Boolean correctAnswer
    Integer precedence
    Integer indexNumber
    Integer destinationId
    static belongsTo = [question: Question]

    static constraints = {
        answer nullable: true, blank: false
        correctAnswer nullable: true
        precedence nullable: true
        destinationId nullable: true
        indexNumber nullable: true
    }

    String toString(){
        return answer
    }
}
