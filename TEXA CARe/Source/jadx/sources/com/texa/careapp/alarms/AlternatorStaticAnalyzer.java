package com.texa.careapp.alarms;

import com.texa.careapp.model.AlarmStatus;
import com.texa.careapp.model.AlarmType;
import com.texa.careapp.model.VehicleAlarm;
import com.texa.careapp.model.VehicleModel;
import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.care.trips.TripEndInfo;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class AlternatorStaticAnalyzer {
    private static final String TAG = "AlternatorStaticAnalyzer";
    private static final int TRIP_MIN_DURATION = 60000;
    private static final float VOLTAGE_TH1 = 12.2f;
    private static final float VOLTAGE_TH2 = 12.9f;
    private static final float VOLTAGE_TH3 = 15.0f;
    private static final float VOLTAGE_TH4 = 16.5f;
    private VehicleAlarmNotifier mVehicleAlarmNotifier;

    public AlternatorStaticAnalyzer(VehicleAlarmNotifier vehicleAlarmNotifier) {
        this.mVehicleAlarmNotifier = vehicleAlarmNotifier;
    }

    private static ArrayList<VehicleAlarm.AlarmData> asList(VehicleAlarm.AlarmData alarmData) {
        ArrayList<VehicleAlarm.AlarmData> arrayList = new ArrayList<>(1);
        arrayList.add(alarmData);
        return arrayList;
    }

    protected static VehicleAlarm getLastAlternatorAlarm(VehicleModel vehicleModel) {
        HashSet<VehicleAlarm> alarms = vehicleModel.getAlarms();
        if (alarms == null) {
            return null;
        }
        for (VehicleAlarm vehicleAlarm : alarms) {
            if (vehicleAlarm.getAlarmType() == AlarmType.ALTERNATOR_HIGH || vehicleAlarm.getAlarmType() == AlarmType.ALTERNATOR_LOW) {
                return vehicleAlarm;
            }
        }
        return null;
    }

    protected static boolean validateVoltageValue(Float f) {
        return f != null && f.floatValue() > 0.0f;
    }

    protected static boolean checkRequirements(TripBeginInfo tripBeginInfo, TripEndInfo tripEndInfo) {
        if (tripBeginInfo == null || tripEndInfo == null) {
            Timber.d("tripStartInfo or tripStopInfo is null", new Object[0]);
            return false;
        }
        Date timeStamp = tripBeginInfo.getTimeStamp();
        Date timeStamp2 = tripEndInfo.getTimeStamp();
        if (timeStamp != null && timeStamp2 != null) {
            return timeStamp2.getTime() - timeStamp.getTime() >= 60000;
        }
        Timber.d("trip timestamps null", new Object[0]);
        return false;
    }

    public void parse(TripBeginInfo tripBeginInfo, TripEndInfo tripEndInfo, VehicleModel vehicleModel) {
        AlarmStatus alarmStatus;
        AlarmType alarmType;
        if (vehicleModel == null) {
            Timber.w("vehicleModel is null", new Object[0]);
            return;
        }
        if (tripEndInfo == null) {
            Timber.w("tripStopInfo is null!", new Object[0]);
            return;
        }
        if (checkRequirements(tripBeginInfo, tripEndInfo)) {
            Float maxVoltageEngineOn = tripEndInfo.getMaxVoltageEngineOn();
            if (!validateVoltageValue(maxVoltageEngineOn)) {
                Timber.d("invalid voltage value: %s", maxVoltageEngineOn);
                return;
            }
            if (maxVoltageEngineOn.floatValue() < 12.2f) {
                alarmStatus = AlarmStatus.RED;
                alarmType = AlarmType.ALTERNATOR_LOW;
            } else if (maxVoltageEngineOn.floatValue() < 12.9f) {
                alarmStatus = AlarmStatus.YELLOW;
                alarmType = AlarmType.ALTERNATOR_LOW;
            } else if (maxVoltageEngineOn.floatValue() < VOLTAGE_TH3) {
                alarmType = null;
                alarmStatus = AlarmStatus.GREEN;
            } else if (maxVoltageEngineOn.floatValue() < 16.5f) {
                alarmStatus = AlarmStatus.YELLOW;
                alarmType = AlarmType.ALTERNATOR_HIGH;
            } else {
                alarmStatus = AlarmStatus.RED;
                alarmType = AlarmType.ALTERNATOR_HIGH;
            }
            if (alarmStatus == AlarmStatus.GREEN) {
                VehicleAlarm lastAlternatorAlarm = getLastAlternatorAlarm(vehicleModel);
                if (lastAlternatorAlarm == null || lastAlternatorAlarm.getAlarmStatus() == AlarmStatus.GREEN) {
                    return;
                }
                AlarmType alarmType2 = lastAlternatorAlarm.getAlarmType();
                Timber.d("notifica: tipo= %s , stato= %s", alarmType2, alarmStatus);
                this.mVehicleAlarmNotifier.notifyAlternatorAlarm(alarmType2, alarmStatus, asList(new VehicleAlarm.AlarmData(maxVoltageEngineOn.floatValue())));
                return;
            }
            Timber.d("notifica: tipo= %s , stato= %s", alarmType, alarmStatus);
            this.mVehicleAlarmNotifier.notifyAlternatorAlarm(alarmType, alarmStatus, asList(new VehicleAlarm.AlarmData(maxVoltageEngineOn.floatValue())));
        }
    }
}
