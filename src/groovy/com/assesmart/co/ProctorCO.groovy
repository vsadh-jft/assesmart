package com.assesmart.co

import com.assesmart.assesment.Proctor
import grails.validation.Validateable

/**
 * Created by vivekmaster146 on 5/5/15.
 */
@Validateable
class ProctorCO {

    Boolean isBookingRequire

    Boolean isProctorRequire

    Boolean isTimeWhilePaused

    static constraints = {
        importFrom Proctor
    }

}
