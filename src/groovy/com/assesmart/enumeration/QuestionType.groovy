package com.assesmart.enumeration

/**
 * Created by vivekmaster146 on 27/4/15.
 */
public enum QuestionType {

    MULTIPLE_CHOICE("MULTIPLE CHOICE"), MULTIPLE_SELECT("MULTIPLE SELECT"), SINGLE_RESPONSE("SINGLE RESPONSE"), ESSAY("ESSAY"),
    REORDER("REORDER"), FILL_IN_THE_BLANKS("FILL IN THE BLANKS"), MATCHING("MATCHING")

    String questionType

    QuestionType(String questionType) {
        this.questionType = questionType
    }


}