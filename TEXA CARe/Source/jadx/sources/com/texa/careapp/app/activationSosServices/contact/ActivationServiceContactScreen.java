package com.texa.careapp.app.activationSosServices.contact;

import android.app.AlertDialog;
import android.content.Intent;
import android.provider.ContactsContract;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceDeleteContactDialog;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceSelectContactNumberDialog;
import com.texa.careapp.app.events.CancelProgressEvent;
import com.texa.careapp.app.events.CloseActivityEvent;
import com.texa.careapp.app.events.ShowProgressEvent;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ScreenActivationServiceContactBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Iso2Phone;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.permission.CorePermission;
import com.texa.careapp.utils.permission.Func;
import com.texa.carelib.core.utils.internal.StringUtils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import retrofit2.HttpException;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ActivationServiceContactScreen extends Screen {
    private ActivationServiceContactActivity activationServiceContactActivity;
    private LinearLayout addContact;
    private TextView confirmContacts;
    private List<ContactModel> contacts;
    private List<String> countryList;
    private List<ContactModel> filtered;
    private LinearLayout firstContactLay;
    private TextView firstPersonIcon;
    private TextView firstPersonName;
    private TextView firstPersonPhone;
    private boolean isSosLight;

    @Inject
    protected EventBus mEventBus;
    private ActivationServiceNumberPrefixSpinnerAdapter mFirstContactCountryAdapter;
    private Spinner mFirstContactCountrySpinner;
    private AlertDialog mPermissionNotEnabledAlert;

    @Inject
    protected RetrofitErrorParser mRetrofitErrorParser;
    private ActivationServiceNumberPrefixSpinnerAdapter mSecondContactCountryAdapter;
    private Spinner mSecondContactCountrySpinner;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;

    @Inject
    protected UserDataManager mUserDataManager;
    private LinearLayout secondContactLay;
    private TextView secondPersonIcon;
    private TextView secondPersonName;
    private TextView secondPersonPhone;
    private ContactModel sosContact;
    private boolean successSync;
    private boolean mShowDialog = false;
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "ActivationServiceContactScreen";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_activation_service_contact;
    }

    public ActivationServiceContactScreen(CareApplication careApplication, ActivationServiceContactActivity activationServiceContactActivity, boolean z) {
        careApplication.component().inject(this);
        this.activationServiceContactActivity = activationServiceContactActivity;
        this.isSosLight = z;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenActivationServiceContactBinding screenActivationServiceContactBinding = (ScreenActivationServiceContactBinding) DataBindingUtil.bind(view);
        this.firstContactLay = screenActivationServiceContactBinding.screenActivationServiceContactFirstContact;
        this.secondContactLay = screenActivationServiceContactBinding.screenActivationServiceContactSecondContact;
        this.firstPersonIcon = screenActivationServiceContactBinding.screenActivationServiceContactFirstContactIcon;
        this.firstPersonName = screenActivationServiceContactBinding.screenActivationServiceContactFirstContactName;
        this.firstPersonPhone = screenActivationServiceContactBinding.screenActivationServiceContactFirstContactNumber;
        this.secondPersonIcon = screenActivationServiceContactBinding.screenActivationServiceContactSecondContactIcon;
        this.secondPersonName = screenActivationServiceContactBinding.screenActivationServiceContactSecondContactName;
        this.secondPersonPhone = screenActivationServiceContactBinding.screenActivationServiceContactSecondContactNumber;
        LinearLayout linearLayout = screenActivationServiceContactBinding.screenActivationServiceContactAdd;
        this.addContact = linearLayout;
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m139xa9439993(view2);
            }
        });
        this.firstContactLay.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m140x50bf7354(view2);
            }
        });
        this.secondContactLay.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m141xf83b4d15(view2);
            }
        });
        this.confirmContacts = screenActivationServiceContactBinding.screenActivationServiceContactConfirm;
        this.mFirstContactCountrySpinner = screenActivationServiceContactBinding.screenActivationServiceContactFirstContactNumberPrefix;
        this.mSecondContactCountrySpinner = screenActivationServiceContactBinding.screenActivationServiceContactSecondContactNumberPrefix;
        this.contacts = this.mUserDataManager.getUserCached().getSosLightContacts();
        this.countryList = new ArrayList(Iso2Phone.getAll().values());
        showData();
        initCountrySpinner();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen, reason: not valid java name */
    public /* synthetic */ void m139xa9439993(View view) {
        addContact();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen, reason: not valid java name */
    public /* synthetic */ void m140x50bf7354(View view) {
        intiDeleteFirstContact();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen, reason: not valid java name */
    public /* synthetic */ void m141xf83b4d15(View view) {
        intiDeleteSecondContact();
    }

    public void initCountrySpinner() {
        ActivationServiceNumberPrefixSpinnerAdapter activationServiceNumberPrefixSpinnerAdapter = new ActivationServiceNumberPrefixSpinnerAdapter(getContext());
        this.mFirstContactCountryAdapter = activationServiceNumberPrefixSpinnerAdapter;
        this.mFirstContactCountrySpinner.setAdapter((SpinnerAdapter) activationServiceNumberPrefixSpinnerAdapter);
        ActivationServiceNumberPrefixSpinnerAdapter activationServiceNumberPrefixSpinnerAdapter2 = new ActivationServiceNumberPrefixSpinnerAdapter(getContext());
        this.mSecondContactCountryAdapter = activationServiceNumberPrefixSpinnerAdapter2;
        this.mSecondContactCountrySpinner.setAdapter((SpinnerAdapter) activationServiceNumberPrefixSpinnerAdapter2);
        setCurrentCountry();
    }

    public void setCurrentCountry() {
        Locale locale = new Locale("", getContext().getResources().getConfiguration().locale.getCountry());
        this.mFirstContactCountrySpinner.setSelection(this.mFirstContactCountryAdapter.getCountryPosition(locale.getDisplayCountry()));
        this.mSecondContactCountrySpinner.setSelection(this.mSecondContactCountryAdapter.getCountryPosition(locale.getDisplayCountry()));
    }

    private void showData() {
        this.filtered = new ArrayList();
        for (ContactModel contactModel : this.contacts) {
            if (contactModel.getPhoneNumber() != null) {
                this.filtered.add(contactModel);
            }
        }
        if (this.filtered.size() == 1) {
            setValues(this.filtered.get(0), this.firstPersonName, this.firstPersonIcon, this.firstPersonPhone, this.mFirstContactCountrySpinner);
            checkNumberPrefix(this.mFirstContactCountrySpinner, this.filtered.get(0).getPhoneNumber());
            this.firstContactLay.setVisibility(0);
            this.secondContactLay.setVisibility(8);
            this.addContact.setVisibility(0);
            this.confirmContacts.setBackgroundResource(R.drawable.button_green);
            this.confirmContacts.setEnabled(true);
        } else if (this.filtered.size() == 2) {
            setValues(this.filtered.get(0), this.firstPersonName, this.firstPersonIcon, this.firstPersonPhone, this.mFirstContactCountrySpinner);
            checkNumberPrefix(this.mFirstContactCountrySpinner, this.filtered.get(0).getPhoneNumber());
            setValues(this.filtered.get(1), this.secondPersonName, this.secondPersonIcon, this.secondPersonPhone, this.mSecondContactCountrySpinner);
            checkNumberPrefix(this.mSecondContactCountrySpinner, this.filtered.get(1).getPhoneNumber());
            this.firstContactLay.setVisibility(0);
            this.secondContactLay.setVisibility(0);
            this.addContact.setVisibility(8);
            this.confirmContacts.setBackgroundResource(R.drawable.button_green);
            this.confirmContacts.setEnabled(true);
        } else {
            this.firstContactLay.setVisibility(8);
            this.secondContactLay.setVisibility(8);
            this.addContact.setVisibility(0);
            this.confirmContacts.setBackgroundResource(R.drawable.button_grey);
            this.confirmContacts.setEnabled(false);
        }
        this.confirmContacts.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m146x4eb6bcab(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$showData$7$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen, reason: not valid java name */
    public /* synthetic */ void m146x4eb6bcab(View view) {
        ShowProgressEvent showProgressEvent = new ShowProgressEvent();
        showProgressEvent.setMessage(getContext().getString(R.string.sos_dialog_progress));
        this.mEventBus.post(showProgressEvent);
        this.successSync = true;
        for (final int i = 0; i < this.contacts.size(); i++) {
            if (this.successSync) {
                final ContactModel contactModel = this.contacts.get(i);
                if (contactModel.getPhoneNumber() != null) {
                    if (contactModel.getPrefix() != null && !Utils.startWithPrefix(contactModel.getPhoneNumber(), this.countryList)) {
                        contactModel.setPhoneNumber(contactModel.getPrefix() + contactModel.getPhoneNumber());
                    }
                    contactModel.setPhoneNumber(contactModel.getPhoneNumber().replace(" ", ""));
                    this.mDisposable.add(this.mTexaCareApiService.updateContacts(contactModel).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).subscribe(new Action() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen$$ExternalSyntheticLambda4
                        @Override // io.reactivex.functions.Action
                        public final void run() throws Exception {
                            this.f$0.m142xb0c755a7(contactModel, i);
                        }
                    }, new Consumer() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen$$ExternalSyntheticLambda6
                        @Override // io.reactivex.functions.Consumer
                        public final void accept(Object obj) throws Exception {
                            this.f$0.m143x58432f68((Throwable) obj);
                        }
                    }));
                } else {
                    this.mDisposable.add(this.mTexaCareApiService.deleteContacts(contactModel.getUid()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen$$ExternalSyntheticLambda5
                        @Override // io.reactivex.functions.Action
                        public final void run() throws Exception {
                            this.f$0.m144xffbf0929(contactModel, i);
                        }
                    }, new Consumer() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen$$ExternalSyntheticLambda7
                        @Override // io.reactivex.functions.Consumer
                        public final void accept(Object obj) throws Exception {
                            this.f$0.m145xa73ae2ea((Throwable) obj);
                        }
                    }));
                }
            }
        }
    }

    /* JADX INFO: renamed from: lambda$showData$3$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen, reason: not valid java name */
    public /* synthetic */ void m142xb0c755a7(ContactModel contactModel, int i) throws Exception {
        try {
            Utils.safeModelSave(contactModel, getContext());
        } catch (DatabaseIOException e) {
            e.printStackTrace();
        }
        this.successSync = true;
        if (i == this.contacts.size() - 1) {
            if (this.isSosLight) {
                FirebaseAnalytics.getInstance(getContext()).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_SOS_LIGHT_ACTIVATION_SOS_LIGHT_CONTACTS_COMPLETED.getTag(), null);
            }
            close();
        }
    }

    /* JADX INFO: renamed from: lambda$showData$4$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen, reason: not valid java name */
    public /* synthetic */ void m143x58432f68(Throwable th) throws Exception {
        if ((th instanceof HttpException) && Constants.ERROR_KO_CONTACT_NOT_EDITABLE.equals(this.mRetrofitErrorParser.parseToString((HttpException) th))) {
            close();
        }
        this.successSync = false;
        error();
    }

    /* JADX INFO: renamed from: lambda$showData$5$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen, reason: not valid java name */
    public /* synthetic */ void m144xffbf0929(ContactModel contactModel, int i) throws Exception {
        ContactModel.deleteSOSContact(contactModel.getUid());
        this.successSync = true;
        if (i == this.contacts.size() - 1) {
            close();
        }
    }

    /* JADX INFO: renamed from: lambda$showData$6$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen, reason: not valid java name */
    public /* synthetic */ void m145xa73ae2ea(Throwable th) throws Exception {
        Timber.e(th, "DELETE CONTACT FAILED", new Object[0]);
        this.successSync = false;
        error();
    }

    private void close() {
        this.mEventBus.post(new CancelProgressEvent());
        this.mEventBus.post(new CloseActivityEvent((Class<? extends BaseActivity>) ActivationServiceContactActivity.class));
    }

    private void error() {
        this.mEventBus.post(new CancelProgressEvent());
    }

    private void checkNumberPrefix(Spinner spinner, String str) {
        if (str != null && !Utils.startWithPrefix(str, this.countryList)) {
            spinner.setVisibility(0);
        } else {
            spinner.setVisibility(8);
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
        if (this.mShowDialog) {
            this.mShowDialog = false;
            goTo(new ActivationServiceSelectContactNumberDialog(this.sosContact));
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
    }

    private boolean isReadContactPermissionEnabled() {
        return Utils.isPermissionEnabled(this.activationServiceContactActivity, CorePermission.USE_CONTACTS);
    }

    private void addContact() {
        if (!isReadContactPermissionEnabled()) {
            this.activationServiceContactActivity.getReadContactPermissionRequest().onAllGranted(new Func() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen.2
                @Override // com.texa.careapp.utils.permission.Func
                protected void call() {
                    Timber.d("All permission enabled", new Object[0]);
                }
            }).onAnyDenied(new Func() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen.1
                @Override // com.texa.careapp.utils.permission.Func
                protected void call() {
                    Timber.d("Some/All Permission not enabled", new Object[0]);
                    ActivationServiceContactScreen.this.showPermissionErrorAlert();
                }
            }).ask(2);
        } else {
            this.activationServiceContactActivity.startActivityForResult(new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI), 101);
        }
    }

    public void showPermissionErrorAlert() {
        if (this.mPermissionNotEnabledAlert == null) {
            this.mPermissionNotEnabledAlert = Utils.createPermissionExplanationAlertDialog(this.activationServiceContactActivity);
        }
        if (this.mPermissionNotEnabledAlert.isShowing()) {
            return;
        }
        this.mPermissionNotEnabledAlert.show();
    }

    private boolean intiDeleteFirstContact() {
        initDialog(this.filtered.get(0));
        return true;
    }

    private boolean intiDeleteSecondContact() {
        initDialog(this.filtered.get(1));
        return true;
    }

    private void initDialog(ContactModel contactModel) {
        goTo(new ActivationServiceDeleteContactDialog(contactModel));
    }

    void setSosContact(ContactModel contactModel) {
        updateData(contactModel);
    }

    private void updateData(ContactModel contactModel) {
        if (contactModel != null) {
            boolean z = true;
            if (contactModel.getPhoneNumber() == null && contactModel.getPhoneNumbers() == null) {
                Toast.makeText(getContext(), getContext().getString(R.string.sos_contact_validator), 1).show();
            } else if (contactModel.getPhoneNumber() == null) {
                this.mShowDialog = true;
                this.sosContact = contactModel;
            } else {
                Iterator<ContactModel> it = this.contacts.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    ContactModel next = it.next();
                    if (next.getPhoneNumber() == null) {
                        next.setPhoneNumber(contactModel.getPhoneNumber());
                        next.setTitle(contactModel.getTitle());
                        break;
                    }
                }
                if (!z) {
                    this.contacts.add(contactModel);
                }
            }
            showData();
        }
    }

    private void setValues(final ContactModel contactModel, TextView textView, TextView textView2, TextView textView3, final Spinner spinner) {
        textView.setText(contactModel.getTitle());
        textView2.setText((StringUtils.isNotEmpty(contactModel.getTitle()) ? contactModel.getTitle().substring(0, 1) : "").toUpperCase());
        textView3.setText(contactModel.getPhoneNumber());
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                contactModel.setPrefix(((ActivationServiceNumberPrefixSpinnerAdapter) spinner.getAdapter()).getPrefix(i));
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                contactModel.setPrefix(null);
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(ActivationServiceSelectContactNumberDialog.PickContactNumber pickContactNumber) {
        updateData(pickContactNumber.getSosContact());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(ActivationServiceDeleteContactDialog.DeleteContact deleteContact) {
        Iterator<ContactModel> it = this.contacts.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ContactModel next = it.next();
            if (next.getUid().equalsIgnoreCase(deleteContact.getUuid())) {
                next.setPhoneNumber(null);
                break;
            }
        }
        showData();
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        Utils.safeDispose(this.mDisposable);
    }
}
