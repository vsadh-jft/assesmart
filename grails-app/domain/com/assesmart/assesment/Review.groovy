package com.assesmart.assesment

class Review {

    // For radios and checkboxes, disallow changing the selection after a selection has been made.
    Boolean isAllowAnswerChanging

    // Show individual rationale or extra content when a user select a radio or checkbox
    Boolean isShowRationale

    // Show As You Go Prevent users from seeing how many questions are yet are to come.
    Boolean isShowAsFlow

    // Review questions anytime after the assessment Review questions after the assessment and from assessment history.
    Boolean isShowAnytime

    //Only review questions once Users are only shown questions immediately after taking the assessment, and never again.
    Boolean isShowOnce

    //Never review questions Users will be shown their scorecard, but no questions.
    Boolean isShowNever

    static belongsTo = [assessment: Assessment]

    static constraints = {
    }
}
