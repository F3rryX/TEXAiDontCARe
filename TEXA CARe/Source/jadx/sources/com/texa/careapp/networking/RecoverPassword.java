package com.texa.careapp.networking;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class RecoverPassword {
    private static final String TAG = "RecoverPassword";

    @SerializedName("contact")
    @Expose
    private String email;

    protected boolean canEqual(Object obj) {
        return obj instanceof RecoverPassword;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RecoverPassword)) {
            return false;
        }
        RecoverPassword recoverPassword = (RecoverPassword) obj;
        if (!recoverPassword.canEqual(this)) {
            return false;
        }
        String email = getEmail();
        String email2 = recoverPassword.getEmail();
        return email != null ? email.equals(email2) : email2 == null;
    }

    public int hashCode() {
        String email = getEmail();
        return 59 + (email == null ? 43 : email.hashCode());
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String toString() {
        return "RecoverPassword(email=" + getEmail() + ")";
    }

    public String getEmail() {
        return this.email;
    }
}
