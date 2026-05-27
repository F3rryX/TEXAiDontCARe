package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.communication.Message;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes2.dex */
public final class GetStatusPacketParser {
    /* JADX WARN: Removed duplicated region for block: B:13:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static GetStatusResponse parse(Message message) {
        int i;
        boolean z = false;
        if (message == null || message.getData() == null) {
            i = 255;
        } else {
            byte[] data = message.getData();
            if (data.length > 0) {
                boolean z2 = (data[0] & 128) != 0;
                i = data[0] & ByteCompanionObject.MAX_VALUE;
                z = z2;
            }
        }
        return new GetStatusResponse(z, i);
    }

    public static class GetStatusResponse {
        private int mAccessoryStatus;
        private boolean mIsHostAuthenticated;

        GetStatusResponse(boolean z, int i) {
            this.mIsHostAuthenticated = z;
            this.mAccessoryStatus = i;
        }

        public int getStatus() {
            return this.mAccessoryStatus;
        }

        GetStatusResponse setStatus(int i) {
            this.mAccessoryStatus = i;
            return this;
        }

        public boolean isHostAuthenticated() {
            return this.mIsHostAuthenticated;
        }

        public GetStatusResponse setAuthenticationStatus(boolean z) {
            this.mIsHostAuthenticated = z;
            return this;
        }
    }
}
