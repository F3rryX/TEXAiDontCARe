package com.texa.careapp.model;

import android.location.Location;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.fcm.FcmConstants;
import com.texa.careapp.networking.EmergencyLocation;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class EmergencyInfo {
    private static final String TAG = "EmergencyInfo";

    @SerializedName("alt_contacts")
    @Expose
    private List<String> altContacts;

    @SerializedName("main_contact")
    @Expose
    private String mainContact;

    @SerializedName("request_type")
    @Expose
    private int requestType;

    @SerializedName(FcmConstants.NOTIFICATION_USER_ID)
    @Expose
    private String userId;

    @SerializedName("timestamp")
    @Expose
    private Date eventTimestamp = new Date();

    @SerializedName("locations")
    @Expose
    private List<EmergencyLocation> emergencyLocations = new ArrayList();

    protected boolean canEqual(Object obj) {
        return obj instanceof EmergencyInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EmergencyInfo)) {
            return false;
        }
        EmergencyInfo emergencyInfo = (EmergencyInfo) obj;
        if (!emergencyInfo.canEqual(this)) {
            return false;
        }
        String userId = getUserId();
        String userId2 = emergencyInfo.getUserId();
        if (userId != null ? !userId.equals(userId2) : userId2 != null) {
            return false;
        }
        String mainContact = getMainContact();
        String mainContact2 = emergencyInfo.getMainContact();
        if (mainContact != null ? !mainContact.equals(mainContact2) : mainContact2 != null) {
            return false;
        }
        if (getRequestType() != emergencyInfo.getRequestType()) {
            return false;
        }
        Date eventTimestamp = getEventTimestamp();
        Date eventTimestamp2 = emergencyInfo.getEventTimestamp();
        if (eventTimestamp != null ? !eventTimestamp.equals(eventTimestamp2) : eventTimestamp2 != null) {
            return false;
        }
        List<EmergencyLocation> emergencyLocations = getEmergencyLocations();
        List<EmergencyLocation> emergencyLocations2 = emergencyInfo.getEmergencyLocations();
        if (emergencyLocations != null ? !emergencyLocations.equals(emergencyLocations2) : emergencyLocations2 != null) {
            return false;
        }
        List<String> altContacts = getAltContacts();
        List<String> altContacts2 = emergencyInfo.getAltContacts();
        return altContacts != null ? altContacts.equals(altContacts2) : altContacts2 == null;
    }

    public int hashCode() {
        String userId = getUserId();
        int iHashCode = userId == null ? 43 : userId.hashCode();
        String mainContact = getMainContact();
        int iHashCode2 = ((((iHashCode + 59) * 59) + (mainContact == null ? 43 : mainContact.hashCode())) * 59) + getRequestType();
        Date eventTimestamp = getEventTimestamp();
        int iHashCode3 = (iHashCode2 * 59) + (eventTimestamp == null ? 43 : eventTimestamp.hashCode());
        List<EmergencyLocation> emergencyLocations = getEmergencyLocations();
        int iHashCode4 = (iHashCode3 * 59) + (emergencyLocations == null ? 43 : emergencyLocations.hashCode());
        List<String> altContacts = getAltContacts();
        return (iHashCode4 * 59) + (altContacts != null ? altContacts.hashCode() : 43);
    }

    public void setAltContacts(List<String> list) {
        this.altContacts = list;
    }

    public void setEmergencyLocations(List<EmergencyLocation> list) {
        this.emergencyLocations = list;
    }

    public void setEventTimestamp(Date date) {
        this.eventTimestamp = date;
    }

    public void setMainContact(String str) {
        this.mainContact = str;
    }

    public void setRequestType(int i) {
        this.requestType = i;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getMainContact() {
        return this.mainContact;
    }

    public int getRequestType() {
        return this.requestType;
    }

    public Date getEventTimestamp() {
        return this.eventTimestamp;
    }

    public List<EmergencyLocation> getEmergencyLocations() {
        return this.emergencyLocations;
    }

    public List<String> getAltContacts() {
        return this.altContacts;
    }

    public void addLocation(Location location) {
        this.emergencyLocations.add(EmergencyLocation.from(location));
    }

    public String toString() {
        return Utils.buildGsonInstance().toJson(this);
    }

    public List<String> addContacts(String... strArr) {
        if (this.altContacts == null) {
            this.altContacts = new ArrayList();
        }
        Collections.addAll(this.altContacts, strArr);
        return this.altContacts;
    }
}
