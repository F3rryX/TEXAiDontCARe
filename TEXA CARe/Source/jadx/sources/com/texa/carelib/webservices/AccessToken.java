package com.texa.carelib.webservices;

import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class AccessToken {
    private long mDuration;
    private Date mGenerationTime;
    private String mToken;
    private String mTokenType;

    public Date getGenerationTime() {
        return this.mGenerationTime;
    }

    public String getTokenType() {
        return this.mTokenType;
    }

    public String getToken() {
        return this.mToken;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public AccessToken() {
        this("", "");
    }

    public AccessToken(String str, String str2) {
        this(str, str2, 0L);
    }

    public AccessToken(String str, String str2, long j) {
        this.mGenerationTime = Calendar.getInstance().getTime();
        this.mTokenType = str;
        this.mToken = str2;
        this.mDuration = j;
    }
}
