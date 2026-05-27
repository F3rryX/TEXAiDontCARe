package com.texa.carelib.care.datamanagerconfiguration.internal;

import android.util.SparseArray;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerParameterID;
import com.texa.carelib.care.datamanagerconfiguration.LedBehaviour;
import com.texa.carelib.care.datamanagerconfiguration.internal.parser.GetDataManagerParametersParser;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotAuthenticatedException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.UUIDHelper;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.SerialProfileProxy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class SerialDataManagerConfiguration extends DataManagerConfigurationBase implements SerialProfileMessageReceiver {
    public static final String TAG = "SerialDataManagerConfiguration";
    private final Profile mProfile;
    private final SerialProfileProxy mSerialProfileProxy;

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase
    public /* bridge */ /* synthetic */ void _setLedBehaviour(LedBehaviour ledBehaviour) {
        super._setLedBehaviour(ledBehaviour);
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getAccelerationMaxRange() {
        return super.getAccelerationMaxRange();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Float getAccelerationThreshold() {
        return super.getAccelerationThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Float getBrakeThreshold() {
        return super.getBrakeThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ UUID getDriverID() {
        return super.getDriverID();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getDrivingTimeLowRPMMaxThreshold() {
        return super.getDrivingTimeLowRPMMaxThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getDrivingTimeLowRPMMinThreshold() {
        return super.getDrivingTimeLowRPMMinThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ LedBehaviour getLedBehaviour() {
        return super.getLedBehaviour();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getRPMThreshold() {
        return super.getRPMThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Float getStartingOdometer() {
        return super.getStartingOdometer();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getTemperatureThreshold() {
        return super.getTemperatureThreshold();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getTimeZoneOffset() {
        return super.getTimeZoneOffset();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Long getTripNumberDevice() {
        return super.getTripNumberDevice();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Integer getTripNumberVehicle() {
        return super.getTripNumberVehicle();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Boolean isSOSEnabled() {
        return super.isSOSEnabled();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public /* bridge */ /* synthetic */ Boolean isSOSEnabledLowPowerMode() {
        return super.isSOSEnabledLowPowerMode();
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase, com.texa.carelib.profile.ProfileSubModule
    public /* bridge */ /* synthetic */ void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.internal.DataManagerConfigurationBase
    public /* bridge */ /* synthetic */ void setTimeZoneOffset(Integer num) {
        super.setTimeZoneOffset(num);
    }

    public SerialDataManagerConfiguration(Profile profile, FeatureVerifier featureVerifier) {
        super(featureVerifier);
        this.mProfile = profile;
        if (profile instanceof SerialProfileProxy) {
            this.mSerialProfileProxy = (SerialProfileProxy) profile;
        } else {
            this.mSerialProfileProxy = null;
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void loadInfo() {
        try {
            loadConfigurationValues();
        } catch (CareLibException unused) {
        }
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void loadConfigurationValues() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        CareLog.v(TAG, "loadCrashConfigurationValues", new Object[0]);
        sendMessage(new Message.Builder().setCommandID(83).build());
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        int commandID = message.getCommandID();
        if (commandID == 82) {
            handleSetDataManagerParameter(obj, message, careError);
        } else {
            if (commandID != 83) {
                return;
            }
            handleGetDataManagerParameters(obj, message, careError);
        }
    }

    private void handleSetDataManagerParameter(Object obj, Message message, CareError careError) {
        if (careError != null) {
            return;
        }
        try {
            loadConfigurationValues();
        } catch (CareLibException unused) {
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x006a. Please report as an issue. */
    private void handleGetDataManagerParameters(Object obj, Message message, CareError careError) {
        Integer num;
        Integer num2;
        Integer num3;
        Float fValueOf;
        UUID uuidFromByteArray;
        Integer num4;
        Float fValueOf2;
        Integer timeZoneOffset;
        Integer numValueOf;
        Integer numValueOf2;
        Boolean boolValueOf;
        Boolean boolValueOf2;
        Long lValueOf;
        LedBehaviour ledBehaviour;
        SparseArray<byte[]> sparseArray;
        LedBehaviour ledBehaviour2;
        Float f;
        Float f2;
        if (careError == null) {
            GetDataManagerParametersParser.GetDataManagerParametersResponse getDataManagerParametersResponse = GetDataManagerParametersParser.parse(message);
            LedBehaviour ledBehaviour3 = LedBehaviour.Default;
            Float fValueOf3 = null;
            if (getDataManagerParametersResponse != null) {
                SparseArray<byte[]> data = getDataManagerParametersResponse.getData();
                int iKeyAt = 0;
                for (int i = 0; i < data.size(); i++) {
                    iKeyAt = data.keyAt(i);
                    byte[] bArr = data.get(iKeyAt);
                    String str = TAG;
                    Object[] objArr = new Object[2];
                    objArr[0] = Integer.valueOf(iKeyAt);
                    objArr[1] = Integer.valueOf(bArr != null ? bArr.length : 0);
                    CareLog.d(str, "Configuration %d length: %d", objArr);
                }
                uuidFromByteArray = null;
                fValueOf2 = null;
                timeZoneOffset = null;
                numValueOf = null;
                numValueOf2 = null;
                boolValueOf = null;
                boolValueOf2 = null;
                lValueOf = null;
                Integer numValueOf3 = null;
                Integer numValueOf4 = null;
                Integer numValueOf5 = null;
                Integer numValueOf6 = null;
                int i2 = iKeyAt;
                int i3 = 0;
                fValueOf = null;
                while (i3 < data.size()) {
                    try {
                        int iKeyAt2 = data.keyAt(i3);
                        try {
                            byte[] bArr2 = data.get(iKeyAt2);
                            switch (iKeyAt2) {
                                case 0:
                                    ledBehaviour = ledBehaviour3;
                                    f = fValueOf3;
                                    try {
                                        int length = bArr2.length;
                                        int i4 = 0;
                                        while (true) {
                                            if (i4 < length) {
                                                int i5 = length;
                                                sparseArray = data;
                                                if (255 != bArr2[i4]) {
                                                    uuidFromByteArray = UUIDHelper.fromByteArray(bArr2);
                                                } else {
                                                    i4++;
                                                    length = i5;
                                                    data = sparseArray;
                                                }
                                            } else {
                                                sparseArray = data;
                                            }
                                        }
                                        fValueOf3 = f;
                                        ledBehaviour3 = ledBehaviour;
                                        i2 = iKeyAt2;
                                    } catch (Exception e) {
                                        e = e;
                                        sparseArray = data;
                                        fValueOf3 = f;
                                        i2 = iKeyAt2;
                                        CareLog.e(TAG, e, "An error is occurred with data manager parameter ID: %d", Integer.valueOf(i2));
                                        ledBehaviour3 = ledBehaviour;
                                    }
                                    break;
                                case 1:
                                    ledBehaviour = ledBehaviour3;
                                    fValueOf3 = fValueOf3;
                                    timeZoneOffset = parseTimeZoneOffset(bArr2[0]);
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 2:
                                    ledBehaviour = ledBehaviour3;
                                    fValueOf3 = Float.valueOf(parseData(bArr2));
                                    try {
                                        fValueOf3 = Float.valueOf(fValueOf3.floatValue() / 100.0f);
                                        sparseArray = data;
                                        ledBehaviour3 = ledBehaviour;
                                        i2 = iKeyAt2;
                                    } catch (Exception e2) {
                                        e = e2;
                                        sparseArray = data;
                                        i2 = iKeyAt2;
                                        CareLog.e(TAG, e, "An error is occurred with data manager parameter ID: %d", Integer.valueOf(i2));
                                        ledBehaviour3 = ledBehaviour;
                                    }
                                    break;
                                case 3:
                                    ledBehaviour = ledBehaviour3;
                                    f2 = fValueOf3;
                                    fValueOf = Float.valueOf(Float.valueOf(parseData(bArr2)).floatValue() / 100.0f);
                                    fValueOf3 = f2;
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 4:
                                    ledBehaviour = ledBehaviour3;
                                    f2 = fValueOf3;
                                    numValueOf2 = Integer.valueOf(Integer.valueOf((int) parseData(bArr2)).intValue() - 40);
                                    fValueOf3 = f2;
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 5:
                                    ledBehaviour = ledBehaviour3;
                                    fValueOf3 = fValueOf3;
                                    numValueOf = Integer.valueOf((int) parseData(bArr2));
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 6:
                                    ledBehaviour = ledBehaviour3;
                                    fValueOf3 = fValueOf3;
                                    fValueOf2 = Float.valueOf(parseData(bArr2));
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 7:
                                    ledBehaviour = ledBehaviour3;
                                    fValueOf3 = fValueOf3;
                                    boolValueOf = Boolean.valueOf(bArr2[0] == 1);
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 8:
                                    ledBehaviour = ledBehaviour3;
                                    fValueOf3 = fValueOf3;
                                    lValueOf = Long.valueOf(parseData(bArr2));
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 9:
                                    ledBehaviour = ledBehaviour3;
                                    fValueOf3 = fValueOf3;
                                    numValueOf3 = Integer.valueOf((int) parseData(bArr2));
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 10:
                                    ledBehaviour = ledBehaviour3;
                                    fValueOf3 = fValueOf3;
                                    boolValueOf2 = Boolean.valueOf(bArr2[0] == 1);
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 11:
                                    ledBehaviour = ledBehaviour3;
                                    f2 = fValueOf3;
                                    numValueOf4 = Integer.valueOf(Integer.valueOf((int) parseData(bArr2)).intValue() / 10);
                                    fValueOf3 = f2;
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 12:
                                    ledBehaviour = ledBehaviour3;
                                    fValueOf3 = fValueOf3;
                                    numValueOf5 = Integer.valueOf((int) parseData(bArr2));
                                    sparseArray = data;
                                    ledBehaviour3 = ledBehaviour;
                                    i2 = iKeyAt2;
                                    break;
                                case 13:
                                    ledBehaviour = ledBehaviour3;
                                    Float f3 = fValueOf3;
                                    try {
                                        fValueOf3 = f3;
                                        numValueOf6 = Integer.valueOf((int) parseData(bArr2));
                                        sparseArray = data;
                                        ledBehaviour3 = ledBehaviour;
                                        i2 = iKeyAt2;
                                    } catch (Exception e3) {
                                        e = e3;
                                        fValueOf3 = f3;
                                        sparseArray = data;
                                        i2 = iKeyAt2;
                                        CareLog.e(TAG, e, "An error is occurred with data manager parameter ID: %d", Integer.valueOf(i2));
                                        ledBehaviour3 = ledBehaviour;
                                    }
                                    break;
                                case 14:
                                    try {
                                        long data2 = parseData(bArr2);
                                        if (data2 == 0) {
                                            ledBehaviour2 = LedBehaviour.Default;
                                        } else if (data2 == 1) {
                                            ledBehaviour2 = LedBehaviour.AlwaysOn;
                                        } else {
                                            ledBehaviour2 = LedBehaviour.Unknown;
                                        }
                                        ledBehaviour3 = ledBehaviour2;
                                        sparseArray = data;
                                        i2 = iKeyAt2;
                                    } catch (Exception e4) {
                                        e = e4;
                                        ledBehaviour = ledBehaviour3;
                                        sparseArray = data;
                                        i2 = iKeyAt2;
                                        CareLog.e(TAG, e, "An error is occurred with data manager parameter ID: %d", Integer.valueOf(i2));
                                        ledBehaviour3 = ledBehaviour;
                                    }
                                    break;
                                default:
                                    ledBehaviour = ledBehaviour3;
                                    f = fValueOf3;
                                    sparseArray = data;
                                    try {
                                        CareLog.w(TAG, "Unsupported data manager parameter: 0x%02X", Integer.valueOf(iKeyAt2));
                                        fValueOf3 = f;
                                        ledBehaviour3 = ledBehaviour;
                                        i2 = iKeyAt2;
                                    } catch (Exception e5) {
                                        e = e5;
                                        fValueOf3 = f;
                                        i2 = iKeyAt2;
                                        CareLog.e(TAG, e, "An error is occurred with data manager parameter ID: %d", Integer.valueOf(i2));
                                        ledBehaviour3 = ledBehaviour;
                                    }
                                    break;
                            }
                        } catch (Exception e6) {
                            e = e6;
                            ledBehaviour = ledBehaviour3;
                        }
                    } catch (Exception e7) {
                        e = e7;
                        ledBehaviour = ledBehaviour3;
                        sparseArray = data;
                    }
                    i3++;
                    data = sparseArray;
                }
                num = numValueOf3;
                num2 = numValueOf4;
                num4 = numValueOf5;
                num3 = numValueOf6;
            } else {
                num = null;
                num2 = null;
                num3 = null;
                fValueOf = null;
                uuidFromByteArray = null;
                num4 = null;
                fValueOf2 = null;
                timeZoneOffset = null;
                numValueOf = null;
                numValueOf2 = null;
                boolValueOf = null;
                boolValueOf2 = null;
                lValueOf = null;
            }
            super.setAccelerationThreshold(fValueOf3);
            super.setBrakeThreshold(fValueOf);
            super._setDriverID(uuidFromByteArray);
            super.setStartingOdometer(fValueOf2);
            super.setTimeZoneOffset(timeZoneOffset);
            super.setRPMThreshold(numValueOf);
            super.setTemperatureThreshold(numValueOf2);
            super.setSOSEnabled(boolValueOf);
            super.setTripNumberDevice(lValueOf);
            super.setTripNumberVehicle(num);
            super.setSOSEnabledLowPowerMode(boolValueOf2);
            super.setAccelerationMaxRange(num2);
            super.setDrivingTimeLowRPMMaxThreshold(num3);
            super.setDrivingTimeLowRPMMinThreshold(num4);
            super._setLedBehaviour(ledBehaviour3);
        }
    }

    protected Integer parseTimeZoneOffset(byte b) {
        Integer numValueOf = Integer.valueOf(b & 255);
        if (128 != numValueOf.intValue()) {
            return numValueOf;
        }
        return 0;
    }

    protected long parseData(byte[] bArr) {
        long j = 0;
        for (int i = 0; i < bArr.length; i++) {
            j += ((long) (bArr[i] & 255)) << (i * 8);
        }
        return j;
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setAccelerationThreshold(float f) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 2);
        ByteBufferUtils.putUnsignedShort(byteBufferAllocate, Integer.valueOf(Math.round(f * 100.0f)));
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setBrakeThreshold(float f) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 3);
        ByteBufferUtils.putUnsignedShort(byteBufferAllocate, Integer.valueOf(Math.round(f * 100.0f)));
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setDriverID(UUID uuid) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        byte[] bArr = new byte[16];
        Arrays.fill(bArr, (byte) -1);
        if (uuid != null) {
            UUIDHelper.toByteArray(uuid, bArr);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(17);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 0);
        byteBufferAllocate.put(bArr);
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setRPMThreshold(int i) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
        byteBufferAllocate.put((byte) 5);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        ByteBufferUtils.putUnsignedShort(byteBufferAllocate, Integer.valueOf(i));
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setStartingOdometer(float f) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 6);
        ByteBufferUtils.putUnsignedInt(byteBufferAllocate, Long.valueOf(Math.round(f)));
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setTemperatureThreshold(int i) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 4);
        byteBufferAllocate.put((byte) i);
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setTimeZoneOffset(int i) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 1);
        byteBufferAllocate.put((byte) (((i / 1000) / 60) / 60));
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setSOSEnabled(boolean z) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 7);
        if (z) {
            byteBufferAllocate.put((byte) 1);
        } else {
            byteBufferAllocate.put((byte) 0);
        }
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    public void setTripNumberDevice(long j) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 8);
        ByteBufferUtils.putUnsignedInt(byteBufferAllocate, Long.valueOf(j));
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    public void setTripNumberVehicle(long j) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 9);
        ByteBufferUtils.putUnsignedInt(byteBufferAllocate, Long.valueOf(j));
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setAccelerationMaxRange(int i) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put(DataManagerParameterID.ACCELERATION_MAX_RANGE);
        ByteBufferUtils.putUnsignedShort(byteBufferAllocate, Integer.valueOf(i * 10));
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setDrivingTimeLowRPMMinThreshold(int i) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put(DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD);
        ByteBufferUtils.putUnsignedShort(byteBufferAllocate, Integer.valueOf(i));
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setDrivingTimeLowRPMMaxThreshold(int i) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put(DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD);
        ByteBufferUtils.putUnsignedShort(byteBufferAllocate, Integer.valueOf(i));
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setSOSEnabledLowPowerMode(boolean z) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 10);
        if (z) {
            byteBufferAllocate.put((byte) 1);
        } else {
            byteBufferAllocate.put((byte) 0);
        }
        sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration
    public void setLedBehaviour(LedBehaviour ledBehaviour) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().isAuthenticated()) {
            throw new DongleNotAuthenticatedException();
        }
        Byte b = null;
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$datamanagerconfiguration$LedBehaviour[ledBehaviour.ordinal()];
        if (i == 1) {
            b = (byte) 1;
        } else if (i == 2) {
            b = (byte) 0;
        }
        if (b != null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.put(DataManagerParameterID.LED_ALWAYS_ON);
            byteBufferAllocate.put(b.byteValue());
            sendMessage(new Message.Builder().setCommandID(82).setPayload(byteBufferAllocate.array()).build());
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.datamanagerconfiguration.internal.SerialDataManagerConfiguration$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$datamanagerconfiguration$LedBehaviour;

        static {
            int[] iArr = new int[LedBehaviour.values().length];
            $SwitchMap$com$texa$carelib$care$datamanagerconfiguration$LedBehaviour = iArr;
            try {
                iArr[LedBehaviour.AlwaysOn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$datamanagerconfiguration$LedBehaviour[LedBehaviour.Default.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void sendMessage(Message message) {
        SerialProfileProxy serialProfileProxy = this.mSerialProfileProxy;
        if (serialProfileProxy != null) {
            serialProfileProxy.sendMessage(message);
        }
    }
}
