package com.texa.carelib.care.trips.internal;

import android.content.Context;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.TripDataDownloadListener;
import com.texa.carelib.care.trips.TripInfo;
import com.texa.carelib.care.trips.TripLogBook;
import com.texa.carelib.care.trips.events.TripDataDownloadCompletedEvent;
import com.texa.carelib.care.trips.events.TripDataDownloadProgressChangedEvent;
import com.texa.carelib.care.trips.events.TripDataErasedEvent;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CarelibSchedulers;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TripLogBookBase extends ProfileSubModule implements TripLogBook {
    public static final String TAG = "TripLogBookBase";
    private Callback<TripDataErasedEvent> mEraseTripDataCallback;
    private final FeatureVerifier mFeatureVerifier;
    private final Profile mProfile;
    private TripDataDownloadListener mTripDataDownloadListener;

    TripLogBookBase(Profile profile, FeatureVerifier featureVerifier) {
        this.mProfile = profile;
        this.mFeatureVerifier = featureVerifier;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.trips.internal.TripLogBookBase$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        if (AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()] != 1) {
            return;
        }
        resetData(false);
    }

    protected Context getContext() {
        return this.mProfile.getProfileDelegate().getApplicationContext();
    }

    protected FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }

    void setEraseTripDataCallback(Callback<TripDataErasedEvent> callback) {
        this.mEraseTripDataCallback = callback;
    }

    protected void setTripDataDownloadListener(TripDataDownloadListener tripDataDownloadListener) {
        this.mTripDataDownloadListener = tripDataDownloadListener;
    }

    void fireTripDataEraseCompleted(final TripLogBook tripLogBook, final CareError careError) {
        CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.care.trips.internal.TripLogBookBase$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m721x850cec55(tripLogBook, careError);
            }
        }, 0L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$fireTripDataEraseCompleted$0$com-texa-carelib-care-trips-internal-TripLogBookBase, reason: not valid java name */
    public /* synthetic */ void m721x850cec55(TripLogBook tripLogBook, CareError careError) {
        TripDataErasedEvent tripDataErasedEvent = new TripDataErasedEvent(tripLogBook, careError);
        Callback<TripDataErasedEvent> callback = this.mEraseTripDataCallback;
        if (callback != null) {
            callback.onCompleted(tripDataErasedEvent);
            setEraseTripDataCallback(null);
        }
    }

    void terminateTripDataDownload(final TripLogBook tripLogBook, final List<TripInfo> list, final CareError careError) {
        CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.care.trips.internal.TripLogBookBase$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m722xcb97f1e0(tripLogBook, list, careError);
            }
        }, 0L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$terminateTripDataDownload$1$com-texa-carelib-care-trips-internal-TripLogBookBase, reason: not valid java name */
    public /* synthetic */ void m722xcb97f1e0(TripLogBook tripLogBook, List list, CareError careError) {
        TripDataDownloadCompletedEvent tripDataDownloadCompletedEvent = new TripDataDownloadCompletedEvent(tripLogBook, list, careError);
        TripDataDownloadListener tripDataDownloadListener = this.mTripDataDownloadListener;
        if (tripDataDownloadListener != null) {
            tripDataDownloadListener.onTripDataDownloadCompleted(tripDataDownloadCompletedEvent);
            setTripDataDownloadListener(null);
        }
    }

    void fireDownloadTripDataProgressChanged(final TripLogBook tripLogBook, final float f) {
        CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.care.trips.internal.TripLogBookBase$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m720xe660fdfd(tripLogBook, f);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$fireDownloadTripDataProgressChanged$2$com-texa-carelib-care-trips-internal-TripLogBookBase, reason: not valid java name */
    public /* synthetic */ void m720xe660fdfd(TripLogBook tripLogBook, float f) {
        TripDataDownloadProgressChangedEvent tripDataDownloadProgressChangedEvent = new TripDataDownloadProgressChangedEvent(tripLogBook, f);
        TripDataDownloadListener tripDataDownloadListener = this.mTripDataDownloadListener;
        if (tripDataDownloadListener != null) {
            tripDataDownloadListener.onTripDataDownloadProgressChanged(tripDataDownloadProgressChangedEvent);
        }
    }

    void resetData(boolean z) {
        setTripDataDownloadListener(null);
        setEraseTripDataCallback(null);
    }
}
