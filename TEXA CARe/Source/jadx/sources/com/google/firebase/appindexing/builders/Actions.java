package com.google.firebase.appindexing.builders;

import com.google.firebase.appindexing.Action;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class Actions {
    public static Action newView(String str, String str2) {
        Action.Builder builder = new Action.Builder(Action.Builder.VIEW_ACTION);
        builder.setObject(str, str2);
        return builder.build();
    }
}
