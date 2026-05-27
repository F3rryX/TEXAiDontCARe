package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class PurchaseDataJob_MembersInjector implements MembersInjector<PurchaseDataJob> {
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceUserProvider;

    public PurchaseDataJob_MembersInjector(Provider<TexaCareApiServiceUser> provider) {
        this.texaCareApiServiceUserProvider = provider;
    }

    public static MembersInjector<PurchaseDataJob> create(Provider<TexaCareApiServiceUser> provider) {
        return new PurchaseDataJob_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(PurchaseDataJob purchaseDataJob) {
        injectTexaCareApiServiceUser(purchaseDataJob, this.texaCareApiServiceUserProvider.get());
    }

    public static void injectTexaCareApiServiceUser(PurchaseDataJob purchaseDataJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        purchaseDataJob.texaCareApiServiceUser = texaCareApiServiceUser;
    }
}
