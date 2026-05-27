package com.robotium.solo;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Illustration {
    private final ArrayList<PressurePoint> points;
    private final int toolType;

    private Illustration(Builder builder) {
        this.toolType = builder.builderToolType;
        this.points = builder.builderPoints;
    }

    public static class Builder {
        private int builderToolType = 1;
        private ArrayList<PressurePoint> builderPoints = new ArrayList<>();

        public Builder setToolType(int i) {
            this.builderToolType = i;
            return this;
        }

        public Builder addPoint(float f, float f2, float f3) {
            this.builderPoints.add(new PressurePoint(f, f2, f3));
            return this;
        }

        public Illustration build() {
            return new Illustration(this);
        }
    }

    public ArrayList<PressurePoint> getPoints() {
        return this.points;
    }

    public int getToolType() {
        return this.toolType;
    }
}
