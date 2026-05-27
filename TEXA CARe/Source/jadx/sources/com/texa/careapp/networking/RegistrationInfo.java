package com.texa.careapp.networking;

import com.google.gson.annotations.Expose;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class RegistrationInfo {
    private static final String TAG = "RegistrationInfo";

    @Expose
    private Date birthDate;

    @Expose
    private String firstName;

    @Expose
    private String lastName;

    @Expose
    private String password;

    @Expose
    private String phoneNumber;

    @Expose
    private String userCountry;

    @Expose
    private String username;

    protected boolean canEqual(Object obj) {
        return obj instanceof RegistrationInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RegistrationInfo)) {
            return false;
        }
        RegistrationInfo registrationInfo = (RegistrationInfo) obj;
        if (!registrationInfo.canEqual(this)) {
            return false;
        }
        String username = getUsername();
        String username2 = registrationInfo.getUsername();
        if (username != null ? !username.equals(username2) : username2 != null) {
            return false;
        }
        String password = getPassword();
        String password2 = registrationInfo.getPassword();
        if (password != null ? !password.equals(password2) : password2 != null) {
            return false;
        }
        String firstName = getFirstName();
        String firstName2 = registrationInfo.getFirstName();
        if (firstName != null ? !firstName.equals(firstName2) : firstName2 != null) {
            return false;
        }
        String lastName = getLastName();
        String lastName2 = registrationInfo.getLastName();
        if (lastName != null ? !lastName.equals(lastName2) : lastName2 != null) {
            return false;
        }
        String phoneNumber = getPhoneNumber();
        String phoneNumber2 = registrationInfo.getPhoneNumber();
        if (phoneNumber != null ? !phoneNumber.equals(phoneNumber2) : phoneNumber2 != null) {
            return false;
        }
        Date birthDate = getBirthDate();
        Date birthDate2 = registrationInfo.getBirthDate();
        if (birthDate != null ? !birthDate.equals(birthDate2) : birthDate2 != null) {
            return false;
        }
        String userCountry = getUserCountry();
        String userCountry2 = registrationInfo.getUserCountry();
        return userCountry != null ? userCountry.equals(userCountry2) : userCountry2 == null;
    }

    public int hashCode() {
        String username = getUsername();
        int iHashCode = username == null ? 43 : username.hashCode();
        String password = getPassword();
        int iHashCode2 = ((iHashCode + 59) * 59) + (password == null ? 43 : password.hashCode());
        String firstName = getFirstName();
        int iHashCode3 = (iHashCode2 * 59) + (firstName == null ? 43 : firstName.hashCode());
        String lastName = getLastName();
        int iHashCode4 = (iHashCode3 * 59) + (lastName == null ? 43 : lastName.hashCode());
        String phoneNumber = getPhoneNumber();
        int iHashCode5 = (iHashCode4 * 59) + (phoneNumber == null ? 43 : phoneNumber.hashCode());
        Date birthDate = getBirthDate();
        int iHashCode6 = (iHashCode5 * 59) + (birthDate == null ? 43 : birthDate.hashCode());
        String userCountry = getUserCountry();
        return (iHashCode6 * 59) + (userCountry != null ? userCountry.hashCode() : 43);
    }

    public void setBirthDate(Date date) {
        this.birthDate = date;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public void setUserCountry(String str) {
        this.userCountry = str;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public String toString() {
        return "RegistrationInfo(username=" + getUsername() + ", password=" + getPassword() + ", firstName=" + getFirstName() + ", lastName=" + getLastName() + ", phoneNumber=" + getPhoneNumber() + ", birthDate=" + getBirthDate() + ", userCountry=" + getUserCountry() + ")";
    }

    public String getUsername() {
        return this.username;
    }

    public String getPassword() {
        return this.password;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getLastName() {
        return this.lastName;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public Date getBirthDate() {
        return this.birthDate;
    }

    public String getUserCountry() {
        return this.userCountry;
    }
}
