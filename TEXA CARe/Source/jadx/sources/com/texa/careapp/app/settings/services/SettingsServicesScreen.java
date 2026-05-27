package com.texa.careapp.app.settings.services;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.activeandroid.query.Select;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.settings.services.SettingsServicesAdapter;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.databinding.ScreenSettingsServicesBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.ServiceListResponse;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsServicesScreen extends Screen implements SettingsServicesAdapter.UpdateData {
    private SettingsServicesAdapter mAdapter;
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    @Inject
    DongleDataManager mDongleDataManager;

    @Inject
    ServiceDataManager mServiceDataManager;

    @Inject
    SosFeatureManager mSosFeatureManager;

    @Inject
    TexaCareApiServiceUser mTexaCareApiServiceUser;

    @Inject
    UserDataManager mUserDataManager;
    private List<ServiceDataModel> services;
    private SwipeRefreshLayout swipeRefreshLayout;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_settings_services;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenSettingsServicesBinding screenSettingsServicesBinding = (ScreenSettingsServicesBinding) DataBindingUtil.bind(view);
        this.swipeRefreshLayout = screenSettingsServicesBinding.screenSettingsServiceRefresh;
        this.services = getAllServices();
        screenSettingsServicesBinding.screenSettingsServiceList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mAdapter = new SettingsServicesAdapter(getContext(), getNavigator(), this.services, this.mUserDataManager, this.mDongleDataManager, this, this.mSosFeatureManager);
        screenSettingsServicesBinding.screenSettingsServiceList.setAdapter(this.mAdapter);
        this.swipeRefreshLayout.setColorSchemeResources(R.color.sos_settings_card_background_color_positive, R.color.sos_settings_card_background_color_pending, R.color.sos_settings_card_background_color_negative);
        this.swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.texa.careapp.app.settings.services.SettingsServicesScreen$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                this.f$0.m404xaadc0bf();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-settings-services-SettingsServicesScreen, reason: not valid java name */
    public /* synthetic */ void m404xaadc0bf() {
        this.mDisposable.add(this.mTexaCareApiServiceUser.dongleServices().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.settings.services.SettingsServicesScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m403x238eb83d((ServiceListResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.settings.services.SettingsServicesScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "On error getting services", new Object[0]);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-settings-services-SettingsServicesScreen, reason: not valid java name */
    public /* synthetic */ void m403x238eb83d(ServiceListResponse serviceListResponse) throws Exception {
        this.mServiceDataManager.saveServiceData(serviceListResponse);
        this.swipeRefreshLayout.setRefreshing(false);
        this.services.clear();
        this.services.addAll(getAllServices());
        this.mAdapter.notifyDataSetChanged();
    }

    private List<ServiceDataModel> getAllServices() {
        List<ServiceDataModel> listExecute = new Select().from(ServiceDataModel.class).where("(dongle IS NOT NULL").or("user IS NOT NULL)").and("status <> ?", ServiceDataModel.DongleServiceStatus.INACTIVE).orderBy(ServiceDataModel.COLUMN_ACTIVATION).execute();
        ArrayList arrayList = new ArrayList();
        for (ServiceDataModel serviceDataModel : listExecute) {
            if ((serviceDataModel != null && serviceDataModel.getDongle() != null && serviceDataModel.getDongle().getVehicleByHwId() != null) || (serviceDataModel != null && serviceDataModel.getDongle() == null)) {
                arrayList.add(serviceDataModel);
            }
        }
        return arrayList;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.services.clear();
        this.services.addAll(getAllServices());
        this.mAdapter.notifyDataSetChanged();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return SettingsServicesScreen.class.getName();
    }

    @Override // com.texa.careapp.app.settings.services.SettingsServicesAdapter.UpdateData
    public void updateDataAfterAcceptingTerms() {
        Timber.i("UPDATE DATA AFTER TERMS ACCEPT", new Object[0]);
        this.services.clear();
        this.services.addAll(getAllServices());
        this.mAdapter.notifyDataSetChanged();
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        Utils.safeDispose(this.mDisposable);
    }
}
