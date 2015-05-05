package com.assesmart.assesment

/**
 * Created by vivekmaster146 on 5/5/15.
 */
class Assessment {
    String name
    Date dateCreated
    Date lastUpdated
    Boolean isRuleBased
    Set assessmentForms

    static hasMany = [assessmentForms: AssessmentForm]
    static hasOne = [general: General, review: Review, content: Content, proctor: Proctor]

    static constraints = {
        name nullable: false, blank: false
    }
}
