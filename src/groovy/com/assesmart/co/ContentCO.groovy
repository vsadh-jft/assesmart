package com.assesmart.co

import com.assesmart.assesment.Content
import grails.validation.Validateable

/**
 * Created by vivekmaster146 on 5/5/15.
 */
@Validateable
class ContentCO {

    String assessmentDescription

    Boolean isDescriptionOnTop

    String assessmentText

    Boolean isAgreementRequired

    String assessmentPassedMessage

    String assessmentFailedMessage

    String perQuestionReviewText

    String messageUnscoredOrUnderReview

    static constraints = {
        importFrom Content
    }
}
