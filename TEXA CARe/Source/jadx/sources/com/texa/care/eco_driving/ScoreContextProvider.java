package com.texa.care.eco_driving;

import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public interface ScoreContextProvider {
    Date getDate();

    float getOdometer();

    TripID getTripID();

    Long getTripNumber();
}
