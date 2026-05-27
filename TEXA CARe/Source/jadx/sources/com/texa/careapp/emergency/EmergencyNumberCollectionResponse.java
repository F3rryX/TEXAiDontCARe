package com.texa.careapp.emergency;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class EmergencyNumberCollectionResponse {

    @SerializedName("numbers_list")
    @Expose
    private HashMap<String, List<EmergencyNumberResponse>> numbers;

    protected boolean canEqual(Object obj) {
        return obj instanceof EmergencyNumberCollectionResponse;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EmergencyNumberCollectionResponse)) {
            return false;
        }
        EmergencyNumberCollectionResponse emergencyNumberCollectionResponse = (EmergencyNumberCollectionResponse) obj;
        if (!emergencyNumberCollectionResponse.canEqual(this)) {
            return false;
        }
        HashMap<String, List<EmergencyNumberResponse>> numbers = getNumbers();
        HashMap<String, List<EmergencyNumberResponse>> numbers2 = emergencyNumberCollectionResponse.getNumbers();
        return numbers != null ? numbers.equals(numbers2) : numbers2 == null;
    }

    public int hashCode() {
        HashMap<String, List<EmergencyNumberResponse>> numbers = getNumbers();
        return 59 + (numbers == null ? 43 : numbers.hashCode());
    }

    public void setNumbers(HashMap<String, List<EmergencyNumberResponse>> map) {
        this.numbers = map;
    }

    public String toString() {
        return "EmergencyNumberCollectionResponse(numbers=" + getNumbers() + ")";
    }

    public HashMap<String, List<EmergencyNumberResponse>> getNumbers() {
        return this.numbers;
    }
}
