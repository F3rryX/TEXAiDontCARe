package com.texa.carelib.profile.internal.parser;

import android.util.Base64;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.logging.internal.LogUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class CreateAuthenticationKeyPacketParser {
    public static final boolean D = false;
    public static final String TAG = "CreateAuthenticationKeyPacketParser";

    public static CreateAuthenticationKeyResponse parse(Message message) {
        CreateAuthenticationKeyResponse createAuthenticationKeyResponse = new CreateAuthenticationKeyResponse();
        if (message.getData() != null) {
            byte[] bArrDecode = Base64.decode(new String(message.getData()), 0);
            if (bArrDecode.length >= 16) {
                byte[] bArr = new byte[16];
                System.arraycopy(bArrDecode, 0, bArr, 0, 16);
                createAuthenticationKeyResponse.setNonce(bArr);
            }
        }
        return createAuthenticationKeyResponse;
    }

    public static class CreateAuthenticationKeyResponse {
        public static final int NONCE_LENGTH = 16;
        private byte[] mNonce = null;

        public byte[] getNonce() {
            return this.mNonce;
        }

        CreateAuthenticationKeyResponse setNonce(byte[] bArr) {
            this.mNonce = bArr;
            return this;
        }

        public String toString() {
            return "CreateAuthenticationKeyResponse bonce=" + LogUtils.dataToString(this.mNonce) + ']';
        }
    }
}
