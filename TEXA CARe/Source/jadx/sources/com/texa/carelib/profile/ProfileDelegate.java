package com.texa.carelib.profile;

import android.content.Context;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.utils.internal.Utils;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ProfileDelegate {
    public abstract Context getApplicationContext();

    public String getPassword(DeviceInfo deviceInfo) {
        return null;
    }

    public byte[] getSharedSecret() {
        return new byte[0];
    }

    public String getUser() {
        return null;
    }

    public boolean shouldAuthenticate() {
        return true;
    }

    public Date getDate() {
        return Utils.getUTCNow();
    }
}
