package com.texa.careapp.model;

import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.emergency.ContactType;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.networking.response.UserResponse;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.core.utils.Version;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = "User")
public class UserModel extends Model {
    public static final String COLUMN_SYNC_NEEDED = "sync_needed";
    public static final String TABLE_USER = "User";

    @Column
    @Expose
    private String address;

    @Column
    @Expose
    private String city;

    @SerializedName("street_number")
    @Column
    @Expose
    private String civicNumber;

    @Column
    @Expose
    private String country;

    @SerializedName("post_code")
    @Column
    @Expose
    private String countryCode;

    @Column
    @Expose
    private String email;

    @Column
    @Expose
    private String firstName;

    @SerializedName("tax_code")
    @Column
    @Expose
    private String fiscalCode;

    @Column
    @Expose
    private String lastName;

    @SerializedName("license_exp_date")
    @Column
    @Expose
    private Date licenseExpireDate;

    @Column
    @Expose
    private String province;

    @Column(name = "sync_needed")
    public boolean syncNeeded = true;

    @Column
    @Expose
    private String uid;

    @Column
    @Expose
    private String userName;

    public boolean isSyncNeeded() {
        return this.syncNeeded;
    }

    public void setSyncNeeded(boolean z) {
        this.syncNeeded = z;
    }

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public Date getLicenseExpireDate() {
        return this.licenseExpireDate;
    }

    public void setLicenseExpireDate(Date date) {
        this.licenseExpireDate = date;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getCivicNumber() {
        return this.civicNumber;
    }

    public void setCivicNumber(String str) {
        this.civicNumber = str;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public void setCountryCode(String str) {
        this.countryCode = str;
    }

    public String getFiscalCode() {
        return this.fiscalCode;
    }

    public void setFiscalCode(String str) {
        this.fiscalCode = str;
    }

    public String getCity() {
        return this.city;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public String getProvince() {
        return this.province;
    }

    public void setProvince(String str) {
        this.province = str;
    }

    public static UserModel from(UserResponse.UserData userData) {
        UserModel userModel = new UserModel();
        updateData(userData, userModel);
        return userModel;
    }

    protected static void updateData(UserResponse.UserData userData, UserModel userModel) {
        userModel.setUid(userData.uid);
        userModel.setFirstName(userData.firstName);
        userModel.setLastName(userData.lastName);
        userModel.setUserName(userData.userName);
        userModel.setEmail(userData.email);
        userModel.setLicenseExpireDate(userData.licenseExpireDate);
        userModel.setAddress(userData.address);
        userModel.setCivicNumber(userData.civicNumber);
        userModel.setCountry(userData.country);
        userModel.setCountryCode(userData.countryCode);
        userModel.setFiscalCode(userData.fiscalCode);
        userModel.setProvince(userData.province);
        userModel.setCity(userData.city);
    }

    public void updateFrom(UserResponse.UserData userData) {
        updateData(userData, this);
    }

    public List<ContactModel> getContacts() {
        return getMany(ContactModel.class, "User");
    }

    public List<ContactModel> getGuardianAngelContacts() {
        return new Select().from(ContactModel.class).where("type=?", ContactType.USER_CELL_SOS.name()).execute();
    }

    public List<TermsModel> getTermsAcepted() {
        return getMany(TermsModel.class, "User");
    }

    public TermsModel getTermAcepted(String str) {
        return (TermsModel) new Select().from(TermsModel.class).where("TermType=?", str).and("User=?", getId()).executeSingle();
    }

    @Deprecated
    public ContactModel getMainContact() {
        List listExecute = new Select().from(ContactModel.class).where(Cache.getTableName(ContactModel.class) + Version.SEPARATOR + "User=?", getId()).orderBy(ContactModel.COLUMN_PRIORITY).execute();
        if (listExecute.isEmpty()) {
            return null;
        }
        return (ContactModel) listExecute.get(0);
    }

    public List<UserScheduleModel> getSchedules() {
        return getMany(UserScheduleModel.class, "User");
    }

    public List<ContactModel> getFamilyContactsForEmergency() {
        return new Select().from(ContactModel.class).where(Cache.getTableName(ContactModel.class) + Version.SEPARATOR + "User=?", getId()).and("type = ? ", ContactType.USER_CELL_ALT_SOS.toString()).execute();
    }

    public ContactModel getUserCellPhoneContact() {
        Long id;
        String tableName = Cache.getTableName(ContactModel.class);
        if (tableName == null || (id = getId()) == null) {
            return null;
        }
        return (ContactModel) new Select().from(ContactModel.class).where(tableName + Version.SEPARATOR + "User=?", id).and("type = ? ", ContactType.USER_CELLPHONE.toString()).orderBy(ContactModel.COLUMN_PRIORITY).executeSingle();
    }

    public String formatName() {
        return (Utils.trimToEmpty(this.firstName) + " " + Utils.trimToEmpty(this.lastName)).trim();
    }

    public void addSchedule(UserScheduleModel userScheduleModel) throws DatabaseIOException {
        userScheduleModel.setUser(this);
        Utils.safeModelSave(userScheduleModel, Cache.getContext());
    }

    public int getSchedulesCount() {
        return new Select().from(UserScheduleModel.class).where(Cache.getTableName(UserScheduleModel.class) + Version.SEPARATOR + "User=?", getId()).count();
    }

    public boolean hasPhoneNumberValidated() {
        return !Utils.isEmpty(getPhoneNumberValidated());
    }

    public String getPhoneNumberValidated() {
        ContactModel userCellPhoneContact = getUserCellPhoneContact();
        if (userCellPhoneContact == null) {
            return null;
        }
        return userCellPhoneContact.getPhoneNumber();
    }

    public List<ContactModel> getSosLightContacts() {
        Long id;
        String tableName = Cache.getTableName(ContactModel.class);
        if (tableName == null || (id = getId()) == null) {
            return null;
        }
        return new Select().from(ContactModel.class).where(tableName + Version.SEPARATOR + "User=?", id).and("type = ? ", ContactType.USER_CELL_SOS.toString()).orderBy(ContactModel.COLUMN_PRIORITY).limit(2).execute();
    }
}
