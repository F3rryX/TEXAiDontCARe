package com.texa.careapp.app.ecodriving;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.careapp.app.ecodriving.serviceserializer.HideTripEntity;
import com.texa.careapp.databinding.ScreenEcoDrivingDialogHideTripBinding;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.ServerResponse;
import com.texa.careapp.utils.Utils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.text.SimpleDateFormat;
import java.util.Locale;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingDialogHideTrip extends Screen {
    private SimpleDateFormat dateFormat = new SimpleDateFormat("EEEE dd MMMM yyyy", Locale.getDefault());
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;
    private TripObjectModel trip;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_eco_driving_dialog_hide_trip;
    }

    EcoDrivingDialogHideTrip(TripObjectModel tripObjectModel) {
        this.trip = tripObjectModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenEcoDrivingDialogHideTripBinding screenEcoDrivingDialogHideTripBinding = (ScreenEcoDrivingDialogHideTripBinding) DataBindingUtil.bind(view);
        screenEcoDrivingDialogHideTripBinding.ecoDrivingDialogHideTripBtnHide.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingDialogHideTrip$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m231xf1374491(view2);
            }
        });
        screenEcoDrivingDialogHideTripBinding.ecoDrivingDialogHideTripBtnUndo.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingDialogHideTrip$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m232x7e245bb0(view2);
            }
        });
        screenEcoDrivingDialogHideTripBinding.ecoDrivingDialogHideTripText.setText(String.format(getContext().getString(R.string.eco_driving_dialog_hide_trip_text), this.dateFormat.format(Long.valueOf(this.trip.getStartTrip()))));
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-ecodriving-EcoDrivingDialogHideTrip, reason: not valid java name */
    public /* synthetic */ void m231xf1374491(View view) {
        onHideClick();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-ecodriving-EcoDrivingDialogHideTrip, reason: not valid java name */
    public /* synthetic */ void m232x7e245bb0(View view) {
        getNavigator().goBack();
    }

    private void onHideClick() {
        this.mDisposable.add(this.mTexaCareApiService.hideEcoDrivingTrip(new HideTripEntity(this.trip.getUuid())).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingDialogHideTrip$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m233x192eeab8((ServerResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingDialogHideTrip$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m234xa61c01d7((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$onHideClick$2$com-texa-careapp-app-ecodriving-EcoDrivingDialogHideTrip, reason: not valid java name */
    public /* synthetic */ void m233x192eeab8(ServerResponse serverResponse) throws Exception {
        EcoDrivingEventsDataManager.hideTrip(this.trip.getUuid());
        closeDialog();
    }

    /* JADX INFO: renamed from: lambda$onHideClick$3$com-texa-careapp-app-ecodriving-EcoDrivingDialogHideTrip, reason: not valid java name */
    public /* synthetic */ void m234xa61c01d7(Throwable th) throws Exception {
        Timber.e(th, "UNABLE TO SYNC HIDE TRIP", new Object[0]);
        EcoDrivingEventsDataManager.hideAndSyncTrip(this.trip.getUuid());
        closeDialog();
    }

    private void closeDialog() {
        this.mEventBus.post(new ShouldHideTrip());
        getNavigator().goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return EcoDrivingDialogHideTrip.class.getName();
    }

    class ShouldHideTrip {
        ShouldHideTrip() {
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        Utils.safeDispose(this.mDisposable);
    }
}
