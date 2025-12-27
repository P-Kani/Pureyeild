package com.pureyield.web.model;

public class Question {

    private String image;
    private String correctAnswer;

    public Question(String image, String correctAnswer) {
        this.image = image;
        this.correctAnswer = correctAnswer;
    }

    public String getImage() {
        return image;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }
}
