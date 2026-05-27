package com.texa.careapp.emergency;

import android.database.Cursor;
import com.activeandroid.ActiveAndroid;
import com.activeandroid.Cache;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.texa.careapp.utils.Utils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class EmergencyDataManager {
    public List<EmergencyNumberModel> get(String str) {
        return new Select().all().from(EmergencyNumberModel.class).where("country = ?", str).execute();
    }

    public Cursor getCountryList() {
        return ActiveAndroid.getDatabase().rawQuery("SELECT country, id as _id  FROM EmergencyNumbers group by country", null);
    }

    public void persist(EmergencyNumberCollectionResponse emergencyNumberCollectionResponse) {
        ActiveAndroid.beginTransaction();
        try {
            try {
                truncateTable();
                HashMap<String, List<EmergencyNumberResponse>> numbers = emergencyNumberCollectionResponse.getNumbers();
                for (String str : numbers.keySet()) {
                    Iterator<EmergencyNumberResponse> it = numbers.get(str).iterator();
                    while (it.hasNext()) {
                        Utils.safeModelSave(EmergencyNumberModel.from(str, it.next()), Cache.getContext());
                    }
                }
                ActiveAndroid.setTransactionSuccessful();
            } catch (Exception e) {
                Timber.e(e, "got exception", new Object[0]);
            }
        } finally {
            ActiveAndroid.endTransaction();
        }
    }

    private void truncateTable() {
        new Delete().from(EmergencyNumberModel.class).execute();
    }

    public boolean isEmpty() {
        return new Select().from(EmergencyNumberModel.class).count() == 0;
    }
}
