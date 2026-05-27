package com.texa.care.eco_driving;

import android.util.Log;
import com.texa.care.eco_driving.RxObservableObject;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileListener;
import com.texa.carelib.profile.events.AuthenticationErrorEvent;
import io.reactivex.Observable;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.subjects.Subject;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class RxProfile extends RxObservableObject {
    private static final String TAG = "RxProfile";
    private Subject<AuthenticationErrorEvent> mAuthenticationErrorSubject = PublishSubject.create();
    private final Profile mProfile;

    public RxProfile(Profile profile) {
        this.mProfile = profile;
        profile.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.care.eco_driving.RxProfile$$ExternalSyntheticLambda2
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m90lambda$new$0$comtexacareeco_drivingRxProfile(propertyChangeEvent);
            }
        });
        profile.addProfileListener(new ProfileListener() { // from class: com.texa.care.eco_driving.RxProfile$$ExternalSyntheticLambda1
            @Override // com.texa.carelib.profile.ProfileListener
            public final void onAuthenticationError(AuthenticationErrorEvent authenticationErrorEvent) {
                this.f$0.m91lambda$new$1$comtexacareeco_drivingRxProfile(authenticationErrorEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-care-eco_driving-RxProfile, reason: not valid java name */
    public /* synthetic */ void m90lambda$new$0$comtexacareeco_drivingRxProfile(PropertyChangeEvent propertyChangeEvent) {
        Log.d(TAG, "Updated property: " + propertyChangeEvent.getPropertyName() + " oldValue:" + propertyChangeEvent.getOldValue() + " newValue:" + propertyChangeEvent.getNewValue());
        this.mPropertyChangeEventSubject.onNext(propertyChangeEvent);
    }

    /* JADX INFO: renamed from: lambda$new$1$com-texa-care-eco_driving-RxProfile, reason: not valid java name */
    public /* synthetic */ void m91lambda$new$1$comtexacareeco_drivingRxProfile(AuthenticationErrorEvent authenticationErrorEvent) {
        if (authenticationErrorEvent.getError() != null) {
            this.mAuthenticationErrorSubject.onNext(authenticationErrorEvent);
        }
    }

    public Observable<PropertyChangeEvent> observeProfileUpdates() {
        return this.mPropertyChangeEventSubject;
    }

    public Observable<Boolean> ready() {
        final Profile profile = this.mProfile;
        Objects.requireNonNull(profile);
        return observePropertyChanges(Profile.PROPERTY_READY, new RxObservableObject.Supplier() { // from class: com.texa.care.eco_driving.RxProfile$$ExternalSyntheticLambda0
            @Override // com.texa.care.eco_driving.RxObservableObject.Supplier
            public final Object get() {
                return Boolean.valueOf(profile.isReady());
            }
        });
    }

    public Observable<AuthenticationErrorEvent> observeAuthenticationError() {
        return this.mAuthenticationErrorSubject;
    }
}
