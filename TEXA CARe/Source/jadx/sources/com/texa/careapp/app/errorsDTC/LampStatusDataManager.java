package com.texa.careapp.app.errorsDTC;

import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.texa.careapp.model.VehicleModel;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LampStatusDataManager {
    private static final String TAG = "LampStatusDataManager";

    public LampStatus getLampStatus(Long l) {
        return (LampStatus) new Select().from(LampStatus.class).where("dataId = ? ", l).executeSingle();
    }

    public void deleteLampStatus(Long l) {
        new Delete().from(LampStatus.class).where("dataId = ? ", l).execute();
    }

    public List<LampStatus> getAll() {
        return new Select().from(LampStatus.class).execute();
    }

    public List<LampStatus> getAllLampsActive() {
        return new Select().from(LampStatus.class).where("status = ? ", true).execute();
    }

    public List<LampStatus> getAllLampsActive(VehicleModel vehicleModel) {
        return new Select().from(LampStatus.class).where("status = ? ", true).execute();
    }

    public void deleteAll() {
        new Delete().from(LampStatus.class).execute();
    }
}
