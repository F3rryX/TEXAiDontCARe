package com.texa.careapp.emergency;

import com.google.gson.annotations.Expose;

/* JADX INFO: loaded from: classes2.dex */
public class EmergencyNumberResponse implements EmergencyNumber {

    @Expose
    private ContactType type;

    @Expose
    private String value;

    protected boolean canEqual(Object obj) {
        return obj instanceof EmergencyNumberResponse;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EmergencyNumberResponse)) {
            return false;
        }
        EmergencyNumberResponse emergencyNumberResponse = (EmergencyNumberResponse) obj;
        if (!emergencyNumberResponse.canEqual(this)) {
            return false;
        }
        String value = getValue();
        String value2 = emergencyNumberResponse.getValue();
        if (value != null ? !value.equals(value2) : value2 != null) {
            return false;
        }
        ContactType type = getType();
        ContactType type2 = emergencyNumberResponse.getType();
        return type != null ? type.equals(type2) : type2 == null;
    }

    public int hashCode() {
        String value = getValue();
        int iHashCode = value == null ? 43 : value.hashCode();
        ContactType type = getType();
        return ((iHashCode + 59) * 59) + (type != null ? type.hashCode() : 43);
    }

    public void setType(ContactType contactType) {
        this.type = contactType;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public String toString() {
        return "EmergencyNumberResponse(value=" + getValue() + ", type=" + getType() + ")";
    }

    @Override // com.texa.careapp.emergency.EmergencyNumber
    public String getValue() {
        return this.value;
    }

    @Override // com.texa.careapp.emergency.EmergencyNumber
    public ContactType getType() {
        return this.type;
    }
}
