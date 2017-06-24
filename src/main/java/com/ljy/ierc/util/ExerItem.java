package com.ljy.ierc.util;

/**
 * Created by 刘剑银 on 2017/4/15.
 */
public class ExerItem {

    private Integer id;


    /**
     * 题干
     */
    private String body;


    /**
     * A选项
     */
    private String optionA;
    private String optionB;
    private String optionC;
    private String optionD;

    /**
     * 答案
     */
    private String ans;

    public ExerItem() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getOptionA() {
        return optionA;
    }

    public void setOptionA(String optionA) {
        this.optionA = optionA;
    }

    public String getOptionB() {
        return optionB;
    }

    public void setOptionB(String optionB) {
        this.optionB = optionB;
    }

    public String getOptionC() {
        return optionC;
    }

    public void setOptionC(String optionC) {
        this.optionC = optionC;
    }

    public String getOptionD() {
        return optionD;
    }

    public void setOptionD(String optionD) {
        this.optionD = optionD;
    }

    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans;
    }

    @Override
    public String toString() {
        return body + "    " + optionA + "    " + optionB + "    " + optionC + "    " + optionD;
    }

}
