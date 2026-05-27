package com.texa.careapp.utils.erratacorrige.impl;

import android.util.Log;
import com.activeandroid.Cache;
import com.activeandroid.query.Select;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.erratacorrige.ErrataCorrige;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ContactErrataCorrige implements ErrataCorrige {
    private static final String TAG = "ContactErrataCorrige";

    public int hashCode() {
        return 1;
    }

    @Override // com.texa.careapp.utils.erratacorrige.ErrataCorrige
    public int maxVersionCode() {
        return 12;
    }

    @Override // com.texa.careapp.utils.erratacorrige.ErrataCorrige
    public int minVersionCode() {
        return 0;
    }

    public String toString() {
        return "ContactErrataCorrige()";
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof ContactErrataCorrige;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ContactErrataCorrige) && ((ContactErrataCorrige) obj).canEqual(this);
    }

    @Override // com.texa.careapp.utils.erratacorrige.ErrataCorrige
    public void execute() throws Exception {
        List<ContactModel> listExecute = new Select().from(ContactModel.class).execute();
        UserModel userModel = (UserModel) new Select().from(UserModel.class).executeSingle();
        if (userModel == null) {
            Log.d(TAG, "user is null");
            return;
        }
        if (Utils.isEmpty((List<?>) listExecute)) {
            Log.d(TAG, "contacts is empty");
            return;
        }
        for (ContactModel contactModel : listExecute) {
            if (contactModel.getUser() == null) {
                Log.d(TAG, "fixing contact association for contact: " + contactModel);
                contactModel.setUser(userModel);
                try {
                    Utils.safeModelSave(contactModel, Cache.getContext());
                } catch (DatabaseIOException e) {
                    Timber.e(e, "Could not save contact model in database.", new Object[0]);
                }
            }
        }
    }
}
