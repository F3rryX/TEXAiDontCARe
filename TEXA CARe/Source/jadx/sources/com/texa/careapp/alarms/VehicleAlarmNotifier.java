package com.texa.careapp.alarms;

import android.app.NotificationManager;
import android.content.Context;
import com.texa.care.R;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.AlarmStatus;
import com.texa.careapp.model.AlarmType;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleAlarm;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.MeasureUnit;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class VehicleAlarmNotifier {
    private static final String TAG = "VehicleAlarmNotifier";
    private final CAReWorkerManager mCAReWorkerManager;
    private Context mContext;
    private DongleDataManager mDongleDataManager;
    private NotificationManager mNotificationManager;

    public VehicleAlarmNotifier(Context context, DongleDataManager dongleDataManager, NotificationManager notificationManager, CAReWorkerManager cAReWorkerManager) {
        this.mContext = context;
        this.mDongleDataManager = dongleDataManager;
        this.mNotificationManager = notificationManager;
        this.mCAReWorkerManager = cAReWorkerManager;
    }

    public void notifyAlternatorAlarm(AlarmType alarmType, AlarmStatus alarmStatus, ArrayList<VehicleAlarm.AlarmData> arrayList) {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            Timber.w("NotifyAlternatorAlarm - dongle model is null!", new Object[0]);
            return;
        }
        VehicleModel currentVehicle = dongleModel.getCurrentVehicle();
        if (currentVehicle == null) {
            Timber.w("NotifyAlternatorAlarm - vehicle model is null!", new Object[0]);
            return;
        }
        Timber.d("notifyAlternatorAlarm %s %s %s", alarmType.toString(), alarmStatus.toString(), arrayList.toString());
        if (alarmStatus == AlarmStatus.RED) {
            int i = AnonymousClass1.$SwitchMap$com$texa$careapp$model$AlarmType[alarmType.ordinal()];
            if (i == 1) {
                notifyDriver(getAlternatorMessage(R.string.alternator_redhigh_driver));
            } else if (i == 2) {
                notifyDriver(getAlternatorMessage(R.string.alternator_redlow_driver));
            }
        }
        addAlarmToVehicle(currentVehicle, getBatteryVehicleAlarm(alarmType, alarmStatus, arrayList, currentVehicle));
        this.mCAReWorkerManager.scheduleVehicleAlarm();
    }

    /* JADX INFO: renamed from: com.texa.careapp.alarms.VehicleAlarmNotifier$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$model$AlarmType;

        static {
            int[] iArr = new int[AlarmType.values().length];
            $SwitchMap$com$texa$careapp$model$AlarmType = iArr;
            try {
                iArr[AlarmType.ALTERNATOR_HIGH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$AlarmType[AlarmType.ALTERNATOR_LOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private VehicleAlarm getBatteryVehicleAlarm(AlarmType alarmType, AlarmStatus alarmStatus, ArrayList<VehicleAlarm.AlarmData> arrayList, VehicleModel vehicleModel) {
        VehicleAlarm vehicleAlarm = new VehicleAlarm();
        vehicleAlarm.setVehicleId(vehicleModel.getUid());
        vehicleAlarm.setMeasureUnit(MeasureUnit.VOLTAGE);
        vehicleAlarm.setAlarmStatus(alarmStatus);
        vehicleAlarm.setAlarmType(alarmType);
        vehicleAlarm.setAlarmDataList(arrayList);
        return vehicleAlarm;
    }

    protected void addAlarmToVehicle(VehicleModel vehicleModel, VehicleAlarm vehicleAlarm) {
        vehicleModel.updateAlarm(vehicleAlarm);
        try {
            Utils.safeModelSave(vehicleModel, this.mContext);
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save vehicle model to database.", new Object[0]);
        }
    }

    protected String getAlternatorMessage(int i) {
        String string = this.mContext.getString(i);
        if (Utils.isEmpty(string)) {
            throw new NullPointerException("getAlternatorMessage cannot be null!");
        }
        return string;
    }

    protected void notifyDriver(String str) {
        this.mNotificationManager.notify(5, Utils.buildAlternatorNotification(this.mContext, str));
    }
}
