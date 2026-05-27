package com.texa.careapp.utils.authentication;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class AccessToken {

    @SerializedName("access_token")
    @Expose
    public String accessToken;

    @SerializedName("expires_in")
    @Expose
    public Integer expires_in;

    @SerializedName("refresh_token")
    @Expose
    public String refreshToken;

    @SerializedName("timestamp")
    @Expose
    public Long timestamp = Long.valueOf(new Date().getTime());

    @SerializedName("token_type")
    @Expose
    public String tokenType;

    public String toString() {
        return "AccessToken{accessToken='" + this.accessToken + "', refreshToken='" + this.refreshToken + "', tokenType='" + this.tokenType + "', expires_in=" + this.expires_in + "', timestamp=" + this.timestamp + '}';
    }
}
