package com.texa.careapp.checks;

import io.reactivex.Observable;

/* JADX INFO: loaded from: classes2.dex */
public interface Check {

    public enum Result {
        OK,
        WARNING,
        BLOCKING
    }

    Observable<Result> check();

    Result checkCurrentStatus();

    String description();

    void resolve();
}
