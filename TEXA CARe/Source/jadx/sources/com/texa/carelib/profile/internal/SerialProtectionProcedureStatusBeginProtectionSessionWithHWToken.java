package com.texa.carelib.profile.internal;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.R;
import com.texa.carelib.webservices.events.BeginProtectionSessionCompletedEvent;

/* JADX INFO: loaded from: classes2.dex */
class SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken extends SerialProtectionProcedureStatus {
    public static final String TAG = "SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken";
    private final byte[] mHWToken;
    private final String mSerialNumber;
    private final SerialProtectionProcedure mSerialProtectionProcedure;

    @Override // com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
    }

    SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken(SerialProtectionProcedure serialProtectionProcedure, String str, byte[] bArr) {
        this.mSerialProtectionProcedure = serialProtectionProcedure;
        this.mSerialNumber = str;
        this.mHWToken = bArr;
    }

    @Override // com.texa.carelib.profile.internal.SerialProtectionProcedureStatus
    public void init() {
        Callback<BeginProtectionSessionCompletedEvent> callback = new Callback() { // from class: com.texa.carelib.profile.internal.SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m743x4eb8bcaf((BeginProtectionSessionCompletedEvent) obj);
            }
        };
        String str = TAG;
        CareLog.d(str, "Opening a new protection session with the WEBApi...", new Object[0]);
        if (this.mSerialProtectionProcedure.getServiceProxy() == null) {
            throw new IllegalStateException("Service proxy not set.");
        }
        if (this.mSerialProtectionProcedure.getServiceProxy().beginProtectionSessionWithHWToken(this.mHWToken, this.mSerialNumber, callback)) {
            return;
        }
        CareLog.e(str, "Could not open a new protection session with the WEBApi at this moment...", new Object[0]);
        this.mSerialProtectionProcedure.terminate(new CareError.Builder(2, 22).setMessage(this.mSerialProtectionProcedure.getContext().getResources().getString(R.string.error_could_not_open_protection_session_with_hardware_token)).build());
    }

    /* JADX INFO: renamed from: lambda$init$0$com-texa-carelib-profile-internal-SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken, reason: not valid java name */
    public /* synthetic */ void m743x4eb8bcaf(BeginProtectionSessionCompletedEvent beginProtectionSessionCompletedEvent) {
        CareError error = beginProtectionSessionCompletedEvent.getError();
        if (error != null) {
            CareLog.e(TAG, "Could not open a new protection session with the WebAPI. Error: %s", error);
            this.mSerialProtectionProcedure.terminate(error);
        } else {
            CareLog.d(TAG, "A new protection session with the WEBApi has been established.", new Object[0]);
            this.mSerialProtectionProcedure.setStatus(new SerialProtectionProcedureStatusValidateSessionWithToken(this.mSerialProtectionProcedure, beginProtectionSessionCompletedEvent.getVerificationToken(), beginProtectionSessionCompletedEvent.getSessionID()));
        }
    }
}
