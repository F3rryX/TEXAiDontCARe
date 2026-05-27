package com.texa.careapp.dagger;

import android.speech.tts.TextToSpeech;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideTextToSpeechFactory implements Factory<TextToSpeech> {
    private final CareModule module;

    public CareModule_ProvideTextToSpeechFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public TextToSpeech get() {
        return provideTextToSpeech(this.module);
    }

    public static CareModule_ProvideTextToSpeechFactory create(CareModule careModule) {
        return new CareModule_ProvideTextToSpeechFactory(careModule);
    }

    public static TextToSpeech provideTextToSpeech(CareModule careModule) {
        return (TextToSpeech) Preconditions.checkNotNullFromProvides(careModule.provideTextToSpeech());
    }
}
