package com.pureyield.web.model;

public class Garden {

    private int plantsGrown;
    private int sustainabilityScore;
    private String growthStage;

    public Garden() {
        this.plantsGrown = 0;
        this.sustainabilityScore = 0;
        this.growthStage = "Seedling";
    }

    public int getPlantsGrown() {
        return plantsGrown;
    }

    public void setPlantsGrown(int plantsGrown) {
        this.plantsGrown = plantsGrown;
        updateGrowthStage();
    }

    public int getSustainabilityScore() {
        return sustainabilityScore;
    }

    public void setSustainabilityScore(int sustainabilityScore) {
        this.sustainabilityScore = sustainabilityScore;
    }

    public String getGrowthStage() {
        return growthStage;
    }

    private void updateGrowthStage() {
        if (plantsGrown >= 5) {
            growthStage = "Harvest";
        } else if (plantsGrown >= 3) {
            growthStage = "Growth";
        } else if (plantsGrown >= 1) {
            growthStage = "Sprout";
        } else {
            growthStage = "Seedling";
        }
    }
}
