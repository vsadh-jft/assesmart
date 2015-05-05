package com.assesmart.assesment

/**
 * Created by vivekmaster146 on 5/5/15.
 */
class Assessment {
    String id
    String name
    Date dateCreated
    Date lastUpdated
    Boolean isRuleBased
    Set assessmentForms

    static hasMany = [assessmentForms: AssessmentForm]

    static constraints = {
        name nullable: false, blank: false
    }
}
