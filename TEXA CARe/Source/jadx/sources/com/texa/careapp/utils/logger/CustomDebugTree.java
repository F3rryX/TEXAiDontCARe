package com.texa.careapp.utils.logger;

import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CustomDebugTree extends Timber.DebugTree {
    @Override // timber.log.Timber.DebugTree
    protected String createStackElementTag(StackTraceElement stackTraceElement) {
        return super.createStackElementTag(stackTraceElement) + ":" + stackTraceElement.getLineNumber();
    }
}
