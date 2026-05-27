package com.texa.carelib.profile.internal;

import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.internal.parser.GetSessionIDPacketParser;

/* JADX INFO: loaded from: classes2.dex */
class SerialProtectionProcedureStatusGetSessionID extends SerialProtectionProcedureStatus {
    public static final String TAG = "SerialProtectionProcedureStatusGetSessionID";
    private final SerialProtectionProcedure mSerialProtectionProcedure;

    public SerialProtectionProcedureStatusGetSessionID(SerialProtectionProcedure serialProtectionProcedure) {
        this.mSerialProtectionProcedure = serialProtectionProcedure;
    }

    @Override // com.texa.carelib.profile.internal.SerialProtectionProcedureStatus
    public void init() {
        this.mSerialProtectionProcedure.sendMessage(new Message.Builder().setCommandID(78).build());
    }

    private boolean filterMessage(Message message) {
        return 78 == message.getCommandID();
    }

    @Override // com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        if (filterMessage(message)) {
            CareLog.d(TAG, "onMessageReceived: %s Error:%s", Commands.getName(Integer.valueOf(message.getCommandID())), careError);
            if (78 == message.getCommandID()) {
                handleGetSessionIDCommand(message, careError);
            }
        }
    }

    private void handleGetSessionIDCommand(Message message, CareError careError) {
        if (careError != null) {
            CareLog.e(TAG, "Could not retrieve the current session ID from device. Error=%s", careError);
        } else {
            CareLog.d(TAG, "New sessionID has been stored in device successfully.", new Object[0]);
            String str = GetSessionIDPacketParser.parse(message);
            if (this.mSerialProtectionProcedure.getServiceProxy() != null) {
                this.mSerialProtectionProcedure.getServiceProxy().setSessionID(str);
            }
        }
        this.mSerialProtectionProcedure.terminate(careError);
    }
}
