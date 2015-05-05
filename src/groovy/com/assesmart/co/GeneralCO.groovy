package com.assesmart.co

import com.assesmart.assesment.General
import grails.validation.Validateable

/**
 * Created by vivekmaster146 on 5/5/15.
 */
@Validateable
class GeneralCO {

    Boolean isStrictMode

    Boolean isAllowChangeLanguage

    Boolean isSendMail

    Integer timeLimit

    Boolean isHidePauseButton

    Integer autoSubmitTimeLimit

    String noContinuationText

    Boolean isTotalScore

    Boolean isVariableScore

    Double passMark

    String admittedURL

    Boolean isDisableURLSecurity

    String externalResources

    static constraints = {
        importFrom General
    }
}
