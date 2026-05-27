package com.texa.careapp.utils;

import com.texa.careapp.model.VehicleScheduleModel;

/* JADX INFO: loaded from: classes2.dex */
public class ScheduleHelper {
    private VehicleScheduleModel dateSchedule;
    private int mActualOdometer;
    private VehicleScheduleModel odometerSchedule;

    public static class ServiceScheduleInfo {
        public int percent;
        public MeasureUnit unit;
        public String value;
    }

    public ScheduleHelper(VehicleScheduleModel vehicleScheduleModel, VehicleScheduleModel vehicleScheduleModel2, int i) {
        this.odometerSchedule = vehicleScheduleModel;
        this.dateSchedule = vehicleScheduleModel2;
        this.mActualOdometer = i;
    }

    public ServiceScheduleInfo parse() {
        VehicleScheduleModel vehicleScheduleModel;
        ServiceScheduleInfo serviceScheduleInfo = new ServiceScheduleInfo();
        VehicleScheduleModel vehicleScheduleModel2 = this.odometerSchedule;
        if (vehicleScheduleModel2 == null && this.dateSchedule == null) {
            return null;
        }
        if (vehicleScheduleModel2 != null && this.dateSchedule == null) {
            serviceScheduleInfo.percent = vehicleScheduleModel2.getKmToExpirePercent(this.mActualOdometer).intValue();
            serviceScheduleInfo.unit = MeasureUnit.DISTANCE_KILOMETER;
            serviceScheduleInfo.value = String.valueOf(this.odometerSchedule.getKmToExpire(this.mActualOdometer));
            return serviceScheduleInfo;
        }
        if (vehicleScheduleModel2 == null && (vehicleScheduleModel = this.dateSchedule) != null) {
            serviceScheduleInfo.percent = vehicleScheduleModel.getDateToExpirePercent().intValue();
            serviceScheduleInfo.unit = MeasureUnit.DAYS;
            serviceScheduleInfo.value = String.valueOf(this.dateSchedule.daysToExpire());
            return serviceScheduleInfo;
        }
        Integer dateToExpirePercent = this.dateSchedule.getDateToExpirePercent();
        Integer kmToExpirePercent = this.odometerSchedule.getKmToExpirePercent(this.mActualOdometer);
        if (dateToExpirePercent != null && kmToExpirePercent != null) {
            if (dateToExpirePercent.intValue() < kmToExpirePercent.intValue()) {
                serviceScheduleInfo.percent = dateToExpirePercent.intValue();
                serviceScheduleInfo.unit = MeasureUnit.DAYS;
                serviceScheduleInfo.value = String.valueOf(this.dateSchedule.daysToExpire());
            } else {
                serviceScheduleInfo.percent = kmToExpirePercent.intValue();
                serviceScheduleInfo.unit = MeasureUnit.DISTANCE_KILOMETER;
                serviceScheduleInfo.value = String.valueOf(this.odometerSchedule.getKmToExpire(this.mActualOdometer));
            }
        }
        return serviceScheduleInfo;
    }
}
