package com.texa.careapp.app.sos;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.Address;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.DataBindingUtil;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.material.snackbar.Snackbar;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ActivityMechanicBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.BusinessTime;
import com.texa.careapp.model.MechanicContact;
import com.texa.careapp.model.MechanicModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.response.CustomerResponse;
import com.texa.careapp.utils.DateTypeAdapter;
import com.texa.careapp.utils.MechanicDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.permission.CorePermission;
import com.texa.careapp.utils.permission.Func;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class MechanicActivity extends BaseActivity implements OnMapReadyCallback {
    private TextView mAddress;
    private TextView mAddressCity;
    private ImageView mAvailabilityImage;
    private TextView mAvailabilityText;
    private Context mContext;
    private GoogleMap mMap;

    @Inject
    protected MechanicDataManager mMechanicDataManager;
    private Disposable mMechanicDisposable;
    private MechanicModel mMechanicModel;
    private TextView mMechanicName;
    private TextView mMechanicNavigationButton;
    private TextView mMechanicOpening;
    private CorePermission.PermissionRequestObject mPermissionRequest;
    private ImageView mPhoneMobileImage;
    private TextView mPhoneMobileText;
    private RelativeLayout mRelativeLayout;

    @Inject
    protected VehicleDataManager mVehicleDataManager;
    private ImageView mWorkshopImage;
    private TextView mWorkshopText;
    private String mWorkshopNumber = null;
    private String mPhoneMobileNumber = null;
    private String mAvailabilityNumber = null;
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    public int getDayOfWeek(int i) {
        switch (i) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            case 7:
                return 6;
            default:
                return -1;
        }
    }

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((CareApplication) getApplication()).component().inject(this);
        this.mContext = this;
        ActivityMechanicBinding activityMechanicBinding = (ActivityMechanicBinding) DataBindingUtil.setContentView(this, R.layout.activity_mechanic);
        this.mRelativeLayout = activityMechanicBinding.relativeLayoutActivityMechanic;
        this.mMechanicName = activityMechanicBinding.mechanicNameTextView;
        this.mAddress = activityMechanicBinding.mechanicAddressTextView;
        this.mAddressCity = activityMechanicBinding.mechanicCityAddressTextView;
        this.mMechanicOpening = activityMechanicBinding.mechanicOpeningTextView;
        this.mWorkshopImage = activityMechanicBinding.workshopImage;
        this.mAvailabilityImage = activityMechanicBinding.availabilityImage;
        this.mPhoneMobileImage = activityMechanicBinding.phoneMobileImage;
        this.mWorkshopText = activityMechanicBinding.workshopText;
        this.mAvailabilityText = activityMechanicBinding.availabilityText;
        this.mPhoneMobileText = activityMechanicBinding.phoneMobileText;
        this.mMechanicNavigationButton = activityMechanicBinding.mechanicNavigationButton;
        activityMechanicBinding.workshopButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.MechanicActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.clickCallWorkshop(view);
            }
        });
        activityMechanicBinding.availabilityButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.MechanicActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.clickCallAvailability(view);
            }
        });
        activityMechanicBinding.phoneMobileButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.MechanicActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.clickCallPhoneMobile(view);
            }
        });
        setVisibilityButtons();
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
        ((SupportMapFragment) getSupportFragmentManager().findFragmentById(R.id.map)).getMapAsync(this);
    }

    @Override // com.google.android.gms.maps.OnMapReadyCallback
    public void onMapReady(GoogleMap googleMap) {
        this.mMap = googleMap;
        if (Utils.isPermissionEnabled(this, CorePermission.USE_ACCESS_LOCATION)) {
            this.mMap.setMyLocationEnabled(true);
        } else {
            requestPermission(CorePermission.USE_ACCESS_LOCATION[0], null);
        }
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        MechanicModel mechanicModel = this.mMechanicDataManager.getMechanicModel();
        this.mMechanicModel = mechanicModel;
        if (mechanicModel != null) {
            mechanicModel.loadBusinessTimeFromDB();
            this.mMechanicModel.loadMechanicContactsFromDB();
        }
        this.mMechanicDisposable = getMechanicData();
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mMechanicDisposable.dispose();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.mPermissionRequest = null;
    }

    private Disposable getMechanicData() {
        return this.mMechanicDataManager.observeCustomerResponse().compose(Utils.applyMaybeSchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.MechanicActivity$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m481x7319d988((CustomerResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.sos.MechanicActivity$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m482x585b4849((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$getMechanicData$0$com-texa-careapp-app-sos-MechanicActivity, reason: not valid java name */
    public /* synthetic */ void m481x7319d988(CustomerResponse customerResponse) throws Exception {
        try {
            MechanicModel mechanicModelFrom = MechanicModel.from(customerResponse);
            this.mMechanicDataManager.deleteMechanicsData();
            this.mMechanicModel = mechanicModelFrom;
            Utils.safeModelSave(mechanicModelFrom, this.mContext);
            Iterator<BusinessTime> it = mechanicModelFrom.business_times.iterator();
            while (it.hasNext()) {
                Utils.safeModelSave(it.next(), this.mContext);
            }
            Iterator<MechanicContact> it2 = mechanicModelFrom.contacts.iterator();
            while (it2.hasNext()) {
                Utils.safeModelSave(it2.next(), this.mContext);
            }
        } catch (Exception e) {
            if (e instanceof DatabaseIOException) {
                Timber.e(e, "Could not save mechanic model to database.", new Object[0]);
            } else {
                e.printStackTrace();
                Timber.e(e, "Could not retrieve mechanic data.", new Object[0]);
            }
        }
        initData();
    }

    /* JADX INFO: renamed from: lambda$getMechanicData$1$com-texa-careapp-app-sos-MechanicActivity, reason: not valid java name */
    public /* synthetic */ void m482x585b4849(Throwable th) throws Exception {
        Timber.w(th, "#getMechanicData() on Error", new Object[0]);
        MechanicModel mechanicModel = this.mMechanicDataManager.getMechanicModel();
        this.mMechanicModel = mechanicModel;
        if (mechanicModel != null) {
            mechanicModel.loadBusinessTimeFromDB();
            this.mMechanicModel.loadMechanicContactsFromDB();
        }
        initData();
    }

    private void setOnClickListenerToButtonNavigation(final MechanicModel.Location location) {
        this.mMechanicNavigationButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.MechanicActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m484xb6bd7ebc(location, view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setOnClickListenerToButtonNavigation$2$com-texa-careapp-app-sos-MechanicActivity, reason: not valid java name */
    public /* synthetic */ void m484xb6bd7ebc(MechanicModel.Location location, View view) {
        if (location != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("google.navigation:q=" + location.latitude + "," + location.longitude));
            intent.setPackage("com.google.android.apps.maps");
            if (intent.resolveActivity(getPackageManager()) != null) {
                startActivity(intent);
                return;
            }
            return;
        }
        Timber.w("No mechanic info location to use in googleMaps", new Object[0]);
        Snackbar.make(this.mRelativeLayout, getString(R.string.no_travel_info), 0).show();
    }

    private void setOpeningText() {
        Calendar calendar = Calendar.getInstance();
        if (!isOnHoliday(this.mMechanicModel, calendar)) {
            MechanicModel mechanicModel = this.mMechanicModel;
            if (mechanicModel == null || mechanicModel.business_times.size() == 0) {
                return;
            }
            if (isOpen(this.mMechanicModel.business_times, calendar)) {
                this.mMechanicOpening.setText(getString(R.string.now_expected_to_be_opened));
                return;
            } else {
                this.mMechanicOpening.setText(getString(R.string.now_expected_to_be_closed));
                return;
            }
        }
        this.mMechanicOpening.setText(getString(R.string.now_expected_to_be_closed));
    }

    private void initData() {
        MechanicModel mechanicModel = this.mMechanicModel;
        if (mechanicModel == null) {
            Timber.w("mMechanicModel == NULL", new Object[0]);
            return;
        }
        setMechanicName(mechanicModel.getName());
        setNumber(this.mMechanicModel.contacts);
        setVisibilityButtons();
        setOpeningText();
        setInfoCustomer();
        setOnClickListenerToButtonNavigation(this.mMechanicModel.getLocation());
    }

    public void setNumber(List<MechanicContact> list) {
        Timber.d("Set numbers with List of mechanic contact", new Object[0]);
        if (list == null || list.size() == 0) {
            return;
        }
        for (MechanicContact mechanicContact : list) {
            if (mechanicContact.type != null && mechanicContact.type.equals("phone")) {
                this.mWorkshopNumber = mechanicContact.value;
            }
            if (mechanicContact.type != null && mechanicContact.type.equals("phone_mobile")) {
                this.mPhoneMobileNumber = mechanicContact.value;
            }
            VehicleModel selectedVehicle = this.mVehicleDataManager.getSelectedVehicle();
            if (mechanicContact.type != null && mechanicContact.type.equals("phone_availability") && selectedVehicle.isCustomerAvailability()) {
                this.mAvailabilityNumber = mechanicContact.value;
            }
        }
    }

    public void setVisibilityButtons() {
        Timber.d("Set visibility buttons", new Object[0]);
        if (this.mWorkshopNumber == null) {
            this.mWorkshopImage.setImageResource(com.texa.careapp.R.drawable.ic_phone_grey);
            this.mWorkshopText.setEnabled(false);
        } else {
            this.mWorkshopImage.setImageResource(com.texa.careapp.R.drawable.ic_phone_green);
            this.mWorkshopText.setEnabled(true);
        }
        if (this.mAvailabilityNumber == null) {
            this.mAvailabilityImage.setImageResource(com.texa.careapp.R.drawable.ic_phone_grey);
            this.mAvailabilityText.setEnabled(false);
        } else {
            this.mAvailabilityImage.setImageResource(com.texa.careapp.R.drawable.ic_phone_green);
            this.mAvailabilityText.setEnabled(true);
        }
        if (this.mPhoneMobileNumber == null) {
            this.mPhoneMobileImage.setImageResource(com.texa.careapp.R.drawable.ic_phone_grey);
            this.mPhoneMobileText.setEnabled(false);
        } else {
            this.mPhoneMobileImage.setImageResource(com.texa.careapp.R.drawable.ic_phone_green);
            this.mPhoneMobileText.setEnabled(true);
        }
    }

    public boolean isOpen(List<BusinessTime> list, Calendar calendar) {
        int i;
        int i2;
        StringBuilder sb;
        int i3 = 0;
        Timber.d("Check if is open", new Object[0]);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm", Locale.getDefault());
        int i4 = calendar.get(9);
        Date date = null;
        Date date2 = null;
        for (BusinessTime businessTime : list) {
            if (businessTime.getWeek_day().intValue() == getDayOfWeek(calendar.get(7)) && businessTime.getAm_pm().intValue() == i4) {
                try {
                    i = Integer.parseInt(businessTime.getOpen_time().substring(i3, businessTime.getOpen_time().indexOf(":")));
                    i2 = Integer.parseInt(businessTime.getOpen_time().substring(businessTime.getOpen_time().indexOf(":") + 1));
                    sb = new StringBuilder();
                } catch (Exception e) {
                    e = e;
                }
                try {
                    sb.append(calendar.get(5));
                    sb.append("/");
                    sb.append(calendar.get(2) + 1);
                    sb.append("/");
                    sb.append(calendar.get(1));
                    sb.append(" ");
                    sb.append(i);
                    sb.append(":");
                    sb.append(i2);
                    date = simpleDateFormat.parse(sb.toString());
                    date2 = simpleDateFormat.parse(calendar.get(5) + "/" + (calendar.get(2) + 1) + "/" + calendar.get(1) + " " + Integer.parseInt(businessTime.getClose_time().substring(0, businessTime.getClose_time().indexOf(":"))) + ":" + Integer.parseInt(businessTime.getClose_time().substring(businessTime.getClose_time().indexOf(":") + 1)));
                } catch (Exception e2) {
                    e = e2;
                    i3 = 0;
                    Timber.e(e, "Error on parsing time", new Object[i3]);
                }
            }
            i3 = 0;
        }
        if (date == null || date2 == null) {
            return false;
        }
        Date time = calendar.getTime();
        return time.after(date) && time.before(date2);
    }

    public boolean isOnHoliday(MechanicModel mechanicModel, Calendar calendar) {
        Timber.d("Check if is on holiday", new Object[0]);
        if (mechanicModel.getClosing_end() != null && mechanicModel.getClosing_start() != null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateTypeAdapter.TIMESTAMP_PATTERN, Locale.getDefault());
            try {
                Date date = simpleDateFormat.parse(mechanicModel.getClosing_start());
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTime(simpleDateFormat.parse(mechanicModel.getClosing_end()));
                calendar2.add(5, 1);
                Date time = calendar2.getTime();
                Date time2 = calendar.getTime();
                if (time2.after(date)) {
                    return time2.before(time);
                }
                return false;
            } catch (ParseException e) {
                Timber.e(e, "Error on parsing date", new Object[0]);
            }
        }
        return false;
    }

    public void setInfoCustomer() {
        MechanicModel mechanicModel = this.mMechanicModel;
        if (mechanicModel != null) {
            setMechanicLocation(mechanicModel);
            MechanicModel.Location location = this.mMechanicModel.getLocation();
            if (location != null) {
                if (location.latitude == null) {
                    Timber.e("mechanic latitude is null!!", new Object[0]);
                    return;
                } else if (location.longitude == null) {
                    Timber.e("mechanic longitude is null!!", new Object[0]);
                    return;
                } else {
                    addMechanicMarker(new LatLng(location.latitude.doubleValue(), location.longitude.doubleValue()), this.mMechanicModel.getName());
                    return;
                }
            }
            Timber.w("mechanic location is null!!", new Object[0]);
            return;
        }
        Timber.w("mechanic is null!!", new Object[0]);
    }

    public void addMechanicMarker(LatLng latLng, String str) {
        if (latLng == null) {
            showAlertDialog("", getString(R.string.mechanic_location_not_found));
            return;
        }
        try {
            this.mMap.addMarker(new MarkerOptions().position(latLng).title(str).icon(BitmapDescriptorFactory.fromResource(com.texa.careapp.R.drawable.mechanic_marker)));
            this.mMap.animateCamera(CameraUpdateFactory.newLatLngZoom(latLng, 16.0f));
        } catch (Exception e) {
            Timber.e(e, "AddMarker error", new Object[0]);
        }
    }

    private void setMechanicLocation(MechanicModel mechanicModel) {
        if (!Utils.isEmpty(mechanicModel.getAddress()) && !Utils.isEmpty(mechanicModel.getStreet_number()) && !Utils.isEmpty(mechanicModel.getPost_code()) && !Utils.isEmpty(mechanicModel.getCity())) {
            setMechanicAddress(mechanicModel.getAddress() + ", " + mechanicModel.getStreet_number());
            setMechanicCityAddress(mechanicModel.getPost_code() + " " + mechanicModel.getCity());
            return;
        }
        MechanicModel.Location location = mechanicModel.getLocation();
        if (location != null) {
            setLocationTextFromGeoCode(new LatLng(location.latitude.doubleValue(), location.longitude.doubleValue()));
        }
    }

    private void setLocationTextFromGeoCode(LatLng latLng) {
        this.mDisposable.add(Utils.geocodeObservable(getApplicationContext(), latLng.latitude, latLng.longitude, 1).compose(Utils.applySchedulers()).subscribe(new Consumer() { // from class: com.texa.careapp.app.sos.MechanicActivity$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m483x7aa74211((Address) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.sos.MechanicActivity$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.w((Throwable) obj, "geocodeObservable exception", new Object[0]);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$setLocationTextFromGeoCode$3$com-texa-careapp-app-sos-MechanicActivity, reason: not valid java name */
    public /* synthetic */ void m483x7aa74211(Address address) throws Exception {
        setMechanicAddress(address.getThoroughfare() + ", " + address.getFeatureName());
        setMechanicCityAddress(address.getPostalCode() + " " + address.getLocality());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        CorePermission.PermissionRequestObject permissionRequestObject = this.mPermissionRequest;
        if (permissionRequestObject != null) {
            permissionRequestObject.onRequestPermissionsResult(i, strArr, iArr);
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    private void showAlertDialog(String str, String str2) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.texa.careapp.app.sos.MechanicActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        builder.create().show();
    }

    public void clickCallWorkshop(View view) {
        if (this.mWorkshopNumber != null) {
            if (Utils.isPermissionEnabled(this, CorePermission.USE_PHONE)) {
                dialNumber(this.mWorkshopNumber);
                return;
            } else {
                requestPermission(CorePermission.USE_PHONE[0], this.mWorkshopNumber);
                return;
            }
        }
        showAlertDialog(getString(R.string.mechanic_number_not_found), getString(R.string.mechanic_number_not_found_message));
    }

    public void clickCallAvailability(View view) {
        if (this.mAvailabilityNumber != null) {
            if (Utils.isPermissionEnabled(this, CorePermission.USE_PHONE)) {
                dialNumber(this.mAvailabilityNumber);
                return;
            } else {
                requestPermission(CorePermission.USE_PHONE[0], this.mAvailabilityNumber);
                return;
            }
        }
        showAlertDialog(getString(R.string.mechanic_number_not_found), getString(R.string.mechanic_number_not_found_message));
    }

    public void clickCallPhoneMobile(View view) {
        if (this.mPhoneMobileNumber != null) {
            if (Utils.isPermissionEnabled(this, CorePermission.USE_PHONE)) {
                dialNumber(this.mPhoneMobileNumber);
                return;
            } else {
                requestPermission(CorePermission.USE_PHONE[0], this.mPhoneMobileNumber);
                return;
            }
        }
        showAlertDialog(getString(R.string.mechanic_number_not_found), getString(R.string.mechanic_number_not_found_message));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dialNumber(String str) {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:" + str));
        startActivity(intent);
    }

    private void requestPermission(final String str, final String str2) {
        this.mPermissionRequest = CorePermission.with((AppCompatActivity) this).request(str).onAllGranted(new Func() { // from class: com.texa.careapp.app.sos.MechanicActivity.2
            @Override // com.texa.careapp.utils.permission.Func
            protected void call() {
                if (CorePermission.USE_ACCESS_LOCATION.equals(str)) {
                    MechanicActivity.this.mMap.setMyLocationEnabled(true);
                } else if (CorePermission.USE_PHONE.equals(str)) {
                    MechanicActivity.this.dialNumber(str2);
                }
            }
        }).onAnyDenied(new Func() { // from class: com.texa.careapp.app.sos.MechanicActivity.1
            @Override // com.texa.careapp.utils.permission.Func
            protected void call() {
                Timber.d("Permission %s not provided", str);
            }
        }).ask(4);
    }

    public void setMechanicName(String str) {
        this.mMechanicName.setText(str);
    }

    public void setMechanicAddress(String str) {
        this.mAddress.setText(str.toUpperCase());
    }

    public void setMechanicCityAddress(String str) {
        this.mAddressCity.setText(str.toUpperCase());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Utils.safeDispose(this.mDisposable);
    }
}
