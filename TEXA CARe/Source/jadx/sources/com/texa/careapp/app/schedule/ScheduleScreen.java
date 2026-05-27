package com.texa.careapp.app.schedule;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.ShowAllDeleteButtonEvent;
import com.texa.careapp.app.events.ShowProgressEvent;
import com.texa.careapp.app.events.UserUpdatedEvent;
import com.texa.careapp.app.schedule.addThreshold.AddNewThresholdActivity;
import com.texa.careapp.app.settings.SettingsActivity;
import com.texa.careapp.databinding.ScreenScheduleGridBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.HeaderScheduleModel;
import com.texa.careapp.model.IScheduleModel;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.response.VehicleResponse;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.utils.comparators.IScheduleModelComparator;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ScheduleScreen extends Screen {
    private SchedulesAdapter mAdapter;

    @Inject
    protected Context mContext;
    private LinearLayout mEmptyView;

    @Inject
    protected EventBus mEventBus;
    private Navigator mNavigator;
    private RecyclerView mRecyclerView;

    @Inject
    protected ScheduleDataManager mScheduleDataManager;

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;

    @Inject
    protected UserDataManager mUserDataManager;

    @Inject
    protected VehicleDataManager mVehicleDataManager;

    @Inject
    protected VehicleObserver mVehicleObserver;
    private SwipeRefreshLayout swipeRefreshLayout;
    private List<IScheduleModel> mSchedules = new ArrayList();
    private final CompositeDisposable mDisposable = new CompositeDisposable();
    private final IScheduleModelComparator mIScheduleModelComparator = new IScheduleModelComparator();

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "schedule";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_schedule_grid;
    }

    @Override // com.texa.care.navigation.Screen
    public int getTitle() {
        return R.string.schedule;
    }

    public SchedulesAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        Navigator navigator = getNavigator();
        this.mNavigator = navigator;
        ((CareApplication) navigator.getApplication()).component().inject(this);
        ScreenScheduleGridBinding screenScheduleGridBinding = (ScreenScheduleGridBinding) DataBindingUtil.bind(view);
        this.mRecyclerView = screenScheduleGridBinding.screenScheduleRecycler;
        this.mEmptyView = screenScheduleGridBinding.emptyView;
        this.swipeRefreshLayout = screenScheduleGridBinding.screenScheduleRefresh;
        screenScheduleGridBinding.gotoSettings.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.ScheduleScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m342xe6e6168e(view2);
            }
        });
        screenScheduleGridBinding.addNewScheduleFloatingButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.ScheduleScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m343xa05da42d(view2);
            }
        });
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OPENED_SCHEDULES_SCREEN.getTag(), null);
        this.mEventBus.register(this);
        this.mRecyclerView.setLayoutManager(getLayoutManager());
        this.mRecyclerView.setItemAnimator(null);
        this.mAdapter = new SchedulesAdapter(this.mSchedules, this.mNavigator);
        this.swipeRefreshLayout.setColorSchemeResources(R.color.sos_settings_card_background_color_positive, R.color.sos_settings_card_background_color_pending, R.color.sos_settings_card_background_color_negative);
        this.swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.texa.careapp.app.schedule.ScheduleScreen$$ExternalSyntheticLambda2
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                this.f$0.syncSchedules();
            }
        });
        this.mEmptyView.setVisibility(4);
        syncSchedules();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-schedule-ScheduleScreen, reason: not valid java name */
    public /* synthetic */ void m342xe6e6168e(View view) {
        gotoSettingsClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-schedule-ScheduleScreen, reason: not valid java name */
    public /* synthetic */ void m343xa05da42d(View view) {
        gotoAddNewScheduleClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncSchedules() {
        if (this.mVehicleObserver.getSelectedVehicle() != null) {
            this.mDisposable.add(this.mTexaCareApiServiceUser.getVehicleDetailsObservable(this.mVehicleObserver.getSelectedVehicle().getUid()).compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.schedule.ScheduleScreen$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m344xe7280e9b((VehicleResponse) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.schedule.ScheduleScreen$$ExternalSyntheticLambda7
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "error syncing schedules", new Object[0]);
                }
            }));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b9 A[PHI: r8
      0x00b9: PHI (r8v4 androidx.swiperefreshlayout.widget.SwipeRefreshLayout) = 
      (r8v3 androidx.swiperefreshlayout.widget.SwipeRefreshLayout)
      (r8v7 androidx.swiperefreshlayout.widget.SwipeRefreshLayout)
     binds: [B:36:0x00b7, B:29:0x00ac] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: lambda$syncSchedules$2$com-texa-careapp-app-schedule-ScheduleScreen, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void m344xe7280e9b(VehicleResponse vehicleResponse) throws Exception {
        SwipeRefreshLayout swipeRefreshLayout;
        VehicleModel selectedVehicle = this.mVehicleDataManager.getSelectedVehicle();
        try {
            try {
                List<VehicleResponse.Deadline> list = vehicleResponse.vehicle.deadlines;
                selectedVehicle.deleteSchedules();
                if (!Utils.isEmpty(list) || !Utils.isEmpty(getVehicleSchedulesList())) {
                    this.mEmptyView.setVisibility(4);
                    for (VehicleResponse.Deadline deadline : list) {
                        if (!this.mSharedPreferences.getString(Constants.CARE_ENVIRONMENT, "").equals(Constants.VIN_MISMATCH_ENVIRONMENT)) {
                            selectedVehicle.updateSchedule(deadline);
                        }
                    }
                    this.mAdapter.notifyDataSetChanged();
                } else {
                    this.mEmptyView.setVisibility(0);
                    this.mAdapter.notifyDataSetChanged();
                }
                HashMap<String, VehicleResponse.Threshold> map = vehicleResponse.vehicle.thresholds;
                for (String str : map.keySet()) {
                    if (str == null) {
                        Timber.w("threshold type is null, skipping", new Object[0]);
                    } else {
                        try {
                            VehicleResponse.Threshold threshold = map.get(str);
                            ThresholdModel threshold2 = selectedVehicle.getThreshold(ThresholdModel.Type.getValueOf(str), getContext());
                            threshold2.setDate(threshold.date);
                            threshold2.setOdometer(threshold.odometer);
                            Utils.safeModelSave(threshold2, getContext());
                        } catch (IllegalArgumentException e) {
                            Timber.w(e, "threshold type not found", new Object[0]);
                        }
                    }
                }
                swipeRefreshLayout = this.swipeRefreshLayout;
            } catch (DatabaseIOException e2) {
                e2.printStackTrace();
                swipeRefreshLayout = this.swipeRefreshLayout;
                if (swipeRefreshLayout != null) {
                }
            }
            if (swipeRefreshLayout != null) {
                swipeRefreshLayout.setRefreshing(false);
            }
            displaySchedules();
        } catch (Throwable th) {
            SwipeRefreshLayout swipeRefreshLayout2 = this.swipeRefreshLayout;
            if (swipeRefreshLayout2 != null) {
                swipeRefreshLayout2.setRefreshing(false);
            }
            throw th;
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        updateSchedulesWithDelay();
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        this.mEventBus.unregister(this);
        Utils.safeDispose(this.mDisposable);
    }

    private void displaySchedules() {
        this.mSchedules.clear();
        this.mSchedules.addAll(getVehicleSchedulesList());
        if (this.mSchedules.isEmpty() || this.mRecyclerView == null) {
            return;
        }
        this.mIScheduleModelComparator.sort(this.mSchedules);
        addHeaders(this.mSchedules);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mAdapter.notifyDataSetChanged();
    }

    private List<IScheduleModel> getVehicleSchedulesList() {
        return this.mScheduleDataManager.getIScheduleModels(this.mVehicleDataManager.getSelectedVehicle() != null ? this.mVehicleDataManager.getSelectedVehicle() : this.mVehicleDataManager.getVehicleByHwId(), getContext());
    }

    protected void addHeaders(List<IScheduleModel> list) {
        if (list.size() > 0) {
            ListIterator<IScheduleModel> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                if (!listIterator.hasPrevious()) {
                    listIterator.add(getHeader(list.get(listIterator.nextIndex()).getExpiringStatus()));
                } else {
                    IScheduleModel iScheduleModel = list.get(listIterator.nextIndex());
                    IScheduleModel iScheduleModel2 = list.get(listIterator.previousIndex());
                    if (iScheduleModel.getExpiringStatus() != iScheduleModel2.getExpiringStatus() && (iScheduleModel2.getExpiringStatus() != 0 || iScheduleModel.getExpiringStatus() != 1)) {
                        listIterator.add(getHeader(iScheduleModel.getExpiringStatus()));
                    }
                }
                listIterator.next();
            }
        }
    }

    private HeaderScheduleModel getHeader(int i) {
        if (i == -1) {
            return getExpireHeader();
        }
        if (i == 0 || i == 1) {
            return getNotExpireHeader();
        }
        if (i == 2) {
            return getFarExpireHeader();
        }
        throw new IllegalArgumentException("scheduleModel.getExpiringStatus can't be: " + i);
    }

    protected HeaderScheduleModel getExpireHeader() {
        HeaderScheduleModel headerScheduleModel = new HeaderScheduleModel();
        headerScheduleModel.setMTitle(this.mContext.getString(R.string.expired_schedules));
        return headerScheduleModel;
    }

    protected HeaderScheduleModel getNotExpireHeader() {
        HeaderScheduleModel headerScheduleModel = new HeaderScheduleModel();
        headerScheduleModel.setMTitle(this.mContext.getString(R.string.near_schedules));
        return headerScheduleModel;
    }

    protected HeaderScheduleModel getFarExpireHeader() {
        HeaderScheduleModel headerScheduleModel = new HeaderScheduleModel();
        headerScheduleModel.setMTitle(this.mContext.getString(R.string.far_schedules));
        return headerScheduleModel;
    }

    private void updateSchedulesWithDelay() {
        this.mDisposable.add(Single.timer(4L, TimeUnit.SECONDS).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.schedule.ScheduleScreen$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m345x2cf09bd6((Disposable) obj);
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.schedule.ScheduleScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m346xe6682975((Long) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.schedule.ScheduleScreen$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m347x9fdfb714((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$updateSchedulesWithDelay$4$com-texa-careapp-app-schedule-ScheduleScreen, reason: not valid java name */
    public /* synthetic */ void m345x2cf09bd6(Disposable disposable) throws Exception {
        this.mEventBus.post(new ShowProgressEvent());
    }

    /* JADX INFO: renamed from: lambda$updateSchedulesWithDelay$5$com-texa-careapp-app-schedule-ScheduleScreen, reason: not valid java name */
    public /* synthetic */ void m346xe6682975(Long l) throws Exception {
        this.mEventBus.post(new CancelProgressEvent());
        syncSchedules();
    }

    /* JADX INFO: renamed from: lambda$updateSchedulesWithDelay$6$com-texa-careapp-app-schedule-ScheduleScreen, reason: not valid java name */
    public /* synthetic */ void m347x9fdfb714(Throwable th) throws Exception {
        this.mEventBus.post(new CancelProgressEvent());
    }

    private RecyclerView.LayoutManager getLayoutManager() {
        return new GridLayoutManager(getContext(), 1, 1, false);
    }

    public void gotoSettingsClicked() {
        Intent intent = new Intent(this.mNavigator.getApplication(), (Class<?>) SettingsActivity.class);
        intent.addFlags(268435456);
        this.mNavigator.getApplication().startActivity(intent);
    }

    public void gotoAddNewScheduleClicked() {
        FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SCHEDULES_TAPPED_ADD_SCHEDULE_BUTTON.getTag(), null);
        this.mContext.startActivity(AddNewThresholdActivity.buildIntent(this.mContext, 1));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(VehicleObserver.VehicleChangedEvent vehicleChangedEvent) {
        Timber.d("vehicleChangeEvent", new Object[0]);
        displaySchedules();
        this.mEventBus.post(new CancelProgressEvent());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(UserUpdatedEvent userUpdatedEvent) {
        Timber.d("vehicleChangeEvent", new Object[0]);
        updateSchedulesWithDelay();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(ShowAllDeleteButtonEvent showAllDeleteButtonEvent) {
        for (IScheduleModel iScheduleModel : this.mSchedules) {
            if (Utils.isScheduleEditableByUser(iScheduleModel)) {
                iScheduleModel.setDeletable(true);
            }
        }
        SchedulesAdapter schedulesAdapter = this.mAdapter;
        schedulesAdapter.notifyItemRangeChanged(0, schedulesAdapter.getItemCount());
    }
}
