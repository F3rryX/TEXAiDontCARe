package com.texa.carelib.profile.internal;

import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.R;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class SerialProtectionProcedureStatusValidateSessionWithToken extends SerialProtectionProcedureStatus {
    private static final String ENCODING = "ISO-8859-1";
    public static final String TAG = "SerialProtectionProcedureStatusValidateSessionWithToken";
    private final SerialProtectionProcedure mSerialProtectionProcedure;
    private final String mSessionID;
    private final String mVerificationToken;

    SerialProtectionProcedureStatusValidateSessionWithToken(SerialProtectionProcedure serialProtectionProcedure, String str, String str2) {
        this.mSerialProtectionProcedure = serialProtectionProcedure;
        this.mVerificationToken = str;
        this.mSessionID = str2;
    }

    @Override // com.texa.carelib.profile.internal.SerialProtectionProcedureStatus
    public void init() throws UnsupportedEncodingException {
        validateSessionWithToken(this.mVerificationToken, this.mSessionID);
    }

    private void validateSessionWithToken(String str, String str2) throws UnsupportedEncodingException {
        byte[] bytes = new byte[0];
        byte[] bytes2 = new byte[0];
        CareLog.d(TAG, "Validating[sessionID=%s,verification_token=%s]", str2, str);
        if (str2 != null) {
            try {
                bytes2 = str2.getBytes("ISO-8859-1");
            } catch (UnsupportedEncodingException e) {
                CareLog.e(TAG, e, "Encoding not supported", new Object[0]);
            }
        }
        if (str != null) {
            bytes = str.getBytes("ISO-8859-1");
        }
        byte[] bArr = new byte[52];
        Arrays.fill(bArr, (byte) 0);
        System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 16));
        System.arraycopy(bytes2, 0, bArr, 16, Math.min(bytes2.length, 36));
        this.mSerialProtectionProcedure.sendMessage(new Message.Builder().setCommandID(72).setPayload(bArr).build());
    }

    private boolean filterMessage(Message message) {
        return 72 == message.getCommandID();
    }

    @Override // com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        if (filterMessage(message)) {
            CareLog.d(TAG, "onMessageReceived: %s Error:%s", Commands.getName(Integer.valueOf(message.getCommandID())), careError);
            if (72 == message.getCommandID()) {
                handleCheckSessionKeyCommand(careError);
            }
        }
    }

    private void handleCheckSessionKeyCommand(CareError careError) {
        if (careError != null) {
            CareLog.e(TAG, "SessionID seems to be not valid.", new Object[0]);
            this.mSerialProtectionProcedure.terminate(new CareError.Builder(1, 7).setMessage(this.mSerialProtectionProcedure.getContext().getResources().getString(R.string.error_protection_procedure_command_check_session_id_fails)).setInnerError(careError).build());
        } else {
            this.mSerialProtectionProcedure.setStatus(new SerialProtectionProcedureStatusGetSessionID(this.mSerialProtectionProcedure));
        }
    }
}
