package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.dashboard.DashboardScreenV2;
import com.texa.careapp.app.schedule.ScheduleActivity;
import com.texa.careapp.databinding.DashboardCardScheduleBinding;
import com.texa.careapp.model.IScheduleModel;
import com.texa.careapp.model.ScheduleType;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.UserScheduleModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ScheduleCardViewPresenter {
    private int countIsExpired;
    private int countIsExpiring;
    private boolean isSmallScreen;
    private TextView mButton;

    @Inject
    protected Context mContext;
    private TextView mDescription;
    private ImageView mIcon;
    private AppCompatTextView mShortDescription;
    private AppCompatTextView mTitle;

    @Inject
    protected UserDataManager mUserDataManager;

    @Inject
    protected VehicleObserver mVehicleObserver;
    private int negativeColor;
    private int positiveColor;
    private List<IScheduleModel> mSchedules = new ArrayList();
    protected final CompositeDisposable mDisposables = new CompositeDisposable();

    public CompositeDisposable getMDisposables() {
        return this.mDisposables;
    }

    public ScheduleCardViewPresenter(CareApplication.ApplicationComponent applicationComponent, boolean z) {
        applicationComponent.inject(this);
        this.isSmallScreen = z;
    }

    public void afterViewInjection(DashboardCardScheduleBinding dashboardCardScheduleBinding) {
        this.mShortDescription = dashboardCardScheduleBinding.dashboardCardScheduleShortDescription;
        this.mTitle = dashboardCardScheduleBinding.dashboardCardScheduleTitle;
        this.mDescription = dashboardCardScheduleBinding.dashboardCardScheduleDescription;
        this.mButton = dashboardCardScheduleBinding.dashboardCardScheduleButton;
        this.mIcon = dashboardCardScheduleBinding.dashboardCardScheduleIcon;
        dashboardCardScheduleBinding.dashboardCardSchedule.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.dashboard.card.ScheduleCardViewPresenter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m210xe9920643(view);
            }
        });
        if (Build.VERSION.SDK_INT < 21) {
            dashboardCardScheduleBinding.dashboardCardSchedule.setPreventCornerOverlap(false);
        }
        this.positiveColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_positive);
        this.negativeColor = Utils.getColorResource(this.mContext, R.color.dashboard_card_negative);
        updateCard();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-ScheduleCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m210xe9920643(View view) {
        cardClicked();
    }

    private void cardClicked() {
        FirebaseAnalytics.getInstance(this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_DASHBOARD_TAPPED_SCHEDULES_DASHBOARD_CARD.getTag(), null);
        DashboardScreenV2.mCanMoveCard = false;
        this.mContext.startActivity(ScheduleActivity.buildIntent(this.mContext));
    }

    public void updateCard() {
        VehicleModel selectedVehicle = this.mVehicleObserver.getSelectedVehicle();
        if (this.isSmallScreen) {
            this.mIcon.setLayoutParams(new RelativeLayout.LayoutParams(this.mContext.getResources().getDimensionPixelSize(R.dimen.icon_card_small_dimen), this.mContext.getResources().getDimensionPixelSize(R.dimen.icon_card_small_dimen)));
        }
        if (selectedVehicle != null) {
            this.mDisposables.add(getSchedulesObservable(selectedVehicle).doOnError(new Consumer() { // from class: com.texa.careapp.app.dashboard.card.ScheduleCardViewPresenter$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "updateCard#getSchedulesObservable() onError", new Object[0]);
                }
            }).compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.dashboard.card.ScheduleCardViewPresenter$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m212x1d768808((List) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.dashboard.card.ScheduleCardViewPresenter$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "ERROR SCHEDULE SUBSCRIPTION", new Object[0]);
                }
            }));
        }
    }

    /* JADX INFO: renamed from: lambda$updateCard$2$com-texa-careapp-app-dashboard-card-ScheduleCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m212x1d768808(List list) throws Exception {
        this.mSchedules.clear();
        this.mSchedules.addAll(list);
        this.countIsExpiring = Utils.getCountOfScheduleIsExpiringNotExpired(this.mSchedules);
        int countOfScheduleIsExpired = Utils.getCountOfScheduleIsExpired(this.mSchedules);
        this.countIsExpired = countOfScheduleIsExpired;
        if (countOfScheduleIsExpired > 0) {
            setNegativeCard();
        } else {
            setPositiveCard();
        }
    }

    private void setPositiveCard() {
        this.mIcon.setColorFilter(this.positiveColor);
        this.mButton.setTextColor(this.positiveColor);
        this.mDescription.setText(R.string.dashboard_card_schedule_positive_description);
        this.mTitle.setText(String.format(this.mContext.getString(R.string.dashboard_card_schedule_title_formatter), String.valueOf(this.countIsExpired)));
        this.mShortDescription.setText(String.format(this.mContext.getString(R.string.dashboard_card_schedule_short_description_formatter), String.valueOf(this.countIsExpiring)));
    }

    private void setNegativeCard() {
        this.mIcon.setColorFilter(this.negativeColor);
        this.mButton.setTextColor(this.negativeColor);
        this.mDescription.setText(R.string.dashboard_card_schedule_negative_description);
        this.mTitle.setText(String.format(this.mContext.getString(R.string.dashboard_card_schedule_title_formatter), String.valueOf(this.countIsExpired)));
        this.mShortDescription.setText(String.format(this.mContext.getString(R.string.dashboard_card_schedule_short_description_formatter), String.valueOf(this.countIsExpiring)));
    }

    private Observable<List<? extends IScheduleModel>> getSchedulesObservable(final VehicleModel vehicleModel) {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.app.dashboard.card.ScheduleCardViewPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m211x4eb1957a(vehicleModel, observableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getSchedulesObservable$4$com-texa-careapp-app-dashboard-card-ScheduleCardViewPresenter, reason: not valid java name */
    public /* synthetic */ void m211x4eb1957a(VehicleModel vehicleModel, ObservableEmitter observableEmitter) throws Exception {
        UserScheduleModel driverLicenseExpireDate;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(vehicleModel.getSchedulesForUser(this.mContext));
        UserModel userCached = this.mUserDataManager.getUserCached();
        if (userCached != null) {
            boolean z = false;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((IScheduleModel) it.next()).getType() == ScheduleType.LICENSE) {
                    z = true;
                }
            }
            if (!z && (driverLicenseExpireDate = Utils.getDriverLicenseExpireDate(userCached)) != null) {
                arrayList.add(driverLicenseExpireDate);
            }
        }
        observableEmitter.onNext(arrayList);
        observableEmitter.onComplete();
    }
}
