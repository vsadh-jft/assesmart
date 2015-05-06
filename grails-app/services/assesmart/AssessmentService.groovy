package assesmart

import com.assesmart.assesment.Assessment
import com.assesmart.assesment.Content
import com.assesmart.assesment.General
import com.assesmart.assesment.Proctor
import com.assesmart.assesment.Review
import com.assesmart.co.AssessmentCO
import grails.transaction.Transactional

@Transactional
class AssessmentService {

    public Integer createAssessment(AssessmentCO assessmentCO) {
        Assessment assessment
        if(assessmentCO.id!=null){
            assessment = Assessment.get(assessmentCO.id)
        }else{
            assessment = new Assessment()
        }

        if(assessmentCO.id==null){
            assessment.setDateCreated(new Date())
        }else if(assessmentCO.id!=null){
            assessment.setLastUpdated(new Date())
        }

        assessment.setName(assessmentCO.name)
        assessment.setIsRuleBased(assessmentCO.isRuleBased)
        // Set content information
        Content content
        if(assessmentCO.id!=null){
            content = Content.get(assessment.content.id)
        }else{
            content= new Content()
        }
        content.setAssessment(assessment)
        content.setAssessmentDescription(assessmentCO.contentCO.assessmentDescription)
        content.setAssessmentFailedMessage(assessmentCO.contentCO.assessmentFailedMessage)
        content.setAssessmentPassedMessage(assessmentCO.contentCO.assessmentPassedMessage)
        content.setAssessmentText(assessmentCO.contentCO.assessmentText)
        content.setIsAgreementRequired(assessmentCO.contentCO.isAgreementRequired)
        content.setIsDescriptionOnTop(assessmentCO.contentCO.isDescriptionOnTop)
        content.setMessageUnscoredOrUnderReview(assessmentCO.contentCO.messageUnscoredOrUnderReview)
        content.setPerQuestionReviewText(assessmentCO.contentCO.perQuestionReviewText)
        assessment.setContent(content)
        // Set General Info
        General general
        if(assessmentCO.id!=null){
            general = General.get(assessment.general.id)
        }else{
            general= new General()
        }
        general.setAssessment(assessment)
        general.setIsSendMail(assessmentCO.generalCO.isSendMail)
        general.setAdmittedURL(assessmentCO.generalCO.admittedURL)
        general.setAutoSubmitTimeLimit(assessmentCO.generalCO.autoSubmitTimeLimit)
        general.setExternalResources(assessmentCO.generalCO.externalResources)
        general.setIsAllowChangeLanguage(assessmentCO.generalCO.isAllowChangeLanguage)
        general.setIsHidePauseButton(assessmentCO.generalCO.isHidePauseButton)
        general.setIsSendMail(assessmentCO.generalCO.isSendMail)
        general.setIsDisableURLSecurity(assessmentCO.generalCO.isDisableURLSecurity)
        general.setIsVariableScore(assessmentCO.generalCO.isVariableScore)
        general.setIsTotalScore(assessmentCO.generalCO.isTotalScore)
        general.setIsStrictMode(assessmentCO.generalCO.isStrictMode)
        general.setNoContinuationText(assessmentCO.generalCO.noContinuationText)
        general.setPassMark(assessmentCO.generalCO.passMark)
        general.setTimeLimit(assessmentCO.generalCO.timeLimit)
        assessment.setGeneral(general)
        //Set the review info
        Review review
        if(assessmentCO.id!=null){
            review = Review.get(assessment.review.id)
        }else{
            review= new Review()
        }
        review.setAssessment(assessment)
        review.setIsAllowAnswerChanging(assessmentCO.reviewCO.isAllowAnswerChanging)
        review.setIsShowAnytime(assessmentCO.reviewCO.isShowAnytime)
        review.setIsShowAsFlow(assessmentCO.reviewCO.isShowAsFlow)
        review.setIsShowOnce(assessmentCO.reviewCO.isShowOnce)
        review.setIsShowNever(assessmentCO.reviewCO.isShowNever)
        review.setIsShowRationale(assessmentCO.reviewCO.isShowRationale)
        assessment.setReview(review)
        // Set the Proctor Info
        Proctor proctor
        if(assessmentCO.id!=null){
            proctor = Proctor.get(assessment.proctor.id)
        }else{
            proctor= new Proctor()
        }
        proctor.setAssessment(assessment)
        proctor.setIsBookingRequire(assessmentCO.proctorCO.isBookingRequire)
        proctor.setIsProctorRequire(assessmentCO.proctorCO.isProctorRequire)
        proctor.setIsTimeWhilePaused(assessmentCO.proctorCO.isTimeWhilePaused)
        assessment.setProctor(proctor)
        assessment.save(flush: true, failOnError: true)
        return assessment.id
    }
}
