package com.assesmart.assesment

class General {

    // Strict mode disables certain features such as navigating to arbitrary questions and question notes.
    Boolean isStrictMode

    // Disallow users from changing language mid-assessment? Required to track the language the user is writing.
    Boolean isAllowChangeLanguage

    // Send emails about this assessment? Uncheck if you never want emails relating to this assessment to be sent (completed, granted, under review).
    Boolean isSendMail

    // In minutes
    Integer timeLimit

    // Hide Pause Button
    Boolean isHidePauseButton

    // If greater than zero, assessment will automatically be submitted after the set number of minutes, if the user is not in the assessment interface. 0 to never auto-submit.
    Integer autoSubmitTimeLimit

    // Text to show if the user has an in progress exam that they cannot continue due to going over the continuation time.
    String noContinuationText

    // A user must meet or exceed a specified passing score (mark) to pass the assessment.
    Boolean isTotalScore

    // A user must achieve a passing score based on the pass level (Angoff score) of the questions in their assessment
    Boolean isVariableScore

    // In (%)
    Double passMark

    // Users will be allowed to access URLs starting with the given values, one per line.
    String admittedURL

    //Disable URL Security
    Boolean isDisableURLSecurity

    // External Resources, Display name and URL for external resources, one per line. (Eg. 'Wikipedia http://en.wikipedia.org/wiki/Apple')
    String externalResources

    static belongsTo = [assessment: Assessment]

    static constraints = {
        timeLimit nullable: true
        autoSubmitTimeLimit nullable: true
        noContinuationText nullable: true
        passMark nullable: true
        admittedURL nullable: true, blank: false
        externalResources nullable: true, blank: false
    }
}
