package com.assesmart.co

import com.assesmart.assesment.Assessment
import com.assesmart.assesment.AssessmentForm
import grails.validation.Validateable

/**
 * Created by vivekmaster146 on 5/5/15.
 */
@Validateable
class AssessmentCO {
    String name
    Date dateCreated
    Date lastUpdated
    Boolean isRuleBased
    Set assessmentForms
    ContentCO contentCO
    GeneralCO generalCO
    ReviewCO reviewCO
    ProctorCO proctorCO

    static hasMany = [assessmentForms: AssessmentForm]

    static constraints = {
        importFrom Assessment
    }
}
