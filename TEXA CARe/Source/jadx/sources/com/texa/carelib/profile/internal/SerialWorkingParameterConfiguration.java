package com.texa.carelib.profile.internal;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.parser.GetWorkingParametersParser;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class SerialWorkingParameterConfiguration extends ProfileSubModule implements WorkingParameterConfiguration, SerialProfileMessageReceiver {
    private static final float DEFAULT_SPEED_LIMIT = 500.0f;
    private static final String TAG = "SerialWorkingParameterConfiguration";
    private final SerialProfile mProfile;

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
    }

    SerialWorkingParameterConfiguration(SerialProfile serialProfile) {
        this.mProfile = serialProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void loadInfo() {
        super.loadInfo();
        loadValues();
    }

    @Override // com.texa.carelib.profile.internal.WorkingParameterConfiguration
    public boolean loadValues() {
        CareLog.v(TAG, "loadValues", new Object[0]);
        this.mProfile.sendMessage(new Message.Builder().setCommandID(81).build());
        return true;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        int commandID = message.getCommandID();
        if (commandID == 80) {
            handleSetWorkingParameters(message, careError);
        } else {
            if (commandID != 81) {
                return;
            }
            handleMessageGetWorkingParameters(message, careError);
        }
    }

    private void handleMessageGetWorkingParameters(Message message, CareError careError) {
        if (careError == null) {
            GetWorkingParametersParser.GetWorkingParametersResponse getWorkingParametersResponse = GetWorkingParametersParser.parse(message);
            for (int i = 0; i < getWorkingParametersResponse.getData().size(); i++) {
                int iKeyAt = getWorkingParametersResponse.getData().keyAt(i);
                CareLog.d(TAG, "Working parameter [key=%d,value=%s]", Integer.valueOf(iKeyAt), getWorkingParametersResponse.getData().get(iKeyAt));
            }
        }
    }

    private void handleSetWorkingParameters(Message message, CareError careError) {
        if (careError == null) {
            loadValues();
        }
    }

    private void setDefaultDiagnosisSpeedLimitIfNeeded(Float f) {
        if (500.0f != f.floatValue()) {
            updateDiagnosisSpeedLimit(500.0f);
        }
    }

    byte[] getSetDiagnosisSpeedLimitPayload(float f) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) 1);
        byteBufferAllocate.putFloat(f);
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    private void updateDiagnosisSpeedLimit(float f) {
        this.mProfile.sendMessage(new Message.Builder().setCommandID(80).setPayload(getSetDiagnosisSpeedLimitPayload(f)).build());
    }
}
