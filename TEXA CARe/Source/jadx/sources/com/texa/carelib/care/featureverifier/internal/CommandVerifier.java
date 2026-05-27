package com.texa.carelib.care.featureverifier.internal;

import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface CommandVerifier {
    public static final String PROPERTY_SUPPORTED_COMMANDS = "com.texa.carelib.care.featureverifier.internal.CommandVerifier#PROPERTY_SUPPORTED_COMMANDS";

    Set<Integer> getSupportedCommands();

    boolean isCommandSupported(int i);

    boolean isReady();
}
