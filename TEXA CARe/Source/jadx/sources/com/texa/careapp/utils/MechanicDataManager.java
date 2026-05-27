package com.texa.careapp.utils;

import android.content.SharedPreferences;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.google.gson.Gson;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.MechanicModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.CustomerResponse;
import io.reactivex.Maybe;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import java.util.HashMap;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class MechanicDataManager {
    private static final long MAX_AGE = 600000;
    private DongleDataManager mDongleDataManager;
    private SharedPreferences mSharedPreferences;
    private TexaCareApiServiceUser mTexaCareApiServiceUser;
    private HashMap<String, CustomerResponse> mMemoryCache = new HashMap<>();
    private Gson mGson = Utils.buildGsonInstance();

    public MechanicDataManager(SharedPreferences sharedPreferences, TexaCareApiServiceUser texaCareApiServiceUser, DongleDataManager dongleDataManager) {
        this.mSharedPreferences = sharedPreferences;
        this.mTexaCareApiServiceUser = texaCareApiServiceUser;
        this.mDongleDataManager = dongleDataManager;
    }

    public MechanicModel getMechanicModel() {
        return (MechanicModel) new Select().from(MechanicModel.class).orderBy("LastUpdate DESC").executeSingle();
    }

    private static long now() {
        return System.currentTimeMillis();
    }

    private static boolean isExpired(long j) {
        return System.currentTimeMillis() - j > 600000;
    }

    public Maybe<CustomerResponse> observeCustomerResponse() {
        if (this.mDongleDataManager.getDongleModel() == null) {
            throw new IllegalArgumentException("dongleModel cannot be null!");
        }
        return fromNetwork().filter(new Predicate() { // from class: com.texa.careapp.utils.MechanicDataManager$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return this.f$0.isValid((CustomerResponse) obj);
            }
        }).firstElement().doOnError(new Consumer() { // from class: com.texa.careapp.utils.MechanicDataManager$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "#onErrorResumeNext()", new Object[0]);
            }
        });
    }

    protected Observable<CustomerResponse> fromNetwork() {
        Observable<CustomerResponse> customers = this.mTexaCareApiServiceUser.getCustomers();
        if (customers == null) {
            Timber.w("#fromNetwork mTexaCareApiServiceUser.getCustomers() return NULL", new Object[0]);
            return null;
        }
        return customers.doOnNext(new Consumer() { // from class: com.texa.careapp.utils.MechanicDataManager$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ((CustomerResponse) obj).setUpdatedAt(MechanicDataManager.now());
            }
        }).compose(logSource("NETWORK"));
    }

    protected void cacheOnDisk(String str, CustomerResponse customerResponse) {
        this.mSharedPreferences.edit().putString(getPrefKey(str), this.mGson.toJson(customerResponse)).apply();
    }

    protected Observable<CustomerResponse> fromDisk(final String str) {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.utils.MechanicDataManager$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m658lambda$fromDisk$2$comtexacareapputilsMechanicDataManager(str, observableEmitter);
            }
        }).doOnNext(new Consumer() { // from class: com.texa.careapp.utils.MechanicDataManager$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m659lambda$fromDisk$3$comtexacareapputilsMechanicDataManager(str, (CustomerResponse) obj);
            }
        }).compose(logSource("DISK"));
    }

    /* JADX INFO: renamed from: lambda$fromDisk$2$com-texa-careapp-utils-MechanicDataManager, reason: not valid java name */
    public /* synthetic */ void m658lambda$fromDisk$2$comtexacareapputilsMechanicDataManager(String str, ObservableEmitter observableEmitter) throws Exception {
        CustomerResponse fromPreferences = readFromPreferences(str);
        if (fromPreferences != null) {
            observableEmitter.onNext(fromPreferences);
        }
        observableEmitter.onComplete();
    }

    private CustomerResponse readFromPreferences(String str) {
        try {
            return (CustomerResponse) this.mGson.fromJson(this.mSharedPreferences.getString(getPrefKey(str), null), CustomerResponse.class);
        } catch (Exception e) {
            Timber.v(e, "ignored", new Object[0]);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: cacheInMemory, reason: merged with bridge method [inline-methods] */
    public void m659lambda$fromDisk$3$comtexacareapputilsMechanicDataManager(String str, CustomerResponse customerResponse) {
        this.mMemoryCache.put(str, customerResponse);
    }

    protected Observable<CustomerResponse> fromMemory(final String str) {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.utils.MechanicDataManager$$ExternalSyntheticLambda1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m660lambda$fromMemory$4$comtexacareapputilsMechanicDataManager(str, observableEmitter);
            }
        }).compose(logSource("MEMORY"));
    }

    /* JADX INFO: renamed from: lambda$fromMemory$4$com-texa-careapp-utils-MechanicDataManager, reason: not valid java name */
    public /* synthetic */ void m660lambda$fromMemory$4$comtexacareapputilsMechanicDataManager(String str, ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(this.mMemoryCache.get(str));
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValid(CustomerResponse customerResponse) {
        return (customerResponse == null || isExpired(customerResponse.getUpdatedAt())) ? false : true;
    }

    protected void clearCache(String str) {
        try {
            this.mMemoryCache.remove(str);
            this.mSharedPreferences.edit().remove(getPrefKey(str)).apply();
        } catch (Exception e) {
            Timber.w(e, "#clearCache() problem", new Object[0]);
        }
    }

    private String getPrefKey(String str) {
        return "customer-response-" + str;
    }

    private ObservableTransformer<CustomerResponse, CustomerResponse> logSource(final String str) {
        return new ObservableTransformer() { // from class: com.texa.careapp.utils.MechanicDataManager$$ExternalSyntheticLambda2
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                return this.f$0.m662lambda$logSource$6$comtexacareapputilsMechanicDataManager(str, observable);
            }
        };
    }

    /* JADX INFO: renamed from: lambda$logSource$6$com-texa-careapp-utils-MechanicDataManager, reason: not valid java name */
    public /* synthetic */ ObservableSource m662lambda$logSource$6$comtexacareapputilsMechanicDataManager(final String str, Observable observable) {
        return observable.doOnNext(new Consumer() { // from class: com.texa.careapp.utils.MechanicDataManager$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m661lambda$logSource$5$comtexacareapputilsMechanicDataManager(str, (CustomerResponse) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$logSource$5$com-texa-careapp-utils-MechanicDataManager, reason: not valid java name */
    public /* synthetic */ void m661lambda$logSource$5$comtexacareapputilsMechanicDataManager(String str, CustomerResponse customerResponse) throws Exception {
        if (customerResponse == null) {
            Timber.v(str + " does not have any data.", new Object[0]);
            return;
        }
        if (!isValid(customerResponse)) {
            Timber.v(str + " has stale data.", new Object[0]);
            return;
        }
        Timber.v(str + " has the data you are looking for!", new Object[0]);
    }

    public void deleteMechanicsData() {
        new Delete().from(MechanicModel.class).execute();
    }
}
