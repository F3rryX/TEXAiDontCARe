package com.texa.careapp.app.activationSosServices.phone;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class NumberValidationResponse {

    @SerializedName("validation_code")
    @Expose
    String code;

    protected boolean canEqual(Object obj) {
        return obj instanceof NumberValidationResponse;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NumberValidationResponse)) {
            return false;
        }
        NumberValidationResponse numberValidationResponse = (NumberValidationResponse) obj;
        if (!numberValidationResponse.canEqual(this)) {
            return false;
        }
        String code = getCode();
        String code2 = numberValidationResponse.getCode();
        return code != null ? code.equals(code2) : code2 == null;
    }

    public int hashCode() {
        String code = getCode();
        return 59 + (code == null ? 43 : code.hashCode());
    }

    public void setCode(String str) {
        this.code = str;
    }

    public String getCode() {
        return this.code;
    }

    public String toString() {
        return "NumberValidationResponse{code='" + this.code + "'}";
    }
}
