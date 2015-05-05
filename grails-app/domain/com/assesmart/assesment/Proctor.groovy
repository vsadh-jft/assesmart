package com.assesmart.assesment

class Proctor {

    // Assessment requires booking Users will be required to book this assessment at a venue.
    Boolean isBookingRequire

    // Assessment requires a proctor A proctor must be present when Users write this assessment
    Boolean isProctorRequire

    // Time while pausedThe assessment timer will continue to count while this assessment is paused.
    Boolean isTimeWhilePaused

    static belongsTo = [assessment:Assessment]

    static constraints = {
    }
}
