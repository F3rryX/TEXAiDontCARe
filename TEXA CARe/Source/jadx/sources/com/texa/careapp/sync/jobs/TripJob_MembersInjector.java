package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.TripDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class TripJob_MembersInjector implements MembersInjector<TripJob> {
    private final Provider<LoginHelperRx> mLoginHelperRxProvider;
    private final Provider<RetrofitErrorParser> mRetrofitErrorParserProvider;
    private final Provider<TripDataManager> mTripDataManagerProvider;
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceUserProvider;

    public TripJob_MembersInjector(Provider<LoginHelperRx> provider, Provider<TripDataManager> provider2, Provider<TexaCareApiServiceUser> provider3, Provider<RetrofitErrorParser> provider4) {
        this.mLoginHelperRxProvider = provider;
        this.mTripDataManagerProvider = provider2;
        this.texaCareApiServiceUserProvider = provider3;
        this.mRetrofitErrorParserProvider = provider4;
    }

    public static MembersInjector<TripJob> create(Provider<LoginHelperRx> provider, Provider<TripDataManager> provider2, Provider<TexaCareApiServiceUser> provider3, Provider<RetrofitErrorParser> provider4) {
        return new TripJob_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(TripJob tripJob) {
        injectMLoginHelperRx(tripJob, this.mLoginHelperRxProvider.get());
        injectMTripDataManager(tripJob, this.mTripDataManagerProvider.get());
        injectTexaCareApiServiceUser(tripJob, this.texaCareApiServiceUserProvider.get());
        injectMRetrofitErrorParser(tripJob, this.mRetrofitErrorParserProvider.get());
    }

    public static void injectMLoginHelperRx(TripJob tripJob, LoginHelperRx loginHelperRx) {
        tripJob.mLoginHelperRx = loginHelperRx;
    }

    public static void injectMTripDataManager(TripJob tripJob, TripDataManager tripDataManager) {
        tripJob.mTripDataManager = tripDataManager;
    }

    public static void injectTexaCareApiServiceUser(TripJob tripJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        tripJob.texaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMRetrofitErrorParser(TripJob tripJob, RetrofitErrorParser retrofitErrorParser) {
        tripJob.mRetrofitErrorParser = retrofitErrorParser;
    }
}
