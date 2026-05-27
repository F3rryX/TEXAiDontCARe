package com.texa.carelib.profile;

import com.texa.carelib.profile.events.AuthenticationErrorEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface ProfileListener {
    void onAuthenticationError(AuthenticationErrorEvent authenticationErrorEvent);
}
