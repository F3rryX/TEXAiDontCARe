package com.texa.careapp.model;

import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.core.utils.Version;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = ServiceDataModel.TABLE_SERVICE_DATA)
public class ServiceDataModel extends Model {
    public static final String COLUMN_ACTIVATION = "activation";
    public static final String COLUMN_ALLOWANCE_DATE = "allowance";
    public static final String COLUMN_DONGLE = "dongle";
    public static final String COLUMN_EXPIRATION = "expiration";
    public static final String COLUMN_PURCHASE_GROUP = "purchaseGroup";
    public static final String COLUMN_SERVICE_STATUS = "status";
    public static final String COLUMN_SERVICE_TYPE = "service_type";
    public static final String COLUMN_TERMS_ACCEPTED = "termsAccepted";
    public static final String COLUMN_USER = "user";
    private static final String SKU_MECHANIC = "scsub_sos";
    private static final String SKU_MECHANIC_TRIAL = "scsub_sos_trial";
    public static final String TABLE_SERVICE_DATA = "ServicesData";

    @SerializedName("start_date")
    @Column(name = COLUMN_ACTIVATION)
    @Expose
    private Date activation;

    @SerializedName("allowance_date")
    @Column(name = COLUMN_ALLOWANCE_DATE)
    @Expose
    private Date allowance;

    @SerializedName("contract_url")
    @Column
    @Expose
    private String contractUrl;

    @Column(name = COLUMN_DONGLE, onDelete = Column.ForeignKeyAction.CASCADE)
    private DongleModel dongle;

    @SerializedName("expiration_date")
    @Column(name = COLUMN_EXPIRATION)
    @Expose
    private Date expiration;

    @SerializedName("hwid")
    @Column
    @Expose
    private String hwid;

    @SerializedName("type")
    @Column(name = COLUMN_SERVICE_TYPE)
    @Expose
    private DongleServiceId idType;

    @SerializedName("last_renew")
    @Column
    @Expose
    private Date lastRenew;

    @Column
    @Expose
    private String packageName;

    @SerializedName("purchase_group")
    @Column(name = COLUMN_PURCHASE_GROUP)
    @Expose
    private int puchaseGroup;

    @SerializedName("sku")
    @Column
    @Expose
    private String sku;

    @SerializedName("status")
    @Column(name = "status")
    @Expose
    private DongleServiceStatus status;

    @SerializedName("terms_accepted")
    @Column(name = COLUMN_TERMS_ACCEPTED)
    @Expose
    private boolean termsAccepted;

    @SerializedName("trial")
    @Column
    @Expose
    private boolean trial;

    @SerializedName("id")
    @Column(notNull = true, onNullConflict = Column.ConflictAction.ABORT, onUniqueConflict = Column.ConflictAction.REPLACE, unique = true)
    @Expose
    private String uid;

    @Column(name = "user", onDelete = Column.ForeignKeyAction.CASCADE)
    private UserModel user;

    @Column
    @Expose
    private String userId;

    public enum DongleServiceId {
        SOS,
        SOS_LIGHT,
        OTHER
    }

    public enum DongleServiceStatus {
        AVAILABLE,
        ACTIVE,
        INACTIVE,
        PENDING
    }

    @Override // com.activeandroid.Model
    public String toString() {
        return "ServiceDataModel(hwid=" + getHwid() + ", uid=" + getUid() + ", idType=" + getIdType() + ", sku=" + getSku() + ", status=" + getStatus() + ", activation=" + getActivation() + ", expiration=" + getExpiration() + ", allowance=" + getAllowance() + ", termsAccepted=" + isTermsAccepted() + ", lastRenew=" + getLastRenew() + ", contractUrl=" + getContractUrl() + ", puchaseGroup=" + getPuchaseGroup() + ", trial=" + isTrial() + ", userId=" + getUserId() + ", user=" + getUser() + ", packageName=" + getPackageName() + ")";
    }

    public String getHwid() {
        return this.hwid;
    }

    public void setHwid(String str) {
        this.hwid = str;
    }

    public DongleModel getDongle() {
        return this.dongle;
    }

    public void setDongle(DongleModel dongleModel) {
        this.dongle = dongleModel;
    }

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public DongleServiceId getIdType() {
        return this.idType;
    }

    public void setIdType(DongleServiceId dongleServiceId) {
        this.idType = dongleServiceId;
    }

    public String getSku() {
        return this.sku;
    }

    public void setSku(String str) {
        this.sku = str;
    }

    public DongleServiceStatus getStatus() {
        return this.status;
    }

    public void setStatus(DongleServiceStatus dongleServiceStatus) {
        this.status = dongleServiceStatus;
    }

    public Date getActivation() {
        return this.activation;
    }

    public void setActivation(Date date) {
        this.activation = date;
    }

    public Date getExpiration() {
        return this.expiration;
    }

    public void setExpiration(Date date) {
        this.expiration = date;
    }

    public Date getAllowance() {
        return this.allowance;
    }

    public void setAllowance(Date date) {
        this.allowance = date;
    }

    public boolean isTermsAccepted() {
        return this.termsAccepted;
    }

    public void setTermsAccepted(boolean z) {
        this.termsAccepted = z;
    }

    public Date getLastRenew() {
        return this.lastRenew;
    }

    public void setLastRenew(Date date) {
        this.lastRenew = date;
    }

    public String getContractUrl() {
        return this.contractUrl;
    }

    public void setContractUrl(String str) {
        this.contractUrl = str;
    }

    public int getPuchaseGroup() {
        return this.puchaseGroup;
    }

    public void setPuchaseGroup(int i) {
        this.puchaseGroup = i;
    }

    public boolean isTrial() {
        return this.trial;
    }

    public void setTrial(boolean z) {
        this.trial = z;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public UserModel getUser() {
        return this.user;
    }

    public void setUser(UserModel userModel) {
        this.user = userModel;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public static void deleteServiceDataFromUid(String str) {
        if (Utils.isEmpty(str)) {
            return;
        }
        new Delete().from(ServiceDataModel.class).where("uid = ? ", str).execute();
    }

    public static ServiceDataModel fromDb(String str) {
        return (ServiceDataModel) new Select().from(ServiceDataModel.class).where("uid = ? ", str).executeSingle();
    }

    public Date getLastExpirationDate() {
        String tableName = Cache.getTableName(ServiceDataModel.class);
        return ((ServiceDataModel) new Select().from(ServiceDataModel.class).where(tableName + ".hwid=?", getHwid()).and(tableName + Version.SEPARATOR + COLUMN_SERVICE_TYPE + "=?", getIdType()).and(tableName + Version.SEPARATOR + COLUMN_PURCHASE_GROUP + "=?", Integer.valueOf(getPuchaseGroup())).orderBy("expiration DESC").executeSingle()).getExpiration();
    }

    public Date getLastExpirationForFutureServices() {
        String tableName = Cache.getTableName(ServiceDataModel.class);
        ServiceDataModel serviceDataModel = (ServiceDataModel) new Select().from(ServiceDataModel.class).where(tableName + ".hwid=?", getHwid()).and(tableName + Version.SEPARATOR + COLUMN_SERVICE_TYPE + "=?", getIdType()).and(tableName + Version.SEPARATOR + COLUMN_PURCHASE_GROUP + "!=?", Integer.valueOf(getPuchaseGroup())).and(tableName + Version.SEPARATOR + "status=?", DongleServiceStatus.INACTIVE).orderBy("expiration DESC").executeSingle();
        if (serviceDataModel == null) {
            return null;
        }
        return serviceDataModel.getExpiration();
    }

    public boolean isSosType() {
        return getIdType() == DongleServiceId.SOS || getIdType() == DongleServiceId.SOS_LIGHT;
    }

    public boolean isActive() {
        return this.status == DongleServiceStatus.ACTIVE || this.status == DongleServiceStatus.PENDING;
    }

    public boolean isActiveAndAccepted() {
        return this.status == DongleServiceStatus.ACTIVE && isTermsAccepted();
    }

    public boolean isMechanicPurchase() {
        return getSku().equalsIgnoreCase(SKU_MECHANIC_TRIAL) || getSku().equalsIgnoreCase(SKU_MECHANIC);
    }

    @Override // com.activeandroid.Model
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ServiceDataModel) {
            return getUid().equals(((ServiceDataModel) obj).getUid());
        }
        return false;
    }

    @Override // com.activeandroid.Model
    public int hashCode() {
        return (super.hashCode() * 31) + this.uid.hashCode();
    }
}
