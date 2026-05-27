package com.texa.careapp.checks;

import com.texa.careapp.checks.Check;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.utils.ServiceDataManager;
import io.reactivex.Observable;

/* JADX INFO: loaded from: classes2.dex */
public class CheckCurrentService implements Check {
    private DongleDataManager mDongleDataManager;
    private ServiceDataManager mServiceDataManager;

    @Override // com.texa.careapp.checks.Check
    public String description() {
        return "";
    }

    @Override // com.texa.careapp.checks.Check
    public void resolve() {
    }

    public CheckCurrentService(DongleDataManager dongleDataManager, ServiceDataManager serviceDataManager) {
        this.mDongleDataManager = dongleDataManager;
        this.mServiceDataManager = serviceDataManager;
    }

    @Override // com.texa.careapp.checks.Check
    public Observable<Check.Result> check() {
        return Observable.just(checkCurrentStatus());
    }

    @Override // com.texa.careapp.checks.Check
    public Check.Result checkCurrentStatus() {
        if (this.mDongleDataManager.getDongleModel() == null) {
            return Check.Result.BLOCKING;
        }
        ServiceDataManager serviceDataManager = this.mServiceDataManager;
        ServiceDataModel servicePriority = serviceDataManager.getServicePriority(serviceDataManager.filterActiveSosServicesForHwId(this.mDongleDataManager.getDongleModel().getHwid(), this.mServiceDataManager.getActiveGenericSosServices()));
        if (servicePriority == null || !servicePriority.isTermsAccepted()) {
            return Check.Result.BLOCKING;
        }
        return Check.Result.OK;
    }
}
