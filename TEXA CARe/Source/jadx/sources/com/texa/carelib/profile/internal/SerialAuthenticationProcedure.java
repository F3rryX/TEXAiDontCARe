package com.texa.carelib.profile.internal;

import android.content.Context;
import android.util.Base64;
import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.profile.ProfileDelegate;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.R;
import com.texa.carelib.profile.events.AuthenticationCompletedEvent;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.parser.CreateAuthenticationKeyPacketParser;
import com.texa.carelib.profile.internal.parser.GetStatusPacketParser;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes2.dex */
class SerialAuthenticationProcedure extends ProfileSubModule implements AuthenticationProcedure, SerialProfileMessageReceiver {
    private static final int CNONCE_BASE64_LEN = 25;
    private static final int CNONCE_LEN = 16;
    public static final boolean D = false;
    private static final int DIGEST_BASE64_LEN = 45;
    public static final String ENCODING = "ISO-8859-1";
    private static final int PWD_LEN = 9;
    private static final int SHARED_SECRET_LEN = 32;
    public static final String TAG = "SerialAuthenticationProcedure";
    private static final int TIMESTAMP_LEN = 4;
    private static final String USER_DEFAULT = "default";
    private static final int USER_LEN = 16;
    private String mAuthenticationPIN;
    private Callback<AuthenticationCompletedEvent> mCallback;
    private State mCurrentState;
    private volatile boolean mIsAuthenticating = false;
    private final SerialProfile mProfile;

    public SerialAuthenticationProcedure(SerialProfile serialProfile) {
        this.mProfile = serialProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public SerialProfile getProfile() {
        return this.mProfile;
    }

    private ProfileDelegate getProfileDelegate(SerialProfile serialProfile) {
        if (serialProfile.getProfileDelegate() == null) {
            throw new IllegalStateException("Profile delegate not set.");
        }
        return serialProfile.getProfileDelegate();
    }

    public boolean isAuthenticating() {
        return this.mIsAuthenticating;
    }

    @Override // com.texa.carelib.profile.internal.AuthenticationProcedure
    public synchronized void beginAuthentication(String str, Callback<AuthenticationCompletedEvent> callback) throws CareLibException {
        if (!getProfileDelegate(this.mProfile).shouldAuthenticate()) {
            CareLog.i(TAG, "Authentication seems to be disabled by the customer.", new Object[0]);
            callback.onCompleted(new AuthenticationCompletedEvent(this, null));
            return;
        }
        if (str == null) {
            throw new CareLibException("Could not authenticate with a null authentication pin.");
        }
        if (isAuthenticating()) {
            throw new CareLibException("Authentication procedure already running");
        }
        String str2 = TAG;
        CareLog.v(str2, "Begin authentication...", new Object[0]);
        this.mIsAuthenticating = true;
        this.mCallback = callback;
        this.mAuthenticationPIN = str;
        CareLog.v(str2, "Sending create authentication key...", new Object[0]);
        this.mCurrentState = State.CreateAuthenticationKey;
        this.mProfile.sendMessage(new Message.Builder().setCommandID(162).build(), false);
    }

    public static byte[] getTimeStampByteArray(Date date) {
        return getTimeStampByteArray(date.getTime() / 1000);
    }

    public static byte[] getTimeStampByteArray(long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        ByteBufferUtils.putUnsignedInt(byteBufferAllocate, Long.valueOf(j));
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    private void authenticateWithKey(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr == null || bArr.length == 0) {
            CareLog.e(TAG, "User is null or empty.", new Object[0]);
            terminate(new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_error_invalid_user)).build());
            return;
        }
        if (bArr2 == null || bArr2.length == 0) {
            CareLog.e(TAG, "cnonce is null or empty.", new Object[0]);
            terminate(new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_error_invalid_cnonce)).build());
            return;
        }
        if (bArr3 == null || bArr3.length == 0) {
            CareLog.e(TAG, "Digest is null or empty.", new Object[0]);
            terminate(new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_error_invalid_digest)).build());
            return;
        }
        if (bArr4 == null || bArr4.length == 0) {
            CareLog.e(TAG, "Timestamp is null or empty.", new Object[0]);
            terminate(new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_error_invalid_digest)).build());
            return;
        }
        byte[] bArr5 = new byte[90];
        System.arraycopy(bArr, 0, bArr5, 0, Math.min(bArr.length, 16));
        byte[] bArrEncode = Base64.encode(bArr2, 2);
        if (bArrEncode != null) {
            System.arraycopy(bArrEncode, 0, bArr5, 16, Math.min(bArrEncode.length, 25));
        }
        byte[] bArrEncode2 = Base64.encode(bArr3, 2);
        if (bArrEncode2 != null) {
            System.arraycopy(bArrEncode2, 0, bArr5, 41, Math.min(bArrEncode2.length, 45));
        }
        System.arraycopy(bArr4, 0, bArr5, 86, Math.min(bArr4.length, 4));
        this.mCurrentState = State.AuthenticationRequest;
        this.mProfile.sendMessage(new Message.Builder().setCommandID(163).setPayload(bArr5).build(), false);
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        this.mCurrentState.onMessageReceived(this, obj, message, careError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateAuthenticationKeyCommand(Object obj, Message message, CareError careError) {
        byte[] bytes;
        byte[] bytes2;
        Date date;
        String str = TAG;
        CareLog.v(str, "Received CreateAuthenticationKey response", new Object[0]);
        if (careError == null) {
            if (!getProfile().getProfileDelegate().shouldAuthenticate()) {
                terminate(new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_disabled)).build());
                return;
            }
            CreateAuthenticationKeyPacketParser.CreateAuthenticationKeyResponse createAuthenticationKeyResponse = CreateAuthenticationKeyPacketParser.parse(message);
            if (createAuthenticationKeyResponse == null) {
                terminate(new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_command_create_authentication_invalid_response)).build());
                return;
            }
            CareLog.v(str, createAuthenticationKeyResponse.toString(), new Object[0]);
            if (createAuthenticationKeyResponse.getNonce() == null) {
                terminate(new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_command_create_authentication_invalid_nonce)).build());
                return;
            }
            byte[] sharedSecret = getProfile().getProfileDelegate().getSharedSecret();
            byte[] nonce = createAuthenticationKeyResponse.getNonce();
            String strTrim = !StringUtils.isNullOrEmpty(getProfile().getProfileDelegate().getUser()) ? getProfile().getProfileDelegate().getUser().trim() : "default";
            if (strTrim.length() > 15) {
                strTrim = strTrim.substring(0, 15);
            }
            String strSubstring = this.mAuthenticationPIN;
            if (strSubstring.length() > 8) {
                strSubstring = strSubstring.substring(0, 8);
            }
            try {
                bytes = strTrim.getBytes("ISO-8859-1");
            } catch (UnsupportedEncodingException e) {
                CareLog.e(TAG, e, "Unsupported encoding.", new Object[0]);
                bytes = new byte[16];
            }
            try {
                bytes2 = strSubstring.getBytes("ISO-8859-1");
            } catch (UnsupportedEncodingException e2) {
                CareLog.e(TAG, e2, "Unsupported encoding.", new Object[0]);
                bytes2 = new byte[9];
            }
            byte[] bArr = new byte[16];
            new Random().nextBytes(bArr);
            byte[] bArr2 = new byte[nonce.length + 41 + 16 + 16];
            System.arraycopy(sharedSecret, 0, bArr2, 0, Math.min(32, sharedSecret.length));
            System.arraycopy(nonce, 0, bArr2, 32, nonce.length);
            int length = 32 + nonce.length;
            System.arraycopy(bytes2, 0, bArr2, length, Math.min(bytes2.length, 9));
            int i = length + 9;
            System.arraycopy(bytes, 0, bArr2, i, Math.min(bytes.length, 16));
            System.arraycopy(bArr, 0, bArr2, i + 16, Math.min(16, 16));
            try {
                byte[] bArrDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA256).digest(bArr2);
                try {
                    date = this.mProfile.getProfileDelegate().getDate();
                } catch (Exception e3) {
                    Date uTCNow = Utils.getUTCNow();
                    CareLog.e(TAG, e3, "ProfileDelegateException.", new Object[0]);
                    date = uTCNow;
                }
                if (isValidAuthenticationDate(date)) {
                    authenticateWithKey(bytes, bArr, bArrDigest, getTimeStampByteArray(date));
                    return;
                } else {
                    terminate(new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_command_create_authentication_fails)).setInnerError(careError).build());
                    return;
                }
            } catch (NoSuchAlgorithmException e4) {
                CareLog.e(TAG, e4, "Encryption error", new Object[0]);
                terminate(new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_command_create_authentication_encryption_error)).build());
                return;
            }
        }
        terminate(new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_command_create_authentication_fails)).setInnerError(careError).build());
    }

    private boolean isValidAuthenticationDate(Date date) {
        if (date == null) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(date.getTime());
        return calendar.get(1) >= 2015;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAuthenticationRequestCommand(CareError careError) {
        CareLog.v(TAG, "Received AuthenticationRequest response", new Object[0]);
        if (careError == null) {
            this.mCurrentState = State.AccessoryStatusUpdate;
        } else {
            terminate(careError);
        }
    }

    void handleGetSupportedCommandsCommand(Message message, CareError careError) {
        CareLog.v(TAG, "Received GetSupportedCommands response", new Object[0]);
        if (message.getStatus() == 126) {
            terminate(null);
        } else {
            terminate(careError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleGetAccessoryStatusCommand(Message message, CareError careError) {
        CareLog.v(TAG, "Received GetStatus notification.", new Object[0]);
        if (careError == null) {
            if (GetStatusPacketParser.parse(message).isHostAuthenticated()) {
                this.mCurrentState = State.GetSupportedCommands;
                this.mProfile.sendMessage(new Message.Builder().setCommandID(Commands.GetSupportedCommands).build(), false);
                return;
            } else {
                terminate(new CareError.Builder(1, 6).setMessage("Device notify not authenticated state.").build());
                return;
            }
        }
        terminate(careError);
    }

    private void fireAuthenticationCompleted(CareError careError) {
        Callback<AuthenticationCompletedEvent> callback = this.mCallback;
        if (callback != null) {
            callback.onCompleted(new AuthenticationCompletedEvent(this, careError));
        }
    }

    void terminate(CareError careError) {
        CareLog.v(TAG, "Terminating authentication procedure...", new Object[0]);
        this.mIsAuthenticating = false;
        fireAuthenticationCompleted(careError != null ? new CareError.Builder(1, 6).setMessage(getContext().getResources().getString(R.string.error_care_authentication_fails)).setInnerError(careError).build() : null);
        this.mCallback = null;
        this.mCurrentState = State.Idle;
    }

    /* JADX INFO: renamed from: com.texa.carelib.profile.internal.SerialAuthenticationProcedure$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.DISCONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTION_LOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i != 1 && i != 2 && i != 3 && i != 4) {
            if (i != 5) {
                return;
            }
            this.mCurrentState = State.Idle;
        } else {
            CareLog.v(TAG, "Not connected!!", new Object[0]);
            if (isAuthenticating()) {
                terminate(new CareError.Builder(1, 19).setMessage(getContext().getString(R.string.error_connection_lost)).build());
            }
        }
    }

    private Context getContext() {
        if (this.mProfile.getProfileDelegate() == null) {
            throw new IllegalStateException("profile delegate not set.");
        }
        return this.mProfile.getProfileDelegate().getApplicationContext();
    }

    private enum State {
        Idle { // from class: com.texa.carelib.profile.internal.SerialAuthenticationProcedure.State.1
            @Override // com.texa.carelib.profile.internal.SerialAuthenticationProcedure.State
            public void onMessageReceived(SerialAuthenticationProcedure serialAuthenticationProcedure, Object obj, Message message, CareError careError) {
            }
        },
        CreateAuthenticationKey { // from class: com.texa.carelib.profile.internal.SerialAuthenticationProcedure.State.2
            @Override // com.texa.carelib.profile.internal.SerialAuthenticationProcedure.State
            public void onMessageReceived(SerialAuthenticationProcedure serialAuthenticationProcedure, Object obj, Message message, CareError careError) {
                if (162 == message.getCommandID()) {
                    serialAuthenticationProcedure.handleCreateAuthenticationKeyCommand(obj, message, careError);
                }
            }
        },
        AuthenticationRequest { // from class: com.texa.carelib.profile.internal.SerialAuthenticationProcedure.State.3
            @Override // com.texa.carelib.profile.internal.SerialAuthenticationProcedure.State
            public void onMessageReceived(SerialAuthenticationProcedure serialAuthenticationProcedure, Object obj, Message message, CareError careError) {
                if (163 == message.getCommandID()) {
                    serialAuthenticationProcedure.handleAuthenticationRequestCommand(careError);
                }
            }
        },
        AccessoryStatusUpdate { // from class: com.texa.carelib.profile.internal.SerialAuthenticationProcedure.State.4
            @Override // com.texa.carelib.profile.internal.SerialAuthenticationProcedure.State
            public void onMessageReceived(SerialAuthenticationProcedure serialAuthenticationProcedure, Object obj, Message message, CareError careError) {
                if (230 == message.getCommandID()) {
                    serialAuthenticationProcedure.handleGetAccessoryStatusCommand(message, careError);
                }
            }
        },
        GetSupportedCommands { // from class: com.texa.carelib.profile.internal.SerialAuthenticationProcedure.State.5
            @Override // com.texa.carelib.profile.internal.SerialAuthenticationProcedure.State
            public void onMessageReceived(SerialAuthenticationProcedure serialAuthenticationProcedure, Object obj, Message message, CareError careError) {
                if (239 == message.getCommandID()) {
                    serialAuthenticationProcedure.handleGetSupportedCommandsCommand(message, careError);
                }
            }
        };

        public abstract void onMessageReceived(SerialAuthenticationProcedure serialAuthenticationProcedure, Object obj, Message message, CareError careError);

        /* synthetic */ State(AnonymousClass1 anonymousClass1) {
            this();
        }
    }
}
