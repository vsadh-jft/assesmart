package com.assesmart.assesment


class Content {

    String assessmentDescription

    Boolean isDescriptionOnTop

    String assessmentText

    Boolean isAgreementRequired

    String assessmentPassedMessage

    String assessmentFailedMessage

    String perQuestionReviewText

    String messageUnscoredOrUnderReview

    static belongsTo = [assessment: Assessment]

    static constraints = {
        assessmentDescription nullable: true, blank: false
        assessmentText nullable: true, blank: false
        assessmentFailedMessage nullable: false, blank: false
        assessmentPassedMessage nullable: false, blank: false
        perQuestionReviewText nullable: true, blank: false
        messageUnscoredOrUnderReview nullable: false
    }
}
