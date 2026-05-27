package com.texa.careapp.model;

import androidx.core.app.NotificationCompat;
import com.activeandroid.Cache;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.google.gson.annotations.Expose;
import com.texa.care.R;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.fcm.FcmConstants;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = ThresholdModel.TABLE_NAME)
public class ThresholdModel extends Model {
    public static final String COLUMN_SYNC_NEEDED = "sync_needed";
    public static final String COLUMN_TYPE = "type";
    public static final String COLUMN_VEHICLE = "vehicle";
    public static final String TABLE_NAME = "Thresholds";
    public static final HashMap<Type, Integer> TYPE_DESCRIPTION;
    public static final List<Type> TYPE_UNEDITABLE;

    @Column
    @Expose
    private Date date;

    @Column
    @Expose
    private Integer dateInterval;

    @Column
    @Expose
    private Integer insuranceId;

    @Column
    @Expose
    private Integer odometer;

    @Column(name = "sync_needed")
    private boolean syncNeeded = false;

    @Column(name = "type")
    @Expose
    private Type type;

    @Column(name = "vehicle", onDelete = Column.ForeignKeyAction.CASCADE)
    private VehicleModel vehicleModel;

    public Type getType() {
        return this.type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Date getDate() {
        return this.date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getOdometer() {
        return this.odometer;
    }

    public void setOdometer(Integer num) {
        this.odometer = num;
    }

    public Integer getDateInterval() {
        return this.dateInterval;
    }

    public void setDateInterval(Integer num) {
        this.dateInterval = num;
    }

    public Integer getInsuranceId() {
        return this.insuranceId;
    }

    public void setInsuranceId(Integer num) {
        this.insuranceId = num;
    }

    public VehicleModel getVehicleModel() {
        return this.vehicleModel;
    }

    public void setVehicleModel(VehicleModel vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public boolean isSyncNeeded() {
        return this.syncNeeded;
    }

    public void setSyncNeeded(boolean z) {
        this.syncNeeded = z;
    }

    public static void from(VehicleResponse.Threshold threshold) {
        ThresholdModel thresholdModel = new ThresholdModel();
        thresholdModel.setDate(threshold.date);
        thresholdModel.setOdometer(threshold.odometer);
    }

    public void markAsSynced() throws DatabaseIOException {
        this.syncNeeded = false;
        Utils.safeModelSave(this, Cache.getContext());
    }

    public void saveForSync() throws DatabaseIOException {
        this.syncNeeded = true;
        Utils.safeModelSave(this, Cache.getContext());
    }

    static {
        HashMap<Type, Integer> map = new HashMap<>();
        TYPE_DESCRIPTION = map;
        map.put(Type.INSPECTION, Integer.valueOf(R.string.threshold_label_inspection));
        map.put(Type.TYRES_FITTING, Integer.valueOf(R.string.threshold_label_tyres_fitting));
        map.put(Type.TYRES_SWAP, Integer.valueOf(R.string.threshold_label_tyres_swap));
        map.put(Type.INSURANCE_EXP, Integer.valueOf(R.string.threshold_label_insurance));
        map.put(Type.TAX_EXP, Integer.valueOf(R.string.threshold_label_tax));
        map.put(Type.INSURANCE_2_EXP, Integer.valueOf(R.string.threshold_label_insurance_2));
        map.put(Type.EXHAUST_EXP, Integer.valueOf(R.string.threshold_label_exhaust));
        map.put(Type.AC_SUBSCR_EXP, Integer.valueOf(R.string.threshold_label_ac_subscr));
        map.put(Type.PARK_SUBSCR_EXP, Integer.valueOf(R.string.threshold_label_park_subscr));
        map.put(Type.GARAGE_RENT_EXP, Integer.valueOf(R.string.threshold_label_garage_rent));
        map.put(Type.INS_PAYM_EXP, Integer.valueOf(R.string.threshold_label_ins_paym));
        map.put(Type.INS_2_PAYM_EXP, Integer.valueOf(R.string.threshold_label_ins_2_paym));
        map.put(Type.CAR_PAYM_EXP, Integer.valueOf(R.string.threshold_label_car_paym));
        map.put(Type.HWY_PASS_EXP, Integer.valueOf(R.string.threshold_label_hwy_pass));
        map.put(Type.ZTL_PASS_EXP, Integer.valueOf(R.string.threshold_label_ztl_pass));
        map.put(Type.LICENCE, Integer.valueOf(R.string.threshold_label_licence));
        ArrayList arrayList = new ArrayList();
        TYPE_UNEDITABLE = arrayList;
        arrayList.add(Type.SERVICE);
        arrayList.add(Type.GPL_EXP);
        arrayList.add(Type.METH_EXP);
        arrayList.add(Type.WARRANTY_EXP);
    }

    public enum Type {
        INSPECTION,
        SERVICE,
        TYRES_FITTING,
        TYRES_SWAP,
        INSURANCE_EXP,
        TAX_EXP,
        INSURANCE_2_EXP,
        GPL_EXP,
        METH_EXP,
        EXHAUST_EXP,
        AC_SUBSCR_EXP,
        PARK_SUBSCR_EXP,
        GARAGE_RENT_EXP,
        INS_PAYM_EXP,
        INS_2_PAYM_EXP,
        CAR_PAYM_EXP,
        HWY_PASS_EXP,
        ZTL_PASS_EXP,
        WARRANTY_EXP,
        LICENCE;

        public static Type getValueOf(String str) {
            if (str != null) {
                if (str.equals("inspection")) {
                    return INSPECTION;
                }
                if (str.equals(NotificationCompat.CATEGORY_SERVICE)) {
                    return SERVICE;
                }
                if (str.equals(FcmConstants.TYRES_FITTING)) {
                    return TYRES_FITTING;
                }
                if (str.equals(FcmConstants.TYRES_SWAP)) {
                    return TYRES_SWAP;
                }
                if (str.equals("insurance_exp")) {
                    return INSURANCE_EXP;
                }
                if (str.equals("tax_exp")) {
                    return TAX_EXP;
                }
                if (str.equals("insurance_2_exp")) {
                    return INSURANCE_2_EXP;
                }
                if (str.equals("gpl_exp")) {
                    return GPL_EXP;
                }
                if (str.equals("meth_exp")) {
                    return METH_EXP;
                }
                if (str.equals("exhaust_exp")) {
                    return EXHAUST_EXP;
                }
                if (str.equals("ac_subscr_exp")) {
                    return AC_SUBSCR_EXP;
                }
                if (str.equals("park_subscr_exp")) {
                    return PARK_SUBSCR_EXP;
                }
                if (str.equals("garage_rent_exp")) {
                    return GARAGE_RENT_EXP;
                }
                if (str.equals("ins_paym_exp")) {
                    return INS_PAYM_EXP;
                }
                if (str.equals("ins_2_paym_exp")) {
                    return INS_2_PAYM_EXP;
                }
                if (str.equals("car_paym_exp")) {
                    return CAR_PAYM_EXP;
                }
                if (str.equals("hwy_pass_exp")) {
                    return HWY_PASS_EXP;
                }
                if (str.equals("ztl_pass_exp")) {
                    return ZTL_PASS_EXP;
                }
                if (str.equals("warranty_exp")) {
                    return WARRANTY_EXP;
                }
                if (str.equals("license")) {
                    return LICENCE;
                }
                throw new IllegalArgumentException("no Threshold Type for -> " + str);
            }
            throw new IllegalArgumentException("server Threshold Type can't be null");
        }
    }
}
