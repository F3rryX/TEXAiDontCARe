package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.care.trips.TripEndInfo;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.utils.internal.CareStructJoiner;
import java.beans.PropertyChangeEvent;
import java.math.BigInteger;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes2.dex */
abstract class CurrentTripBase extends ProfileSubModule implements CurrentTrip {
    private FeatureVerifier mFeatureVerifier;
    private Profile mProfile;
    private TripBeginInfo mTripBeginInfo;
    private TripEndInfo mTripEndInfo;
    private BigInteger mTripID;
    private TripStatisticsInfo mTripStatisticsInfo;
    private TripStatus mTripStatus;

    CurrentTripBase(Profile profile, FeatureVerifier featureVerifier) {
        this.mProfile = profile;
        this.mFeatureVerifier = featureVerifier;
        resetData(false);
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    protected FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }

    @Override // com.texa.carelib.care.trips.CurrentTrip
    public void loadTripInfo() throws CareLibException {
        loadTripInfo(EnumSet.of(CurrentTrip.TripInfoType.Begin, CurrentTrip.TripInfoType.End, CurrentTrip.TripInfoType.Statistics));
    }

    @Override // com.texa.carelib.care.trips.CurrentTrip
    public final TripStatus getTripStatus() {
        return this.mTripStatus;
    }

    public void setTripStatus(TripStatus tripStatus) {
        TripStatus tripStatus2 = this.mTripStatus;
        if (tripStatus2 != tripStatus) {
            this.mTripStatus = tripStatus;
            firePropertyChange(new PropertyChangeEvent(this, CurrentTrip.PROPERTY_TRIP_STATUS, tripStatus2, this.mTripStatus));
        }
    }

    public void setTripID(BigInteger bigInteger) {
        if (this.mTripID.equals(bigInteger)) {
            return;
        }
        BigInteger bigInteger2 = this.mTripID;
        this.mTripID = bigInteger;
        firePropertyChange(new PropertyChangeEvent(this, CurrentTrip.PROPERTY_TRIP_ID, bigInteger2, this.mTripID));
    }

    @Override // com.texa.carelib.care.trips.CurrentTrip
    public BigInteger getTripID() {
        return this.mTripID;
    }

    @Override // com.texa.carelib.care.trips.CurrentTrip
    public TripBeginInfo getTripBeginInfo() {
        return this.mTripBeginInfo;
    }

    public void setTripBeginInfo(TripBeginInfo tripBeginInfo) {
        TripBeginInfo tripBeginInfo2 = this.mTripBeginInfo;
        this.mTripBeginInfo = tripBeginInfo;
        setTripID(TripIDProvider.getTripID(tripBeginInfo));
        firePropertyChange(new PropertyChangeEvent(this, CurrentTrip.PROPERTY_TRIP_BEGIN_INFO, tripBeginInfo2, this.mTripBeginInfo));
    }

    @Override // com.texa.carelib.care.trips.CurrentTrip
    public TripEndInfo getTripEndInfo() {
        return this.mTripEndInfo;
    }

    public void setTripEndInfo(TripEndInfo tripEndInfo) {
        TripEndInfo tripEndInfo2 = this.mTripEndInfo;
        this.mTripEndInfo = tripEndInfo;
        firePropertyChange(new PropertyChangeEvent(this, CurrentTrip.PROPERTY_TRIP_END_INFO, tripEndInfo2, this.mTripEndInfo));
    }

    @Override // com.texa.carelib.care.trips.CurrentTrip
    public TripStatisticsInfo getTripStatisticsInfo() {
        return this.mTripStatisticsInfo;
    }

    public void setTripStatisticsInfo(TripStatisticsInfo tripStatisticsInfo) {
        TripStatisticsInfo tripStatisticsInfo2 = this.mTripStatisticsInfo;
        this.mTripStatisticsInfo = tripStatisticsInfo;
        firePropertyChange(new PropertyChangeEvent(this, CurrentTrip.PROPERTY_TRIP_STATISTICS_INFO, tripStatisticsInfo2, this.mTripStatisticsInfo));
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.trips.internal.CurrentTripBase$1, reason: invalid class name */
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

    private void resetData(boolean z) {
        if (z) {
            setTripID(BigInteger.ZERO);
            setTripStatus(TripStatus.Undef);
            setTripBeginInfo(null);
            setTripEndInfo(null);
            setTripStatisticsInfo(null);
            return;
        }
        this.mTripID = BigInteger.ZERO;
        this.mTripStatus = TripStatus.Undef;
        this.mTripBeginInfo = null;
        this.mTripEndInfo = null;
        this.mTripStatisticsInfo = null;
    }

    @Override // com.texa.carelib.core.utils.CareStruct
    public byte[] getRawData() {
        return CareStructJoiner.join(this.mTripBeginInfo, this.mTripEndInfo, this.mTripStatisticsInfo);
    }
}
