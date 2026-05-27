package com.texa.careapp.base;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.databinding.DataBindingUtil;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.dashboard.DashboardScreenV2;
import com.texa.careapp.app.diagnosis.DiagnosisActivity;
import com.texa.careapp.app.diagnosis.DiagnosisScreen;
import com.texa.careapp.app.ecodriving.EcoDrivingActivity;
import com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialActivity;
import com.texa.careapp.app.schedule.ScheduleActivity;
import com.texa.careapp.app.schedule.ScheduleScreen;
import com.texa.careapp.app.settings.SettingsActivity;
import com.texa.careapp.app.settings.services.SettingsServicesActivity;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.app.vehiclefinder.VehicleFinderActivity;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.checks.Check;
import com.texa.careapp.databinding.NavigationDrawerFragmentBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.views.DrawerAlertImageView;
import com.texa.careapp.views.RelativeTimeTextView;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.diagresources.DataID;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class NavigationDrawerFragment extends Fragment {
    private static final String PREF_USER_LEARNED_DRAWER = "navigation_drawer_learned";
    private static final String STATE_SELECTED_POSITION = "selected_navigation_drawer_position";
    private AlertDialog.Builder alertDialogBuilder;
    private ActionBarDrawerToggle mActionBarDrawerToggle;
    private CareApplication mCareApplication;

    @Inject
    protected Communication mCommunication;

    @Inject
    protected CommunicationObservable mCommunicationObserver;

    @Inject
    protected Context mContext;
    private int mCurrentSelectedPosition = 0;
    private final CompositeDisposable mDisposables = new CompositeDisposable();

    @Inject
    protected DongleDataManager mDongleDataManager;
    private DrawerAlertImageView mDrawerAlertImageView;
    private DrawerLayout mDrawerLayout;
    private List<TextView> mDrawerSelectableItems;

    @Inject
    protected EventBus mEventBus;
    private View mFragmentContainerView;
    private boolean mFromSavedInstanceState;
    private Navigator mNavigator;
    private RelativeTimeTextView mRelativeTimeTextView;
    private ImageView mServicesImageView;

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    protected SosFeatureManager mSosFeatureManager;
    private boolean mUserLearnedDrawer;
    private TextView mVehicleName;

    @Inject
    protected VehicleObserver mVehicleObserver;

    static /* synthetic */ void lambda$onCreateView$11(View view) {
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mCareApplication.component().inject(this);
        this.mUserLearnedDrawer = PreferenceManager.getDefaultSharedPreferences(getActivity()).getBoolean(PREF_USER_LEARNED_DRAWER, true);
        if (bundle != null) {
            this.mCurrentSelectedPosition = bundle.getInt(STATE_SELECTED_POSITION);
            this.mFromSavedInstanceState = true;
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        restoreItemSelection();
        this.mDisposables.add(this.mCommunicationObserver.observeConnectionStatus().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m537lambda$onResume$0$comtexacareappbaseNavigationDrawerFragment((CommunicationObservable.Status) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing care connection status", new Object[0]);
            }
        }));
        this.mVehicleName.setText(Utils.formatVehicleModel(this.mVehicleObserver.getSelectedVehicle()));
        this.mEventBus.register(this);
        this.mDisposables.add(this.mSosFeatureManager.observeChecksForServices().compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m538lambda$onResume$2$comtexacareappbaseNavigationDrawerFragment((Check.Result) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "error observing check for services", new Object[0]);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$onResume$0$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m537lambda$onResume$0$comtexacareappbaseNavigationDrawerFragment(CommunicationObservable.Status status) throws Exception {
        setLastParametersUpdateView();
    }

    /* JADX INFO: renamed from: lambda$onResume$2$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m538lambda$onResume$2$comtexacareappbaseNavigationDrawerFragment(Check.Result result) throws Exception {
        if (result == Check.Result.OK) {
            this.mDrawerAlertImageView.hide();
            this.mServicesImageView.setVisibility(4);
        } else {
            this.mDrawerAlertImageView.show();
            this.mServicesImageView.setVisibility(0);
        }
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
        Utils.safeDispose(this.mDisposables);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mCareApplication = (CareApplication) activity.getApplication();
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        NavigationDrawerFragmentBinding navigationDrawerFragmentBinding = (NavigationDrawerFragmentBinding) DataBindingUtil.inflate(layoutInflater, R.layout.navigation_drawer_fragment, viewGroup, false);
        ArrayList arrayList = new ArrayList();
        this.mDrawerSelectableItems = arrayList;
        arrayList.add(navigationDrawerFragmentBinding.drawerItemDashboard);
        navigationDrawerFragmentBinding.drawerItemDashboard.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m531xa09ec64(view);
            }
        });
        this.mDrawerSelectableItems.add(navigationDrawerFragmentBinding.drawerItemSchedule);
        navigationDrawerFragmentBinding.drawerItemSchedule.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m532x43d48e43(view);
            }
        });
        this.mDrawerSelectableItems.add(navigationDrawerFragmentBinding.drawerItemVehicleStatus);
        navigationDrawerFragmentBinding.drawerItemVehicleStatus.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m533x7d9f3022(view);
            }
        });
        this.mDrawerSelectableItems.add(navigationDrawerFragmentBinding.drawerItemVehicleFinder);
        navigationDrawerFragmentBinding.drawerItemVehicleFinder.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m534xb769d201(view);
            }
        });
        this.mDrawerSelectableItems.add(navigationDrawerFragmentBinding.drawerItemExtendeControls);
        navigationDrawerFragmentBinding.drawerServices.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m535xf13473e0(view);
            }
        });
        navigationDrawerFragmentBinding.drawerItemEcoDriving.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m536x2aff15bf(view);
            }
        });
        navigationDrawerFragmentBinding.drawerSettings.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m530x582e29eb(view);
            }
        });
        RelativeTimeTextView relativeTimeTextView = navigationDrawerFragmentBinding.lastOdbRead;
        this.mRelativeTimeTextView = relativeTimeTextView;
        relativeTimeTextView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavigationDrawerFragment.lambda$onCreateView$11(view);
            }
        });
        this.mVehicleName = navigationDrawerFragmentBinding.drawerItemVehicleName;
        return navigationDrawerFragmentBinding.getRoot();
    }

    /* JADX INFO: renamed from: lambda$onCreateView$4$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m531xa09ec64(View view) {
        onDashboardItemClicked();
    }

    /* JADX INFO: renamed from: lambda$onCreateView$5$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m532x43d48e43(View view) {
        onScheduleClicked();
    }

    /* JADX INFO: renamed from: lambda$onCreateView$6$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m533x7d9f3022(View view) {
        onVehicleStatusItemClicked();
    }

    /* JADX INFO: renamed from: lambda$onCreateView$7$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m534xb769d201(View view) {
        onVehicleFinderItemClicked();
    }

    /* JADX INFO: renamed from: lambda$onCreateView$8$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m535xf13473e0(View view) {
        onServicesItemClicked();
    }

    /* JADX INFO: renamed from: lambda$onCreateView$9$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m536x2aff15bf(View view) {
        onEcoDrivingItemClicked();
    }

    /* JADX INFO: renamed from: lambda$onCreateView$10$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m530x582e29eb(View view) {
        onSettingsClicked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLastParametersUpdateView() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            Timber.w("#setLastParametersUpdateView() - dongle model is null!", new Object[0]);
            return;
        }
        if (!isAdded() || getActivity() == null) {
            Timber.w("#setLastParametersUpdateView() - navigationDrawerFragment not attached to Activity", new Object[0]);
            return;
        }
        Long lastParametersUpdate = dongleModel.getLastParametersUpdate();
        if (this.mCommunication.getStatus() == CommunicationStatus.CONNECTED) {
            this.mRelativeTimeTextView.setReferenceTime(0L);
            this.mRelativeTimeTextView.setVisibility(0);
            this.mRelativeTimeTextView.setText(getString(R.string.currently_connected));
            return;
        }
        this.mRelativeTimeTextView.setPrefix(getResources().getString(R.string.last_read) + " ");
        if (lastParametersUpdate != null) {
            Timber.d("Parameters update: %s", lastParametersUpdate);
            this.mRelativeTimeTextView.setReferenceTime(lastParametersUpdate.longValue());
            this.mRelativeTimeTextView.setVisibility(0);
            return;
        }
        this.mRelativeTimeTextView.setVisibility(4);
    }

    public boolean isDrawerOpen() {
        DrawerLayout drawerLayout = this.mDrawerLayout;
        return drawerLayout != null && drawerLayout.isDrawerOpen(this.mFragmentContainerView);
    }

    public void setup(int i, DrawerLayout drawerLayout, Toolbar toolbar, Navigator navigator) {
        this.mFragmentContainerView = (View) getActivity().findViewById(i).getParent();
        this.mDrawerLayout = drawerLayout;
        this.mNavigator = navigator;
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(getActivity(), this.mDrawerLayout, toolbar, R.string.drawer_open, R.string.drawer_close) { // from class: com.texa.careapp.base.NavigationDrawerFragment.1
            @Override // androidx.appcompat.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerClosed(View view) {
                super.onDrawerClosed(view);
                if (NavigationDrawerFragment.this.isAdded()) {
                    NavigationDrawerFragment.this.getActivity().invalidateOptionsMenu();
                }
            }

            @Override // androidx.appcompat.app.ActionBarDrawerToggle, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerOpened(View view) {
                super.onDrawerOpened(view);
                FirebaseAnalytics.getInstance(NavigationDrawerFragment.this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_OPENED_SIDE_MENU.getTag(), null);
                if (NavigationDrawerFragment.this.isAdded()) {
                    if (!NavigationDrawerFragment.this.mUserLearnedDrawer) {
                        NavigationDrawerFragment.this.mUserLearnedDrawer = true;
                        PreferenceManager.getDefaultSharedPreferences(NavigationDrawerFragment.this.getActivity()).edit().putBoolean(NavigationDrawerFragment.PREF_USER_LEARNED_DRAWER, true).apply();
                    }
                    NavigationDrawerFragment.this.getActivity().invalidateOptionsMenu();
                    NavigationDrawerFragment.this.setLastParametersUpdateView();
                }
            }
        };
        this.mActionBarDrawerToggle = actionBarDrawerToggle;
        actionBarDrawerToggle.setDrawerIndicatorEnabled(false);
        ImageView imageView = (ImageView) getActivity().findViewById(R.id.drawer_icon);
        this.mDrawerAlertImageView = (DrawerAlertImageView) getActivity().findViewById(R.id.drawer_alert_icon);
        this.mServicesImageView = (ImageView) getActivity().findViewById(R.id.drawer_services_icon);
        imageView.setVisibility(0);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m539lambda$setup$12$comtexacareappbaseNavigationDrawerFragment(view);
            }
        });
        if (!this.mUserLearnedDrawer && !this.mFromSavedInstanceState) {
            this.mDrawerLayout.openDrawer(this.mFragmentContainerView);
        }
        this.mDrawerLayout.post(new Runnable() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m540lambda$setup$13$comtexacareappbaseNavigationDrawerFragment();
            }
        });
        this.mDrawerLayout.addDrawerListener(this.mActionBarDrawerToggle);
    }

    /* JADX INFO: renamed from: lambda$setup$12$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m539lambda$setup$12$comtexacareappbaseNavigationDrawerFragment(View view) {
        if (this.mDrawerLayout.isDrawerVisible(GravityCompat.START)) {
            this.mDrawerLayout.closeDrawer(GravityCompat.START);
        } else {
            this.mDrawerLayout.openDrawer(GravityCompat.START);
        }
    }

    /* JADX INFO: renamed from: lambda$setup$13$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m540lambda$setup$13$comtexacareappbaseNavigationDrawerFragment() {
        this.mActionBarDrawerToggle.syncState();
    }

    public void closeDrawer() {
        this.mDrawerLayout.closeDrawer(this.mFragmentContainerView);
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(STATE_SELECTED_POSITION, this.mCurrentSelectedPosition);
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mActionBarDrawerToggle.onConfigurationChanged(configuration);
    }

    private void onDashboardItemClicked() {
        closeDrawer();
        if (checkSelection(R.id.drawer_item_dashboard)) {
            return;
        }
        setSelection(R.id.drawer_item_dashboard);
        this.mNavigator.clearBackStack();
        DashboardScreenV2.mCanMoveCard = false;
        this.mNavigator.goTo(new DashboardScreenV2(this.mCareApplication));
    }

    private void onServicesItemClicked() {
        FirebaseAnalytics.getInstance(this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SIDE_MENU_TAPPED_AVAILABLE_SERVICES_SIDE_MENU_ITEM.getTag(), null);
        closeDrawer();
        setSelection(R.id.drawer_services);
        DashboardScreenV2.mCanMoveCard = false;
        Intent intentBuildIntent = SettingsServicesActivity.buildIntent(this.mContext);
        intentBuildIntent.addFlags(268435456);
        this.mContext.startActivity(intentBuildIntent);
    }

    private void onVehicleStatusItemClicked() {
        FirebaseAnalytics.getInstance(this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SIDE_MENU_TAPPED_DIAGNOSIS_SIDE_MENU_ITEM.getTag(), null);
        closeDrawer();
        setSelection(R.id.drawer_item_vehicle_status);
        DashboardScreenV2.mCanMoveCard = false;
        startActivity(DiagnosisActivity.buildIntent(this.mContext));
    }

    private void onEcoDrivingItemClicked() {
        closeDrawer();
        setSelection(R.id.drawer_item_eco_driving);
        if (!this.mSharedPreferences.getBoolean(Constants.PREFS_KEY_ECO_DRIVING_TUTORIAL, false)) {
            startActivity(EcoDrivingTutorialActivity.buildIntent(this.mContext));
        } else {
            startActivity(EcoDrivingActivity.buildIntent(this.mContext));
        }
    }

    private void onVehicleFinderItemClicked() {
        FirebaseAnalytics.getInstance(this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SIDE_MENU_TAPPED_FIND_VEHICLE_SIDE_MENU.getTag(), null);
        HashMap<String, Double> lastLocation = this.mVehicleObserver.getSelectedVehicle() != null ? this.mVehicleObserver.getSelectedVehicle().getLastLocation() : null;
        if (this.mCommunication.getStatus() == CommunicationStatus.CONNECTED) {
            vehicleNotFoundDialog(getActivity().getResources().getString(R.string.dialog_find_vehicle_connected));
            return;
        }
        if (lastLocation == null) {
            vehicleNotFoundDialog(getActivity().getResources().getString(R.string.vehicle_not_found_at_the_moment));
            return;
        }
        if (this.mCommunication.getStatus() == CommunicationStatus.CONNECTED && isSpeedOver10()) {
            vehicleNotFoundDialog(getActivity().getResources().getString(R.string.dialog_find_vehicle_connected));
            return;
        }
        closeDrawer();
        DashboardScreenV2.mCanMoveCard = false;
        Intent intent = new Intent(getActivity(), (Class<?>) VehicleFinderActivity.class);
        intent.addFlags(268435456);
        getActivity().startActivity(intent);
    }

    public boolean isSpeedOver10() {
        VehicleModel currentVehicle = this.mVehicleObserver.getCurrentVehicle();
        VehicleParam vehicleParamById = currentVehicle != null ? currentVehicle.getVehicleParamById(DataID.Parameter.VEHICLE_SPEED.getId()) : null;
        return (vehicleParamById == null || vehicleParamById.getValueNumeric() == null || vehicleParamById.getValueNumeric().doubleValue() <= 10.0d) ? false : true;
    }

    public void vehicleNotFoundDialog(String str) {
        if (this.alertDialogBuilder == null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            this.alertDialogBuilder = builder;
            builder.setTitle(getActivity().getResources().getString(R.string.vehicle_finder));
            this.alertDialogBuilder.setMessage(str).setCancelable(false).setPositiveButton(getActivity().getString(android.R.string.ok), new DialogInterface.OnClickListener() { // from class: com.texa.careapp.base.NavigationDrawerFragment$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.m541x5c03ae30(dialogInterface, i);
                }
            });
            this.alertDialogBuilder.create().show();
        }
    }

    /* JADX INFO: renamed from: lambda$vehicleNotFoundDialog$14$com-texa-careapp-base-NavigationDrawerFragment, reason: not valid java name */
    public /* synthetic */ void m541x5c03ae30(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.alertDialogBuilder = null;
    }

    private void onScheduleClicked() {
        FirebaseAnalytics.getInstance(this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SIDE_MENU_TAPPED_SCHEDULES_SIDE_MENU_ITEM.getTag(), null);
        closeDrawer();
        setSelection(R.id.drawer_item_schedule);
        DashboardScreenV2.mCanMoveCard = false;
        this.mContext.startActivity(ScheduleActivity.buildIntent(this.mContext));
    }

    private void onSettingsClicked() {
        FirebaseAnalytics.getInstance(this.mContext).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SIDE_MENU_TAPPED_SETTINGS_SIDE_MENU_ITEM.getTag(), null);
        DashboardScreenV2.mCanMoveCard = false;
        setSelection(R.id.drawer_settings);
        getActivity().startActivity(new Intent(this.mCareApplication.getApplicationContext(), (Class<?>) SettingsActivity.class));
        closeDrawer();
    }

    private void setSelection(int i) {
        for (TextView textView : this.mDrawerSelectableItems) {
            if (textView.getId() == i) {
                textView.setSelected(true);
            } else {
                textView.setSelected(false);
            }
        }
    }

    private boolean checkSelection(int i) {
        for (TextView textView : this.mDrawerSelectableItems) {
            if (textView.getId() == i && textView.isSelected()) {
                return true;
            }
        }
        return false;
    }

    private void restoreItemSelection() {
        Screen currentScreen = this.mNavigator.getCurrentScreen();
        if (currentScreen == null) {
            return;
        }
        if (currentScreen instanceof ScheduleScreen) {
            setSelection(R.id.drawer_item_schedule);
        } else if (currentScreen instanceof DashboardScreenV2) {
            setSelection(R.id.drawer_item_dashboard);
        } else if (currentScreen instanceof DiagnosisScreen) {
            setSelection(R.id.drawer_item_vehicle_status);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(VehicleObserver.VehicleChangedEvent vehicleChangedEvent) {
        this.mVehicleName.setText(Utils.formatVehicleModel(vehicleChangedEvent.getVehicleModel()));
    }
}
