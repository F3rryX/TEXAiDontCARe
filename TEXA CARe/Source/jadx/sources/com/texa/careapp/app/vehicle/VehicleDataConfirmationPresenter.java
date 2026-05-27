package com.texa.careapp.app.vehicle;

import android.util.Log;
import android.widget.EditText;
import com.texa.care.R;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.core.CareLibException;

/* JADX INFO: loaded from: classes2.dex */
class VehicleDataConfirmationPresenter {
    private static final String TAG = "VehicleDataConfirmationPresenter";

    VehicleDataConfirmationPresenter() {
    }

    public boolean onConfirmClicked(EditText editText, VehicleModel vehicleModel, DataManagerConfiguration dataManagerConfiguration, CAReWorkerManager cAReWorkerManager) {
        try {
            int iIntValue = Integer.valueOf(editText.getText().toString()).intValue();
            try {
                dataManagerConfiguration.setStartingOdometer(iIntValue);
            } catch (CareLibException e) {
                e.printStackTrace();
            }
            vehicleModel.setOdometer(Integer.valueOf(iIntValue));
            vehicleModel.setSyncNeeded(true);
            vehicleModel.setConfirmedByUser(true);
            cAReWorkerManager.scheduleVehicleSync();
            return true;
        } catch (Exception e2) {
            Log.d(TAG, "invalid value", e2);
            editText.setError(editText.getContext().getString(R.string.km_invalid_value));
            return false;
        }
    }
}
