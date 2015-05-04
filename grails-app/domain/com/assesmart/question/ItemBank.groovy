package com.assesmart.question

/**
 * Created by vivekmaster146 on 27/4/15.
 */
class ItemBank {
    String name
    Date createdDate

    static hasMany = [questions: Question]

    String toString(){
        return name
    }
}
