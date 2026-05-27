package com.texa.carelib.care.vehicleinfo.internal;

import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.beans.PropertyChangeEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class VehicleInfoBase extends ProfileSubModule implements VehicleInfo {
    private String mVehicleID = null;

    public String getVehicleID() {
        return this.mVehicleID;
    }

    public void setVehicleID(String str) {
        String str2 = this.mVehicleID;
        this.mVehicleID = str;
        firePropertyChange(new PropertyChangeEvent(this, VehicleInfo.PROPERTY_VEHICLE_ID, str2, this.mVehicleID));
    }

    protected void resetData() {
        this.mVehicleID = null;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        if (AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()] != 1) {
            return;
        }
        resetData();
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.vehicleinfo.internal.VehicleInfoBase$1, reason: invalid class name */
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
}
