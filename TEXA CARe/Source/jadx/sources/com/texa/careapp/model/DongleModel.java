package com.texa.careapp.model;

import android.util.Log;
import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.google.gson.Gson;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.Version;
import com.texa.carelib.core.utils.VersionFormatter;
import com.texa.securepreferences.SecurePreferences;
import io.reactivex.Observable;
import io.reactivex.functions.BiFunction;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = "Dongle")
public class DongleModel extends Model {
    public static final String COLUMN_HWID = "hwid";
    public static final String COLUMN_LAST_CONNECTION = "LastConnection";
    public static final String COLUMN_MAC_ADDRESS = "macAddress";
    public static final String COLUMN_SELECTED_DONGLE = "SelectDongle";
    public static final String COLUMN_VEHICLE = "Vehicle";
    public static final String TABLE_DONGLE = "Dongle";
    private static final String TAG = "DongleModel";
    private static DateFormat sSqlDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);

    @Column
    @Deprecated
    private String firmwareVersion;

    @Column(unique = true)
    private String hwid;

    @Column
    private BigInteger interpreterVersion;

    @Column(name = COLUMN_LAST_CONNECTION)
    private Date lastConnection;

    @Column
    private Long lastParametersUpdate;
    private boolean mDataModelLocked;

    @Column
    private String macAddress;

    @Column
    private FirmwareVersion mainAppVersion;

    @Column
    private FirmwareVersion mainAppVersionUpdate;

    @Column
    @Deprecated
    protected String password;

    @Column
    private FirmwareVersion serviceAppVersion;

    @Column
    private FirmwareVersion serviceAppVersionUpdate;

    @Column
    private Integer status;

    @Column
    private String uid;

    @Column
    private String vinCode;
    private Gson mGson = Utils.buildGsonInstance();

    @Column(name = COLUMN_SELECTED_DONGLE)
    private boolean selectedDongle = false;

    @Override // com.activeandroid.Model
    public String toString() {
        return "DongleModel(firmwareVersion=" + getFirmwareVersion() + ", hwid=" + getHwid() + ", uid=" + getUid() + ", macAddress=" + getMacAddress() + ", mainAppVersion=" + getMainAppVersion() + ", serviceAppVersion=" + getServiceAppVersion() + ", mainAppVersionUpdate=" + getMainAppVersionUpdate() + ", serviceAppVersionUpdate=" + getServiceAppVersionUpdate() + ", status=" + getStatus() + ", interpreterVersion=" + getInterpreterVersion() + ", vinCode=" + getVinCode() + ", lastParametersUpdate=" + getLastParametersUpdate() + ", lastConnection=" + getLastConnection() + ", selectedDongle=" + isSelectedDongle() + ")";
    }

    public Gson getMGson() {
        return this.mGson;
    }

    @Deprecated
    public String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    @Deprecated
    public void setFirmwareVersion(String str) {
        this.firmwareVersion = str;
    }

    public String getHwid() {
        return this.hwid;
    }

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public String getMacAddress() {
        return this.macAddress;
    }

    public void setMacAddress(String str) {
        this.macAddress = str;
    }

    public FirmwareVersion getMainAppVersion() {
        return this.mainAppVersion;
    }

    public void setMainAppVersion(FirmwareVersion firmwareVersion) {
        this.mainAppVersion = firmwareVersion;
    }

    public FirmwareVersion getServiceAppVersion() {
        return this.serviceAppVersion;
    }

    public void setServiceAppVersion(FirmwareVersion firmwareVersion) {
        this.serviceAppVersion = firmwareVersion;
    }

    public FirmwareVersion getMainAppVersionUpdate() {
        return this.mainAppVersionUpdate;
    }

    public void setMainAppVersionUpdate(FirmwareVersion firmwareVersion) {
        this.mainAppVersionUpdate = firmwareVersion;
    }

    public FirmwareVersion getServiceAppVersionUpdate() {
        return this.serviceAppVersionUpdate;
    }

    public void setServiceAppVersionUpdate(FirmwareVersion firmwareVersion) {
        this.serviceAppVersionUpdate = firmwareVersion;
    }

    public Integer getStatus() {
        return this.status;
    }

    public void setStatus(Integer num) {
        this.status = num;
    }

    public BigInteger getInterpreterVersion() {
        return this.interpreterVersion;
    }

    public void setInterpreterVersion(BigInteger bigInteger) {
        this.interpreterVersion = bigInteger;
    }

    public String getVinCode() {
        return this.vinCode;
    }

    public void setVinCode(String str) {
        this.vinCode = str;
    }

    public Long getLastParametersUpdate() {
        return this.lastParametersUpdate;
    }

    public void setLastParametersUpdate(Long l) {
        this.lastParametersUpdate = l;
    }

    public Date getLastConnection() {
        return this.lastConnection;
    }

    public void setLastConnection(Date date) {
        this.lastConnection = date;
    }

    public boolean isSelectedDongle() {
        return this.selectedDongle;
    }

    public void setSelectedDongle(boolean z) {
        this.selectedDongle = z;
    }

    public void setDongleLikeSelected() {
        setSelectedDongle(true);
        for (DongleModel dongleModel : new Select().from(DongleModel.class).where("hwid != ? ", this.hwid).execute()) {
            dongleModel.setSelectedDongle(false);
            dongleModel.save();
        }
    }

    public static DongleModel from(DeviceInfo deviceInfo) {
        DongleModel dongleModel = new DongleModel();
        dongleModel.setHwId(deviceInfo.getName());
        dongleModel.setUid(UUID.randomUUID().toString());
        dongleModel.setMacAddress(deviceInfo.getAddress());
        dongleModel.setLastConnection(new Date());
        dongleModel.setDongleLikeSelected();
        return dongleModel;
    }

    public static DongleModel fromSerialNumber(String str) {
        return (DongleModel) new Select().from(DongleModel.class).where("hwid=?", str).executeSingle();
    }

    public static DongleModel fromMacAddress(String str) {
        return (DongleModel) new Select().from(DongleModel.class).where("macAddress=?", str).executeSingle();
    }

    private static String sqlDate(String str) {
        return "strftime('%Y-%m-%d', " + str + " / 1000, 'unixepoch')";
    }

    private static String sqlDate(Date date) {
        return sSqlDateFormat.format(date);
    }

    public void updateFrom(Accessory accessory) {
        BigInteger interpreterVersion = accessory.getInterpreterVersion();
        if (interpreterVersion != null) {
            setInterpreterVersion(interpreterVersion);
        }
        setStatus(Integer.valueOf(accessory.getStatus()));
        String serialNumber = accessory.getSerialNumber();
        if (serialNumber != null) {
            setHwId(serialNumber);
        }
        this.mainAppVersion = accessory.getMainAPPVersion();
        this.serviceAppVersion = accessory.getServiceAPPVersion();
        try {
            Utils.safeModelSave(this, Cache.getContext());
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save dongle model in database.", new Object[0]);
        }
    }

    public void updateFrom(VehicleInfo vehicleInfo) {
        String vehicleID = vehicleInfo.getVehicleID();
        if (vehicleID != null) {
            setVinCode(vehicleID);
        }
        try {
            Utils.safeModelSave(this, Cache.getContext());
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save dongle model in database.", new Object[0]);
        }
    }

    public VehicleModel getCurrentVehicle() {
        validateHwId(this.hwid);
        VehicleModel vehicleModel = (VehicleModel) new Select().from(VehicleModel.class).where("hwid =? ", this.hwid).and("isCurrentVehicle =?", true).executeSingle();
        if (vehicleModel == null) {
            Timber.w("dongle.getCurrentVehicle() is null!", new Object[0]);
        }
        return vehicleModel;
    }

    public VehicleModel getSelectedVehicle() {
        VehicleModel vehicleModel = (VehicleModel) new Select().from(VehicleModel.class).where("isSelectedVehicle =?", true).executeSingle();
        if (vehicleModel == null) {
            Timber.w("dongle.getSelectedVehicle() is null!", new Object[0]);
        }
        return vehicleModel;
    }

    public VehicleModel getVehicleByHwId() {
        validateHwId(this.hwid);
        VehicleModel vehicleModel = (VehicleModel) new Select().from(VehicleModel.class).where("hwid =? ", this.hwid).executeSingle();
        if (vehicleModel == null) {
            Timber.w("dongle.getCurrentVehicle() is null!", new Object[0]);
        }
        return vehicleModel;
    }

    public Observable<DongleModel> observerFirmwareVersion(ICareObserver iCareObserver) {
        Observable<FirmwareVersion> observableObserveAccessoryMainAppVersion = iCareObserver.observeAccessoryMainAppVersion();
        FirmwareVersion firmwareVersion = this.mainAppVersion;
        if (firmwareVersion != null) {
            observableObserveAccessoryMainAppVersion.startWith(firmwareVersion);
        }
        observableObserveAccessoryMainAppVersion.compose(Utils.applyNotNullFilter());
        Observable<FirmwareVersion> observableObserveAccessoryServiceAppVersion = iCareObserver.observeAccessoryServiceAppVersion();
        FirmwareVersion firmwareVersion2 = this.serviceAppVersion;
        if (firmwareVersion2 != null) {
            observableObserveAccessoryServiceAppVersion.startWith(firmwareVersion2);
        }
        observableObserveAccessoryServiceAppVersion.compose(Utils.applyNotNullFilter());
        return Observable.combineLatest(observableObserveAccessoryMainAppVersion, observableObserveAccessoryServiceAppVersion, new BiFunction() { // from class: com.texa.careapp.model.DongleModel$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return this.f$0.m619xb5845272((FirmwareVersion) obj, (FirmwareVersion) obj2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observerFirmwareVersion$0$com-texa-careapp-model-DongleModel, reason: not valid java name */
    public /* synthetic */ DongleModel m619xb5845272(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2) throws Exception {
        setMainAppVersion(firmwareVersion);
        setServiceAppVersion(firmwareVersion2);
        try {
            save();
            return this;
        } catch (Exception e) {
            Timber.e(e, "Could not save dongle model in database.", new Object[0]);
            throw new RuntimeException(e);
        }
    }

    public String getMainAppVersionFormatted() {
        try {
            return VersionFormatter.formatLong(this.mainAppVersion);
        } catch (Exception e) {
            Log.d(TAG, "getMainAppVersionFormatted exception", e);
            return "";
        }
    }

    public String getSerivceAppVersionFormatted() {
        try {
            return VersionFormatter.formatLong(this.serviceAppVersion);
        } catch (Exception e) {
            Log.d(TAG, "getServiceAppVersionFormatted exception", e);
            return "";
        }
    }

    public boolean isUpdateAvailableForMainApp() {
        return isUpdatable(this.mainAppVersion, this.mainAppVersionUpdate);
    }

    public boolean isUpdateAvailableForServiceApp() {
        return isUpdatable(this.serviceAppVersion, this.serviceAppVersionUpdate);
    }

    private boolean isUpdatable(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2) {
        return (firmwareVersion == null || firmwareVersion2 == null || firmwareVersion.equals(firmwareVersion2)) ? false : true;
    }

    public void lockDataModel() {
        this.mDataModelLocked = true;
    }

    public boolean isDataModelLocked() {
        return this.mDataModelLocked;
    }

    public void unlockDataModel() {
        this.mDataModelLocked = false;
    }

    public boolean isFirmwareUpdateAvailable() {
        return isUpdateAvailableForMainApp() || isUpdateAvailableForServiceApp();
    }

    public void setHwId(String str) {
        validateHwId(str);
        this.hwid = str;
    }

    protected void validateHwId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hwid cannot be null!");
        }
        if (str.trim().length() == 0) {
            throw new IllegalArgumentException("hwid cannot be empty!");
        }
    }

    public void setPin(String str, ArmadilloSharedPreferences armadilloSharedPreferences) {
        armadilloSharedPreferences.edit().putString(getPinPrefKey(), str).commit();
    }

    private String getPinPrefKey() {
        if (this.uid == null) {
            throw new IllegalStateException("uid cannot be null!");
        }
        return "pin-" + this.uid;
    }

    public String getPin(SecurePreferences securePreferences, ArmadilloSharedPreferences armadilloSharedPreferences) {
        String str;
        String pinPrefKey = getPinPrefKey();
        String string = securePreferences.getString(pinPrefKey, null);
        String string2 = armadilloSharedPreferences.getString(pinPrefKey, null);
        if (string2 == null && string != null) {
            setPin(string, armadilloSharedPreferences);
            securePreferences.edit().putString(pinPrefKey, null).commit();
            return armadilloSharedPreferences.getString(pinPrefKey, null);
        }
        if (string2 != null || (str = this.password) == null) {
            return string2;
        }
        setPin(str, armadilloSharedPreferences);
        this.password = null;
        try {
            Utils.safeModelSave(this, Cache.getContext());
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save dongle model in database.", new Object[0]);
        }
        return securePreferences.getString(pinPrefKey, null);
    }

    public List<ServiceDataModel> getServices() {
        return getMany(ServiceDataModel.class, ServiceDataModel.COLUMN_DONGLE);
    }

    public List<ServiceDataModel> getServices(String str) {
        return new Select().from(ServiceDataModel.class).where(Cache.getTableName(ServiceDataModel.class) + Version.SEPARATOR + ServiceDataModel.COLUMN_DONGLE + "=?", getId()).orderBy(Cache.getTableName(ServiceDataModel.class) + Version.SEPARATOR + str).execute();
    }

    public ServiceDataModel getService(ServiceDataModel.DongleServiceId dongleServiceId) {
        return (ServiceDataModel) new Select().from(ServiceDataModel.class).where(Cache.getTableName(ServiceDataModel.class) + Version.SEPARATOR + ServiceDataModel.COLUMN_DONGLE + "=?", getId()).and(Cache.getTableName(ServiceDataModel.class) + Version.SEPARATOR + ServiceDataModel.COLUMN_SERVICE_TYPE + "=?", dongleServiceId).executeSingle();
    }

    public void deleteAllServiceData() {
        new Delete().from(ServiceDataModel.class).where(Cache.getTableName(ServiceDataModel.class) + Version.SEPARATOR + ServiceDataModel.COLUMN_DONGLE + "=?", getId()).execute();
    }

    public ServiceDataModel getAvailableServiceForActivation() {
        String tableName = Cache.getTableName(ServiceDataModel.class);
        return (ServiceDataModel) new Select().from(ServiceDataModel.class).where(tableName + Version.SEPARATOR + "status=?", ServiceDataModel.DongleServiceStatus.AVAILABLE).and(tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_SERVICE_TYPE + "=?", ServiceDataModel.DongleServiceId.SOS).executeSingle();
    }

    public ServiceDataModel getSOSService(ServiceDataModel.DongleServiceStatus dongleServiceStatus, Date date) {
        String tableName = Cache.getTableName(ServiceDataModel.class);
        String str = tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_ACTIVATION;
        String str2 = tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_EXPIRATION;
        String strSqlDate = sqlDate(date);
        From fromWhere = new Select().from(ServiceDataModel.class).where("(" + tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_DONGLE + "=?", getId());
        StringBuilder sb = new StringBuilder();
        sb.append(tableName);
        sb.append(Version.SEPARATOR);
        sb.append(ServiceDataModel.COLUMN_DONGLE);
        sb.append(" IS NULL)");
        From fromAnd = fromWhere.or(sb.toString()).and("(" + tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_SERVICE_TYPE + "=?", ServiceDataModel.DongleServiceId.SOS);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(tableName);
        sb2.append(Version.SEPARATOR);
        sb2.append(ServiceDataModel.COLUMN_SERVICE_TYPE);
        sb2.append(" = ? )");
        From fromAnd2 = fromAnd.or(sb2.toString(), ServiceDataModel.DongleServiceId.SOS_LIGHT).and(tableName + Version.SEPARATOR + "status=?", dongleServiceStatus);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sqlDate(str2));
        sb3.append(" > ? ");
        return (ServiceDataModel) fromAnd2.and(sb3.toString(), strSqlDate).and(sqlDate(str) + " <= ? ", strSqlDate).executeSingle();
    }

    public ServiceDataModel getSOSService(ServiceDataModel.DongleServiceStatus dongleServiceStatus) {
        String tableName = Cache.getTableName(ServiceDataModel.class);
        From fromWhere = new Select().from(ServiceDataModel.class).where("(" + tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_DONGLE + "=?", getId());
        StringBuilder sb = new StringBuilder();
        sb.append(tableName);
        sb.append(Version.SEPARATOR);
        sb.append(ServiceDataModel.COLUMN_DONGLE);
        sb.append(" IS NULL)");
        From fromAnd = fromWhere.or(sb.toString()).and("(" + tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_SERVICE_TYPE + "=?", ServiceDataModel.DongleServiceId.SOS);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(tableName);
        sb2.append(Version.SEPARATOR);
        sb2.append(ServiceDataModel.COLUMN_SERVICE_TYPE);
        sb2.append(" = ? )");
        return (ServiceDataModel) fromAnd.or(sb2.toString(), ServiceDataModel.DongleServiceId.SOS_LIGHT).and(tableName + Version.SEPARATOR + "status=?", dongleServiceStatus).executeSingle();
    }

    public List<ServiceDataModel> getServiceList(ServiceDataModel.DongleServiceId dongleServiceId, ServiceDataModel.DongleServiceStatus dongleServiceStatus, Date date) {
        String tableName = Cache.getTableName(ServiceDataModel.class);
        String str = tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_ACTIVATION;
        String str2 = tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_EXPIRATION;
        String strSqlDate = sqlDate(date);
        From fromAnd = new Select().from(ServiceDataModel.class).where(tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_DONGLE + "=?", getId()).and(tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_SERVICE_TYPE + "=?", dongleServiceId).and(tableName + Version.SEPARATOR + "status=?", dongleServiceStatus);
        StringBuilder sb = new StringBuilder();
        sb.append(sqlDate(str2));
        sb.append(" > ? ");
        return fromAnd.and(sb.toString(), strSqlDate).and(sqlDate(str) + " <= ? ", strSqlDate).orderBy(str).execute();
    }

    public List<ServiceDataModel> getServicesActiveButNotAccepted() {
        String tableName = Cache.getTableName(ServiceDataModel.class);
        return new Select().from(ServiceDataModel.class).where(tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_DONGLE + "=?", getId()).and(tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_SERVICE_TYPE + "=?", ServiceDataModel.DongleServiceId.SOS).and(tableName + Version.SEPARATOR + "status=?", ServiceDataModel.DongleServiceStatus.ACTIVE).and(tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_TERMS_ACCEPTED + "=?", false).orderBy(tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_ACTIVATION + " ASC").execute();
    }

    public Date getLastExpirationDateFor(ServiceDataModel.DongleServiceId dongleServiceId, Date date) {
        String tableName = Cache.getTableName(ServiceDataModel.class);
        String str = tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_EXPIRATION;
        String strSqlDate = sqlDate(date);
        From fromAnd = new Select().from(ServiceDataModel.class).where(tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_DONGLE + "=?", getId()).and(tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_SERVICE_TYPE + "=?", dongleServiceId).and(tableName + Version.SEPARATOR + "status IN (?,?)", ServiceDataModel.DongleServiceStatus.ACTIVE, ServiceDataModel.DongleServiceStatus.INACTIVE).and(tableName + Version.SEPARATOR + ServiceDataModel.COLUMN_TERMS_ACCEPTED + " = ? ", 1);
        StringBuilder sb = new StringBuilder();
        sb.append(sqlDate(str));
        sb.append(" > ? ");
        ServiceDataModel serviceDataModel = (ServiceDataModel) fromAnd.and(sb.toString(), strSqlDate).orderBy(str + " DESC").executeSingle();
        if (serviceDataModel == null) {
            return null;
        }
        return serviceDataModel.getExpiration();
    }
}
