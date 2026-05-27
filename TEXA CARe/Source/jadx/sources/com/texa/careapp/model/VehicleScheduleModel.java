package com.texa.careapp.model;

import android.util.Log;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.texa.careapp.Constants;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = VehicleScheduleModel.TABLE_VEHICLE_SCHEDULE)
public class VehicleScheduleModel extends Model implements IScheduleModel {
    public static final String COLUMN_TYPE = "type";
    public static final String COLUMN_VEHICLE = "Vehicle";
    public static final String TABLE_VEHICLE_SCHEDULE = "VehicleSchedules";
    private static final String TAG = "VehicleScheduleModel";

    @Column
    private boolean archived;

    @Column
    private Date expireDate;

    @Column
    private Integer expireOdo;

    @Column
    private Date startDate;

    @Column
    private Integer startOdo;

    @Column(name = "type")
    private ScheduleType type;

    @Column(unique = true)
    private String uid;

    @Column(name = "Vehicle", notNull = true, onDelete = Column.ForeignKeyAction.CASCADE)
    private VehicleModel vehicle;
    private boolean deletable = false;
    private boolean refreshable = false;

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public ScheduleType getType() {
        return this.type;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setType(ScheduleType scheduleType) {
        this.type = scheduleType;
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public void setStartDate(Date date) {
        this.startDate = date;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public Date getExpireDate() {
        return this.expireDate;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setExpireDate(Date date) {
        this.expireDate = date;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public Integer getStartOdo() {
        return this.startOdo;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setStartOdo(Integer num) {
        this.startOdo = num;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public Integer getExpireOdo() {
        return this.expireOdo;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setExpireOdo(Integer num) {
        this.expireOdo = num;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isArchived() {
        return this.archived;
    }

    public void setArchived(boolean z) {
        this.archived = z;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isDeletable() {
        return this.deletable;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setDeletable(boolean z) {
        this.deletable = z;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isRefreshable() {
        return this.refreshable;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void setRefreshable(boolean z) {
        this.refreshable = z;
    }

    public VehicleModel getVehicle() {
        return this.vehicle;
    }

    public void setVehicle(VehicleModel vehicleModel) {
        this.vehicle = vehicleModel;
    }

    @Deprecated
    public static List<VehicleScheduleModel> from(VehicleModel vehicleModel, VehicleResponse vehicleResponse) {
        ArrayList arrayList = new ArrayList();
        if (vehicleResponse != null && vehicleResponse.vehicle != null && vehicleResponse.vehicle.deadlines != null) {
            Iterator<VehicleResponse.Deadline> it = vehicleResponse.vehicle.deadlines.iterator();
            while (it.hasNext()) {
                arrayList.add(from(vehicleModel, it.next()));
            }
        }
        return arrayList;
    }

    private static VehicleScheduleModel from(VehicleModel vehicleModel, VehicleResponse.Deadline deadline) {
        VehicleScheduleModel vehicleScheduleModel = new VehicleScheduleModel();
        vehicleScheduleModel.setStartDate(deadline.startDate);
        vehicleScheduleModel.setExpireDate(deadline.expireDate);
        vehicleScheduleModel.setStartOdo(deadline.startOdo);
        vehicleScheduleModel.setExpireOdo(deadline.expireOdo);
        vehicleScheduleModel.setType(ScheduleType.lookupByValue(deadline.type));
        vehicleScheduleModel.setVehicle(vehicleModel);
        return vehicleScheduleModel;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public void archive() {
        this.archived = true;
    }

    public int compareByDate(Date date) {
        if (getExpireDate() == null) {
            return 1;
        }
        if (date != null && this.expireDate.getTime() >= date.getTime()) {
            return this.expireDate.getTime() == date.getTime() ? 0 : 1;
        }
        return -1;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public long daysToExpire() {
        return Utils.daysToExpire(this.expireDate);
    }

    public Date getLimitDate(int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, i);
        return calendar.getTime();
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public int getExpiringStatusByDays(int i) {
        return compareByDate(getLimitDate(i)) >= 0 ? compareByDate(getLimitDate(Constants.LIMIT_DAYS_FOR_FAR_SCHEDULE)) >= 0 ? 2 : 1 : compareByDate(new Date()) == -1 ? -1 : 0;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public int getExpiringStatus() {
        if (getExpireOdo() == null && getExpireDate() == null) {
            return 2;
        }
        if (getExpireDate() != null && getExpireOdo() == null) {
            return getExpiringStatusByDays(30);
        }
        if (getExpireOdo() != null && getExpireDate() == null) {
            return getExpiringStatusByKm(1500);
        }
        return Math.min(getExpiringStatusByDays(30), getExpiringStatusByKm(1500));
    }

    public int getExpiringStatusByKm(int i) {
        if (Utils.nonNegativeSubtraction(getExpireOdo().intValue(), getVehicle().getOdometer().intValue()) <= 0) {
            return -1;
        }
        if (Utils.nonNegativeSubtraction(getExpireOdo().intValue(), getVehicle().getOdometer().intValue()) < i) {
            return 0;
        }
        return Utils.nonNegativeSubtraction(getExpireOdo().intValue(), getVehicle().getOdometer().intValue()) < Constants.LIMIT_KM_FOR_FAR_SCHEDULE ? 1 : 2;
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public String getDesciption() {
        VehicleModel vehicle = getVehicle();
        return vehicle == null ? "" : vehicle.getPlate();
    }

    @Override // com.texa.careapp.model.IScheduleModel
    public boolean isExpired() {
        return getExpiringStatus() == -1;
    }

    public Integer getKmToExpire(int i) {
        int iIntValue = this.expireOdo.intValue() - i;
        if (iIntValue < 0) {
            return 0;
        }
        return Integer.valueOf(iIntValue);
    }

    public Integer getKmToExpirePercent(int i) {
        Integer odometerToExpirePercent = Utils.getOdometerToExpirePercent(Integer.valueOf(i), this.startOdo, this.expireOdo);
        if (odometerToExpirePercent != null && odometerToExpirePercent.intValue() < 0) {
            Log.w(TAG, "odometerToExpirePercent invalid value (will return 0 instead): " + odometerToExpirePercent);
            return 0;
        }
        if (odometerToExpirePercent != null && (odometerToExpirePercent.intValue() > 100 || odometerToExpirePercent.intValue() < 0)) {
            Timber.w("getOdometerToExpirePercent is invalid: actualOdometer= %s,startOdo= %s,expireOdo= %s,odometerToExpirePercent= %s", Integer.valueOf(i), this.startOdo, this.expireOdo, odometerToExpirePercent);
        }
        return odometerToExpirePercent;
    }

    public Integer getDateToExpirePercent() {
        Integer dateToExpirePercent = Utils.getDateToExpirePercent(this.startDate, this.expireDate);
        if (dateToExpirePercent == null || dateToExpirePercent.intValue() >= 0) {
            return dateToExpirePercent;
        }
        Log.w(TAG, "dateToExpirePercent invalid value (will retrun 0 instead): " + dateToExpirePercent);
        return 0;
    }
}
