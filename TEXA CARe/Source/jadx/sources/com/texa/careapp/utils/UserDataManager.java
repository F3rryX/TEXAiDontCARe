package com.texa.careapp.utils;

import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.texa.careapp.emergency.ContactType;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.UserModel;
import io.reactivex.Observable;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.subjects.Subject;

/* JADX INFO: loaded from: classes2.dex */
public class UserDataManager {
    private Subject<Boolean> performLoginAfterRefreshTokenExpired = PublishSubject.create();

    public Observable<Boolean> observeRefreshTokenExpired() {
        return this.performLoginAfterRefreshTokenExpired;
    }

    public void setRefreshTokenExpired(boolean z) {
        this.performLoginAfterRefreshTokenExpired.onNext(Boolean.valueOf(z));
    }

    public UserModel getUserCached() {
        return (UserModel) new Select().from(UserModel.class).executeSingle();
    }

    public UserModel insert(UserModel userModel) throws DatabaseIOException {
        if (new Select().from(UserModel.class).count() != 0) {
            new Delete().from(UserModel.class).execute();
        }
        return userModel;
    }

    public void delete() {
        new Delete().from(UserModel.class).execute();
    }

    public int countContactsFamilyForEmergency() {
        return new Select().from(ContactModel.class).where("type = ? ", ContactType.USER_CELL_ALT_SOS).count();
    }
}
