package com.assesmart.question

import com.assesmart.enumeration.QuestionType

/**
 * Created by vivekmaster146 on 27/4/15.
 */
class Question {
    String description
    QuestionType questionType
    List answers
    ItemBank itemBank

    static hasMany = [answers: Answer]

    String toString(){
        return description
    }
}
