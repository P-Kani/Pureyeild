package com.pureyield.web.model;

public class Player {

    private String name;
    private String level;
    private int score;
    private int completion;
    private int plantsGrown;


    private int currentQuestion;
    private int totalQuestions;

    public Player(String name) {
        this.name = name;
        this.level = "Beginner";
        this.score = 0;
        this.currentQuestion = 0;
        this.totalQuestions = 3; // tomato, carrot, brinjal
        this.completion = 0;
    }

    // getters & setters
    public String getName() { return name; }
    public String getLevel() { return level; }
    public int getScore() { return score; }
    public int getCompletion() { return completion; }
    

    public int getPlantsGrown() {
        return plantsGrown;
    }

    public void setPlantsGrown(int plantsGrown) {
        this.plantsGrown = plantsGrown;
    }

    public int getCurrentQuestion() { return currentQuestion; }
    public int getTotalQuestions() { return totalQuestions; }

    public void setScore(int score) { this.score = score; }

    public void incrementQuestion() {
        this.currentQuestion++;

        int progress =
            (this.currentQuestion * 100) / this.totalQuestions;

        if (progress > 100) progress = 100;
        this.completion = progress;
    }
}
