package com.texa.careapp.checks;

import com.texa.careapp.checks.Check;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.utils.Utils;
import io.reactivex.Observable;

/* JADX INFO: loaded from: classes2.dex */
public class CheckPhoneNumber implements Check {
    private final UserModel mUser;

    @Override // com.texa.careapp.checks.Check
    public String description() {
        return "";
    }

    @Override // com.texa.careapp.checks.Check
    public void resolve() {
    }

    public CheckPhoneNumber(UserModel userModel) {
        this.mUser = userModel;
    }

    @Override // com.texa.careapp.checks.Check
    public Observable<Check.Result> check() {
        return Observable.just(checkCurrentStatus());
    }

    @Override // com.texa.careapp.checks.Check
    public Check.Result checkCurrentStatus() {
        if (Utils.isValidatedUserPhoneNumber(this.mUser)) {
            return Check.Result.OK;
        }
        return Check.Result.BLOCKING;
    }
}
