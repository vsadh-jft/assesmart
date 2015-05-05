package com.assesmart.assesment


class Content {

    // The lettering style to use on multiple choice questions.

    String assessmentDescription

    // Display description at the top of your printed assessments
    Boolean isDescriptionOnTop

    // Text shown before assessment:
    String assessmentText

    // Users must agree to the text shown before the assessment in order to take the assessment.
    Boolean isAgreementRequired

    // Message if passed the assessment
    String assessmentPassedMessage

    // Message if failed the assessment
    String assessmentFailedMessage

    // Per Question Review Text
    String perQuestionReviewText

    // Message if unscored/under review
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
