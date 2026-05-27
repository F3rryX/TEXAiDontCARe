package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;
import com.texa.carelib.core.logging.internal.LogUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class BeginSessionPacketParser {
    public static final String TAG = "BeginSessionPacketParser";

    public static BeginSessionResponse parse(Message message) {
        if (message == null) {
            return new BeginSessionResponse();
        }
        BeginSessionResponse beginSessionResponse = new BeginSessionResponse();
        if (message.getData() != null) {
            beginSessionResponse.setHardwareToken(message.getData());
        }
        return beginSessionResponse;
    }

    public static class BeginSessionResponse {
        private byte[] mHardwareToken = null;

        public byte[] getHardwareToken() {
            return this.mHardwareToken;
        }

        BeginSessionResponse setHardwareToken(byte[] bArr) {
            this.mHardwareToken = bArr;
            return this;
        }

        public String toString() {
            return "Response mHardwareToken=" + LogUtils.dataToString(this.mHardwareToken) + ']';
        }
    }
}
