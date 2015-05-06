package com.assesmart.co

import com.assesmart.assesment.Review
import grails.validation.Validateable

/**
 * Created by vivekmaster146 on 5/5/15.
 */
@Validateable
class ReviewCO {

    Integer identifier

    Boolean isAllowAnswerChanging

    Boolean isShowRationale

    Boolean isShowAsFlow

    Boolean isShowAnytime

    Boolean isShowOnce

    Boolean isShowNever

    static constraints = {
        importFrom Review
    }
}
