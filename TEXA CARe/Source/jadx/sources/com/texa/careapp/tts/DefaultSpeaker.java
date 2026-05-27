package com.texa.careapp.tts;

import android.os.Build;
import android.speech.tts.TextToSpeech;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.communication.CommunicationStatus;
import io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultSpeaker implements Speaker {
    private static final String CARE_CONNECTED_SPEECH_ID = "care-connected";
    private static final String CONNECTION_LOST_SPEECH_ID = "connection-lost";
    private static final String TRIP_END_SPEECH_ID = "trip-end";
    private static final String TRIP_START_SPEECH_ID = "trip-start";
    protected TextToSpeech mTextToSpeech;

    public DefaultSpeaker(TextToSpeech textToSpeech, ICareObserver iCareObserver) {
        this.mTextToSpeech = textToSpeech;
        iCareObserver.tripStartSmart().subscribe(new Consumer() { // from class: com.texa.careapp.tts.DefaultSpeaker$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m633lambda$new$0$comtexacareappttsDefaultSpeaker((CurrentTrip) obj);
            }
        });
        iCareObserver.careConnected().subscribe(new Consumer() { // from class: com.texa.careapp.tts.DefaultSpeaker$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m634lambda$new$1$comtexacareappttsDefaultSpeaker((CommunicationStatus) obj);
            }
        });
        iCareObserver.careNotConnected().subscribe(new Consumer() { // from class: com.texa.careapp.tts.DefaultSpeaker$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m635lambda$new$2$comtexacareappttsDefaultSpeaker((CommunicationStatus) obj);
            }
        });
        iCareObserver.observeTripStopInfo().subscribe(new Consumer() { // from class: com.texa.careapp.tts.DefaultSpeaker$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m636lambda$new$3$comtexacareappttsDefaultSpeaker((CurrentTrip) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-tts-DefaultSpeaker, reason: not valid java name */
    public /* synthetic */ void m633lambda$new$0$comtexacareappttsDefaultSpeaker(CurrentTrip currentTrip) throws Exception {
        speak("buon viaggio!", TRIP_START_SPEECH_ID);
    }

    /* JADX INFO: renamed from: lambda$new$1$com-texa-careapp-tts-DefaultSpeaker, reason: not valid java name */
    public /* synthetic */ void m634lambda$new$1$comtexacareappttsDefaultSpeaker(CommunicationStatus communicationStatus) throws Exception {
        speak("dispositivo connesso", CARE_CONNECTED_SPEECH_ID);
    }

    /* JADX INFO: renamed from: lambda$new$2$com-texa-careapp-tts-DefaultSpeaker, reason: not valid java name */
    public /* synthetic */ void m635lambda$new$2$comtexacareappttsDefaultSpeaker(CommunicationStatus communicationStatus) throws Exception {
        speak("dispositivo non connesso", CONNECTION_LOST_SPEECH_ID);
    }

    /* JADX INFO: renamed from: lambda$new$3$com-texa-careapp-tts-DefaultSpeaker, reason: not valid java name */
    public /* synthetic */ void m636lambda$new$3$comtexacareappttsDefaultSpeaker(CurrentTrip currentTrip) throws Exception {
        speak("viaggio terminato", TRIP_END_SPEECH_ID);
    }

    private void speak(String str, String str2) {
        if (Build.VERSION.SDK_INT >= 21) {
            speakLollipop(str, str2);
        } else {
            speakDefault(str, str2);
        }
    }

    private void speakLollipop(String str, String str2) {
        this.mTextToSpeech.speak(str, 0, null, str2);
    }

    private void speakDefault(String str, String str2) {
        this.mTextToSpeech.speak(str, 0, null);
    }
}
