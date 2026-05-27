package com.texa.careapp.model;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.careapp.fcm.FcmConstants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public enum ScheduleType {
    LICENSE("license", R.string.schedule_license, TypeValue.DATE),
    TAX(FirebaseAnalytics.Param.TAX, R.string.schedule_tax, TypeValue.DATE),
    INSURANCE("insurance", R.string.schedule_insurance, TypeValue.DATE),
    INSPECTION("inspection", R.string.schedule_inspection, TypeValue.DATE),
    DIAG_SERVICE_TIME("diag_service_time", R.string.schedule_service_dia, TypeValue.DATE),
    DIAG_SERVICE_ODO("diag_service_odo", R.string.schedule_service_dia, TypeValue.KM),
    SERVICE_TIME("service_time", R.string.schedule_service, TypeValue.DATE),
    SERVICE_ODO("service_odo", R.string.schedule_service, TypeValue.KM),
    TYRES_SWAP(FcmConstants.TYRES_SWAP, R.string.schedule_tyres_swap, TypeValue.KM),
    INSURANCE_2("insurance_2", R.string.schedule_insurance_2, TypeValue.DATE),
    INSPECTION_GPL("inspection_gpl", R.string.schedule_inspection_gpl, TypeValue.DATE),
    INSPECTION_METH("inspection_meth", R.string.schedule_inspection_meth, TypeValue.DATE),
    AC_SUBSCR("ac_subscr", R.string.schedule_ac_subscr, TypeValue.DATE),
    EXAUST("exhaust", R.string.schedule_exaust, TypeValue.DATE),
    PARK_SUBSCR("park_subscr", R.string.schedule_park_subscr, TypeValue.DATE),
    GARAGE_RENT("garage_rent", R.string.schedule_garage_rent, TypeValue.DATE),
    INS_PAYM("ins_paym", R.string.schedule_ins_paym, TypeValue.DATE),
    INS_2_PAYM("ins_2_paym", R.string.schedule_ins_2_paym, TypeValue.DATE),
    CAR_PAYM("car_paym", R.string.schedule_car_paym, TypeValue.DATE),
    HWY_PASS("hwy_pass", R.string.schedule_hwy_pass, TypeValue.DATE),
    ZTL_PASS("ztl_pass", R.string.schedule_ztl_pass, TypeValue.DATE),
    WARRANTY_TIME("warranty_time", R.string.schedule_warranty_time, TypeValue.DATE),
    FLUID_AUTO_ODO("fluid_auto_odo", R.string.schedule_fluid_auto_odo, TypeValue.KM),
    BELTS_ODO("belts_odo", R.string.schedule_belts_rep, TypeValue.KM),
    BELTS_TIME("belts_time", R.string.schedule_belts_rep, TypeValue.DATE),
    SOS_SERVICE("sos_subscr", R.string.sos_service_name, TypeValue.DATE);

    public static final List<ScheduleType> TYPE_SCHEDULE_UNEDITABLE_FORM_USER;
    int stringRes;
    TypeValue typeValue;
    String value;

    public enum TypeValue {
        DATE,
        KM
    }

    static {
        ScheduleType scheduleType = DIAG_SERVICE_TIME;
        ScheduleType scheduleType2 = DIAG_SERVICE_ODO;
        ScheduleType scheduleType3 = SERVICE_TIME;
        ScheduleType scheduleType4 = SERVICE_ODO;
        ScheduleType scheduleType5 = INSPECTION_GPL;
        ScheduleType scheduleType6 = INSPECTION_METH;
        ScheduleType scheduleType7 = WARRANTY_TIME;
        ScheduleType scheduleType8 = FLUID_AUTO_ODO;
        ScheduleType scheduleType9 = BELTS_ODO;
        ScheduleType scheduleType10 = BELTS_TIME;
        ScheduleType scheduleType11 = SOS_SERVICE;
        ArrayList arrayList = new ArrayList();
        TYPE_SCHEDULE_UNEDITABLE_FORM_USER = arrayList;
        arrayList.add(scheduleType);
        arrayList.add(scheduleType2);
        arrayList.add(scheduleType3);
        arrayList.add(scheduleType4);
        arrayList.add(scheduleType5);
        arrayList.add(scheduleType6);
        arrayList.add(scheduleType8);
        arrayList.add(scheduleType9);
        arrayList.add(scheduleType10);
        arrayList.add(scheduleType11);
        arrayList.add(scheduleType7);
    }

    ScheduleType(String str, int i, TypeValue typeValue) {
        this.value = str;
        this.stringRes = i;
        this.typeValue = typeValue;
    }

    public static ScheduleType lookupByValue(String str) {
        for (ScheduleType scheduleType : values()) {
            if (scheduleType.value.equals(str)) {
                return scheduleType;
            }
        }
        return null;
    }

    public TypeValue getTypeValue() {
        return this.typeValue;
    }

    public int getStringRes() {
        return this.stringRes;
    }
}
