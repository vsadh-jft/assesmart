package com.assesmart.assesment

class Review {

    Boolean isAllowAnswerChanging

    Boolean isShowRationale

    Boolean isShowAsFlow

    Boolean isShowAnytime

    Boolean isShowOnce

    Boolean isShowNever

    static belongsTo = [assessment: Assessment]

    static constraints = {
    }
}
