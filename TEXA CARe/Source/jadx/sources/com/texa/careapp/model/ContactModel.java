package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.google.firebase.messaging.Constants;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.Constants;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = ContactModel.TABLE_CONTACT)
public class ContactModel extends Model {
    public static final String COLUMN_PRIORITY = "priority";
    public static final String COLUMN_TYPE = "type";
    public static final String COLUMN_USER = "User";
    public static final String TABLE_CONTACT = "Contact";

    @SerializedName("value")
    @Column
    @Expose
    private String phoneNumber;
    private List<String> phoneNumbers;
    private String prefix;

    @Column(name = COLUMN_PRIORITY)
    @Expose
    private int priority;

    @SerializedName(Constants.ScionAnalytics.PARAM_LABEL)
    @Column
    @Expose
    private String title = "";

    @Column(name = "type")
    @Expose
    private String type;

    @SerializedName(Constants.WebAPI.FIELD_CONTACT_ID)
    @Column
    @Expose
    private String uid;

    @Column(name = "User", onDelete = Column.ForeignKeyAction.CASCADE)
    private UserModel user;

    @Column
    @Expose
    private boolean validated;

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public int getPriority() {
        return this.priority;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public boolean isValidated() {
        return this.validated;
    }

    public void setValidated(boolean z) {
        this.validated = z;
    }

    public List<String> getPhoneNumbers() {
        return this.phoneNumbers;
    }

    public void setPhoneNumbers(List<String> list) {
        this.phoneNumbers = list;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public UserModel getUser() {
        return this.user;
    }

    public void setUser(UserModel userModel) {
        this.user = userModel;
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "ContactModel{phoneNumber='" + this.phoneNumber + "', title='" + this.title + "', type='" + this.type + "', uid='" + this.uid + "', priority=" + this.priority + ", validated=" + this.validated + ", user=" + this.user + '}';
    }

    public static void deleteSOSContact(String str) {
        new Delete().from(ContactModel.class).where("uid = ?", str).execute();
    }
}
