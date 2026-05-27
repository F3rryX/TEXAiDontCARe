package com.texa.carelib.profile.internal;

import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.R;
import com.texa.carelib.profile.internal.parser.BeginSessionPacketParser;

/* JADX INFO: loaded from: classes2.dex */
class SerialProtectionProcedureStatusBeginSession extends SerialProtectionProcedureStatus {
    public static final String TAG = "SerialProtectionProcedureStatusBeginSession";
    private final String mHardwareID;
    private final SerialProtectionProcedure mSerialProtectionProcedure;

    SerialProtectionProcedureStatusBeginSession(SerialProtectionProcedure serialProtectionProcedure, String str) {
        this.mHardwareID = str;
        this.mSerialProtectionProcedure = serialProtectionProcedure;
    }

    @Override // com.texa.carelib.profile.internal.SerialProtectionProcedureStatus
    public void init() {
        this.mSerialProtectionProcedure.sendMessage(new Message.Builder().setCommandID(69).build());
    }

    @Override // com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        if (filterMessage(message)) {
            CareLog.d(TAG, "onMessageReceived: %s Error: %s", Commands.getName(Integer.valueOf(message.getCommandID())), careError);
            if (69 == message.getCommandID()) {
                handleBeginSessionCommand(message, careError);
            }
        }
    }

    private boolean filterMessage(Message message) {
        return 69 == message.getCommandID();
    }

    private void handleBeginSessionCommand(Message message, CareError careError) {
        if (careError != null) {
            CareLog.e(TAG, "Couldn't begin a new session. Error: %s", careError);
            this.mSerialProtectionProcedure.terminate(careError);
            return;
        }
        byte[] hardwareToken = BeginSessionPacketParser.parse(message).getHardwareToken();
        if (hardwareToken == null) {
            CareLog.e(TAG, "Hardware token cannot be null.", new Object[0]);
            this.mSerialProtectionProcedure.terminate(new CareError.Builder(1, 7).setMessage(this.mSerialProtectionProcedure.getContext().getString(R.string.error_protection_null_token)).build());
        } else {
            this.mSerialProtectionProcedure.setStatus(new SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken(this.mSerialProtectionProcedure, this.mHardwareID, hardwareToken));
        }
    }
}
