package com.texa.careapp.networking.response;

import com.google.gson.annotations.Expose;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class ServerResponse {

    @Expose
    private HashMap<String, String> details;

    @Expose
    private String error;

    @Expose
    private String message;

    protected boolean canEqual(Object obj) {
        return obj instanceof ServerResponse;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ServerResponse)) {
            return false;
        }
        ServerResponse serverResponse = (ServerResponse) obj;
        if (!serverResponse.canEqual(this)) {
            return false;
        }
        String message = getMessage();
        String message2 = serverResponse.getMessage();
        if (message != null ? !message.equals(message2) : message2 != null) {
            return false;
        }
        HashMap<String, String> details = getDetails();
        HashMap<String, String> details2 = serverResponse.getDetails();
        if (details != null ? !details.equals(details2) : details2 != null) {
            return false;
        }
        String error = getError();
        String error2 = serverResponse.getError();
        return error != null ? error.equals(error2) : error2 == null;
    }

    public int hashCode() {
        String message = getMessage();
        int iHashCode = message == null ? 43 : message.hashCode();
        HashMap<String, String> details = getDetails();
        int iHashCode2 = ((iHashCode + 59) * 59) + (details == null ? 43 : details.hashCode());
        String error = getError();
        return (iHashCode2 * 59) + (error != null ? error.hashCode() : 43);
    }

    public void setDetails(HashMap<String, String> map) {
        this.details = map;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getMessage() {
        return this.message;
    }

    public HashMap<String, String> getDetails() {
        return this.details;
    }

    public String getError() {
        return this.error;
    }

    public String toString() {
        return "ServerResponse{message='" + this.message + "', details=" + this.details + ", error='" + this.error + "'}";
    }
}
