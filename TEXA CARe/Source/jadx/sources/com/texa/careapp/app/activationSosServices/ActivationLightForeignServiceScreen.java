package com.texa.careapp.app.activationSosServices;

import android.content.SharedPreferences;
import android.view.View;
import android.widget.Toast;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.activationSosServices.entity.PurchaseLockEntity;
import com.texa.careapp.app.activationSosServices.entity.PurchaseLockResponseEntity;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.Utils;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class ActivationLightForeignServiceScreen extends Screen {
    private boolean isSosLightPurchasable = false;
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;
    private final ServiceDataModel serviceSosLight;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "ActivationLightForeignServiceScreen";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_activation_light_foreign_service;
    }

    ActivationLightForeignServiceScreen(ServiceDataModel serviceDataModel) {
        this.serviceSosLight = serviceDataModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        view.findViewById(R.id.screen_activation_light_foreign_service_purchase).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightForeignServiceScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m119x770b9354(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationLightForeignServiceScreen, reason: not valid java name */
    public /* synthetic */ void m119x770b9354(View view) {
        buttonGoToServiceLightTOS();
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mDisposable.add(this.mTexaCareApiService.checkLockStatus(new PurchaseLockEntity(ServiceDataModel.DongleServiceId.SOS_LIGHT.name(), "", Utils.getUniqueDeviceId(this.mSharedPreferences))).compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightForeignServiceScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m120xb92a3fd((PurchaseLockResponseEntity) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightForeignServiceScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error checking lock status", new Object[0]);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$onResume$1$com-texa-careapp-app-activationSosServices-ActivationLightForeignServiceScreen, reason: not valid java name */
    public /* synthetic */ void m120xb92a3fd(PurchaseLockResponseEntity purchaseLockResponseEntity) throws Exception {
        this.isSosLightPurchasable = !purchaseLockResponseEntity.isAlreadyPending();
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.activationSosServices.ActivationLightForeignServiceScreen$1, reason: invalid class name */
    class AnonymousClass1 extends AcceptationTermsSosServiceScreen {
        AnonymousClass1(ServiceDataModel serviceDataModel) {
            super(serviceDataModel);
        }

        @Override // com.texa.careapp.app.ecodriving.AcceptationTermsScreen
        public void acceptedCondition() {
            Utils.safeDispose(getDisposable());
            setDisposable(observerForLightActivation().subscribe(new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightForeignServiceScreen$1$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m121x63ea41fd(obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.activationSosServices.ActivationLightForeignServiceScreen$1$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "error accepting conditions", new Object[0]);
                }
            }));
        }

        /* JADX INFO: renamed from: lambda$acceptedCondition$0$com-texa-careapp-app-activationSosServices-ActivationLightForeignServiceScreen$1, reason: not valid java name */
        public /* synthetic */ void m121x63ea41fd(Object obj) throws Exception {
            scheduleSyncServiceDataTask();
        }
    }

    private void buttonGoToServiceLightTOS() {
        if (this.isSosLightPurchasable) {
            getNavigator().goTo(new AnonymousClass1(this.serviceSosLight));
        } else {
            Toast.makeText(getContext(), R.string.sos_lock_purchase, 1).show();
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        Utils.safeDispose(this.mDisposable);
    }
}
