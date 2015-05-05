package com.assesmart.assesment

class Proctor {

    Boolean isBookingRequire

    Boolean isProctorRequire

    Boolean isTimeWhilePaused

    static belongsTo = [assessment:Assessment]

    static constraints = {
    }
}
