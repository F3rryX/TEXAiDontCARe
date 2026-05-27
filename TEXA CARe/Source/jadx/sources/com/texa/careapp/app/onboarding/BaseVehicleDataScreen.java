package com.texa.careapp.app.onboarding;

import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.activeandroid.ActiveAndroid;
import com.google.android.material.textfield.TextInputLayout;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.auth.OnBoardingSkipVehicleInsertionDialog;
import com.texa.careapp.app.onboarding.adapters.VehiclePlateAdapter;
import com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog;
import com.texa.careapp.dagger.AuthenticationClient;
import com.texa.careapp.dagger.ClientId;
import com.texa.careapp.dagger.ClientSecret;
import com.texa.careapp.databinding.ScreenBaseVehicleDataBinding;
import com.texa.careapp.model.SelectionModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.networking.response.UserVehicleListResponse;
import com.texa.careapp.networking.response.VehicleSelectionResponse;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.ProgressDialogFragment;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.authentication.AccessToken;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: loaded from: classes2.dex */
public class BaseVehicleDataScreen extends Screen {
    private Disposable callApi;

    @Inject
    @AuthenticationClient
    protected AccessTokenPersistenceManager mAccessTokenPersistenceManagerClient;
    private OnBoardingActivity mActivity;
    private CareApplication mCareApplication;

    @Inject
    @ClientId
    protected String mClientId;

    @Inject
    @ClientSecret
    protected String mClientSecret;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected FormValidator mFormValidator;

    @Inject
    protected LoginHelperRx mLogInHelper;
    private EditText mModel;
    private TextInputLayout mModelInput;
    private AutoCompleteTextView mPlate;
    private TextInputLayout mPlateInput;
    private ProgressDialogFragment mProgressDialogFragment;
    private String mSelectedVehicleBrand;
    private String mSelectedVehicleModel;
    private String mSelectedVehiclePlate;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;

    @Inject
    protected TexaCareAuthService mTexaCareAuthService;

    @Inject
    protected VehicleDataManager mVehicleDataManager;
    private VehicleModel mVehicleModel;
    private String selected;
    private List<VehicleModel> vehicles = new ArrayList();
    private List<SelectionModel> selections = new ArrayList();
    private List<String> plates = new ArrayList();

    static /* synthetic */ void lambda$onResume$8(Observable observable) throws Exception {
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_base_vehicle_data;
    }

    public BaseVehicleDataScreen(CareApplication careApplication, OnBoardingActivity onBoardingActivity) {
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        this.mActivity = onBoardingActivity;
        this.mSelectedVehiclePlate = onBoardingActivity.getPlate();
        this.mSelectedVehicleBrand = onBoardingActivity.getBrand();
        this.mSelectedVehicleModel = onBoardingActivity.getModel();
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenBaseVehicleDataBinding screenBaseVehicleDataBinding = (ScreenBaseVehicleDataBinding) DataBindingUtil.bind(view);
        this.mPlateInput = screenBaseVehicleDataBinding.screenBaseVehicleDataPlateInput;
        this.mModelInput = screenBaseVehicleDataBinding.screenBaseVehicleDataVehicleModelInput;
        this.mPlate = screenBaseVehicleDataBinding.screenBaseVehicleDataPlateEditText;
        this.mModel = screenBaseVehicleDataBinding.screenBaseVehicleDataVehicleModelEditText;
        screenBaseVehicleDataBinding.screenBaseVehicleSkipVehicleInsertionLabel.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m256x9f1c64ea(view2);
            }
        });
        screenBaseVehicleDataBinding.screenBaseVehicleDataNextLayout.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m257xc870ba2b(view2);
            }
        });
        this.mPlateInput.setErrorEnabled(true);
        this.mModelInput.setErrorEnabled(true);
        this.mModel.setClickable(true);
        this.mModel.setFocusable(false);
        this.mModel.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m258xf1c50f6c(view2);
            }
        });
        if (!Utils.isEmpty(this.mSelectedVehiclePlate)) {
            this.mPlate.setText(this.mSelectedVehiclePlate);
        }
        if (!Utils.isEmpty(this.mSelectedVehicleBrand) && !Utils.isEmpty(this.mSelectedVehicleModel)) {
            this.mModel.setText(this.mSelectedVehicleBrand + " " + formatVehicleSelected(this.mSelectedVehicleModel));
        }
        this.mPlate.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda5
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.m259x1b1964ad(textView, i, keyEvent);
            }
        });
        initPlateAdapter();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-BaseVehicleDataScreen, reason: not valid java name */
    public /* synthetic */ void m256x9f1c64ea(View view) {
        goTo(new OnBoardingSkipVehicleInsertionDialog(this.mActivity, this.mCareApplication));
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-BaseVehicleDataScreen, reason: not valid java name */
    public /* synthetic */ void m257xc870ba2b(View view) {
        onNext();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-onboarding-BaseVehicleDataScreen, reason: not valid java name */
    public /* synthetic */ void m258xf1c50f6c(View view) {
        goTo(new VehicleScreenDialog(this.mCareApplication, this.mActivity, this.vehicles));
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$3$com-texa-careapp-app-onboarding-BaseVehicleDataScreen, reason: not valid java name */
    public /* synthetic */ boolean m259x1b1964ad(TextView textView, int i, KeyEvent keyEvent) {
        closeKeyboard(textView);
        return false;
    }

    private void insertSelection() {
        new Thread(new Runnable() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m263xac6875b1();
            }
        }).start();
    }

    /* JADX INFO: renamed from: lambda$insertSelection$4$com-texa-careapp-app-onboarding-BaseVehicleDataScreen, reason: not valid java name */
    public /* synthetic */ void m263xac6875b1() {
        ActiveAndroid.beginTransaction();
        Iterator<SelectionModel> it = this.selections.iterator();
        while (it.hasNext()) {
            it.next().save();
        }
        ActiveAndroid.setTransactionSuccessful();
        ActiveAndroid.endTransaction();
    }

    private void initPlateAdapter() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m262x1c331003();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$initPlateAdapter$6$com-texa-careapp-app-onboarding-BaseVehicleDataScreen, reason: not valid java name */
    public /* synthetic */ void m262x1c331003() {
        this.mPlate.setAdapter(new VehiclePlateAdapter(this.mActivity, R.layout.adapter_autocomplete_plate, this.plates));
        this.mPlate.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda4
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.m261xf2debac2(adapterView, view, i, j);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$initPlateAdapter$5$com-texa-careapp-app-onboarding-BaseVehicleDataScreen, reason: not valid java name */
    public /* synthetic */ void m261xf2debac2(AdapterView adapterView, View view, int i, long j) {
        this.selected = (String) adapterView.getItemAtPosition(i);
        for (VehicleModel vehicleModel : this.vehicles) {
            if (vehicleModel.getPlate().equals(this.selected)) {
                this.mModel.setText(formatVehicleSelected(vehicleModel.getVehicleInfo()));
                AutoCompleteTextView autoCompleteTextView = this.mPlate;
                if (autoCompleteTextView != null) {
                    closeKeyboard(autoCompleteTextView);
                }
            }
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
        if (this.vehicles.isEmpty()) {
            createProgressDialogScreen();
            this.callApi = this.mTexaCareAuthService.getClientToken(TexaCareAuthService.GRANT_TYPE_CLIENT_CREDENTIALS, this.mClientId, this.mClientSecret).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).flatMap(new Function() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda9
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f$0.m264xd368fa7((AccessToken) obj);
                }
            }).subscribe(new Consumer() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda8
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    BaseVehicleDataScreen.lambda$onResume$8((Observable) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda7
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m265x5fdf3a29((Throwable) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$onResume$7$com-texa-careapp-app-onboarding-BaseVehicleDataScreen, reason: not valid java name */
    public /* synthetic */ ObservableSource m264xd368fa7(AccessToken accessToken) throws Exception {
        this.mAccessTokenPersistenceManagerClient.persist(accessToken);
        return getSelectionObservable();
    }

    /* JADX INFO: renamed from: lambda$onResume$9$com-texa-careapp-app-onboarding-BaseVehicleDataScreen, reason: not valid java name */
    public /* synthetic */ void m265x5fdf3a29(Throwable th) throws Exception {
        th.printStackTrace();
        dismissProgressDialogScreen();
    }

    private Observable<Observable<Object>> getSelectionObservable() {
        return Observable.zip(this.mTexaCareApiServiceUser.getUserVehicleList(), this.mTexaCareApiServiceUser.getVehiclesSelection(), new BiFunction() { // from class: com.texa.careapp.app.onboarding.BaseVehicleDataScreen$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return this.f$0.m260xab44a2b8((UserVehicleListResponse) obj, (VehicleSelectionResponse) obj2);
            }
        }).subscribeOn(Schedulers.io());
    }

    /* JADX INFO: renamed from: lambda$getSelectionObservable$10$com-texa-careapp-app-onboarding-BaseVehicleDataScreen, reason: not valid java name */
    public /* synthetic */ Observable m260xab44a2b8(UserVehicleListResponse userVehicleListResponse, VehicleSelectionResponse vehicleSelectionResponse) throws Exception {
        VehicleModel currentVehicle = this.mVehicleDataManager.getCurrentVehicle();
        for (UserVehicleListResponse.UserVehicleData userVehicleData : userVehicleListResponse.userVehicleDataList) {
            if (currentVehicle == null || !currentVehicle.getUid().equals(userVehicleData.vehicleId)) {
                this.plates.add(userVehicleData.plate);
                VehicleModel vehicleModel = new VehicleModel();
                vehicleModel.setPlate(userVehicleData.plate);
                vehicleModel.setDescription(userVehicleData.description);
                if (userVehicleData.selectionData != null) {
                    vehicleModel.setModelName(userVehicleData.selectionData.getSelectionModel());
                    vehicleModel.setBrandName(userVehicleData.selectionData.getSelectionBrand());
                }
                this.vehicles.add(vehicleModel);
            }
        }
        Iterator<VehicleSelectionResponse.SelectionObject> it = vehicleSelectionResponse.getList().iterator();
        while (it.hasNext()) {
            List<VehicleSelectionResponse.Selection> selections = it.next().getSelections();
            SelectionModel selectionModel = new SelectionModel();
            for (VehicleSelectionResponse.Selection selection : selections) {
                selectionModel.setBrandId(selection.getBrandId());
                if (selection.getFragmentId() != null) {
                    selectionModel.setSelectionId(selection.getFragmentId());
                    selectionModel.setModel(selection.getValue());
                } else {
                    selectionModel.setBrand(selection.getValue());
                }
            }
            if (!this.selections.contains(selectionModel)) {
                selectionModel.setDescription(Utils.formatDescription(selectionModel.getBrand(), selectionModel.getModel()));
                this.selections.add(selectionModel);
            }
        }
        initPlateAdapter();
        dismissProgressDialogScreen();
        insertSelection();
        return Observable.empty();
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
        if (this.callApi.isDisposed()) {
            return;
        }
        this.callApi.dispose();
    }

    private void onNext() {
        if (this.mFormValidator.validateRequiredField(this.mModelInput, this.mModel) && this.mFormValidator.validateRequiredField(this.mPlateInput, this.mPlate)) {
            VehicleModel vehicleModel = this.mVehicleModel;
            if (vehicleModel == null) {
                if (!Utils.isEmpty(this.mActivity.getDescription())) {
                    String[] strArrSplit = this.mActivity.getDescription().split(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR));
                    this.mActivity.setBrand(strArrSplit[0]);
                    this.mActivity.setModel(Utils.formatVehicleModel(strArrSplit[1]));
                } else {
                    getVehicleByPlate(this.selected);
                    this.mActivity.setBrand(this.mVehicleModel.getBrandName());
                    this.mActivity.setModel(Utils.formatVehicleModel(this.mVehicleModel));
                    this.mActivity.setDescription(this.mVehicleModel.getBrandName() + Constants.VEHICLE_DESCRIPTION_SEPARATOR + Utils.formatVehicleModel(this.mVehicleModel.getModelName()));
                }
            } else if (vehicleModel.getBrandName() == null || this.mVehicleModel.getModelName() == null) {
                String[] strArrSplit2 = this.mVehicleModel.getDescription().split(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR));
                this.mActivity.setBrand(strArrSplit2[0]);
                this.mActivity.setModel(Utils.formatVehicleModel(strArrSplit2[1]));
            } else {
                this.mActivity.setBrand(this.mVehicleModel.getBrandName());
                this.mActivity.setModel(this.mVehicleModel.getModelName());
            }
            this.mActivity.setPlate(this.mPlate.getText().toString());
            closeKeyboard(this.mModel);
            getNavigator().goTo(new InstallationHelpScreen(this.mCareApplication, this.mActivity, false));
        }
    }

    private void getVehicleByPlate(String str) {
        for (VehicleModel vehicleModel : this.vehicles) {
            if (vehicleModel.getPlate().equalsIgnoreCase(str)) {
                this.mVehicleModel = vehicleModel;
            }
        }
    }

    private void closeKeyboard(View view) {
        ((InputMethodManager) this.mActivity.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    @Subscribe
    public void onEvent(VehicleScreenDialog.VehicleSelectedEvent vehicleSelectedEvent) {
        if (Utils.isEmpty(vehicleSelectedEvent.getPlate()) || (Utils.isEmpty(vehicleSelectedEvent.getVehicle()) && vehicleSelectedEvent.getSelectionModel() != null)) {
            this.mActivity.setDescription(vehicleSelectedEvent.getSelectionModel().getBrand() + Constants.VEHICLE_DESCRIPTION_SEPARATOR + Utils.formatVehicleModel(vehicleSelectedEvent.getSelectionModel().getModel()));
        } else if (vehicleSelectedEvent.getUserVehicle() != null) {
            this.mVehicleModel = vehicleSelectedEvent.getUserVehicle();
            this.mActivity.setDescription(vehicleSelectedEvent.getUserVehicle().getDescription());
        }
        if (!Utils.isEmpty(vehicleSelectedEvent.getVehicle())) {
            this.mModel.setText(formatVehicleSelected(vehicleSelectedEvent.getVehicle()));
            this.mPlate.setText(vehicleSelectedEvent.getPlate());
            return;
        }
        this.mActivity.setDescription(this.mVehicleModel.getBrandName() + Constants.VEHICLE_DESCRIPTION_SEPARATOR + Utils.formatVehicleModel(this.mVehicleModel.getModelName()));
        this.mModel.setText(this.mVehicleModel.getBrandName() + " " + Utils.formatVehicleModel(this.mVehicleModel.getModelName()));
        this.mPlate.setText(this.mVehicleModel.getPlate());
    }

    private String formatVehicleSelected(String str) {
        String[] strArrSplit = str.contains(Constants.VEHICLE_DESCRIPTION_SEPARATOR) ? str.split(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR)) : null;
        if (strArrSplit == null) {
            return str;
        }
        return strArrSplit[0] + " " + Utils.formatVehicleModel(strArrSplit[1]);
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return BaseVehicleDataScreen.class.getName();
    }

    private void createProgressDialogScreen() {
        if (this.mProgressDialogFragment == null) {
            this.mProgressDialogFragment = new ProgressDialogFragment();
        }
        if (this.mProgressDialogFragment.isAdded()) {
            return;
        }
        this.mProgressDialogFragment.show(getNavigator().getFragmentManager(), getContext().getString(R.string.login_in_progress));
    }

    private void dismissProgressDialogScreen() {
        ProgressDialogFragment progressDialogFragment = this.mProgressDialogFragment;
        if (progressDialogFragment != null) {
            progressDialogFragment.dismiss();
        }
    }
}
