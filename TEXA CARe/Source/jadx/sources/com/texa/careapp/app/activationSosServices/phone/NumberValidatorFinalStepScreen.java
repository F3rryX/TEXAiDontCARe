package com.texa.careapp.app.activationSosServices.phone;

import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenNumberValidatorFinalStepBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.ValidateContactModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.UUID;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class NumberValidatorFinalStepScreen extends Screen {
    private static final int MAX_LENGTH_NUMBER_VALIDATOR_CODE = 7;
    private static String TAG = "NumberValidatorFinalStepScreen";
    private ActivationPhoneNumberActivity mActivity;
    private ContactModel mCellPhoneContact;
    private final CompositeDisposable mDisposable = new CompositeDisposable();

    @Inject
    protected RetrofitErrorParser mRetrofitErrorParser;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiService;
    private TextView mTextDescription;

    @Inject
    protected UserDataManager mUserDataManager;
    private EditText mValidationCodeEditText;
    private String phoneNumber;
    private ValidateContactModel validate;
    private String validationCode;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_number_validator_final_step;
    }

    public NumberValidatorFinalStepScreen(ActivationPhoneNumberActivity activationPhoneNumberActivity, ValidateContactModel validateContactModel, String str) {
        this.mActivity = activationPhoneNumberActivity;
        this.validationCode = str;
        this.validate = validateContactModel;
        this.phoneNumber = validateContactModel.value;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenNumberValidatorFinalStepBinding screenNumberValidatorFinalStepBinding = (ScreenNumberValidatorFinalStepBinding) DataBindingUtil.bind(view);
        this.mTextDescription = screenNumberValidatorFinalStepBinding.textViewPhoneValidatorFinalStep;
        this.mValidationCodeEditText = screenNumberValidatorFinalStepBinding.phoneCodeValidatorEditText;
        screenNumberValidatorFinalStepBinding.signupCodePhoneValidator.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.phone.NumberValidatorFinalStepScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m150x3e9cc1bd(view2);
            }
        });
        initInsertValidatorCodeView();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-phone-NumberValidatorFinalStepScreen, reason: not valid java name */
    public /* synthetic */ void m150x3e9cc1bd(View view) {
        onConfirmCodeClicked();
    }

    private void initInsertValidatorCodeView() {
        if (this.phoneNumber != null) {
            this.mTextDescription.setText(getContext().getResources().getString(R.string.title_phone_number_validation_step2, this.phoneNumber));
        }
        this.mValidationCodeEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(7)});
        this.mValidationCodeEditText.requestFocus();
        this.mValidationCodeEditText.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.activationSosServices.phone.NumberValidatorFinalStepScreen.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (NumberValidatorFinalStepScreen.this.mValidationCodeEditText == null || !NumberValidatorFinalStepScreen.this.mValidationCodeEditText.isSelected()) {
                    return;
                }
                if (editable.length() <= 0) {
                    NumberValidatorFinalStepScreen.this.mValidationCodeEditText.setError(NumberValidatorFinalStepScreen.this.getContext().getResources().getString(R.string.error_edit_phone_code));
                } else {
                    NumberValidatorFinalStepScreen.this.mValidationCodeEditText.setError(null);
                }
            }
        });
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    private void onConfirmCodeClicked() {
        if (Utils.getValue(this.mValidationCodeEditText).toUpperCase().equals(this.validationCode)) {
            Utils.closeKeyboard(getContext(), this.mValidationCodeEditText);
            checkPhoneNumberValidation();
        } else {
            Toast.makeText(getContext(), getContext().getResources().getString(R.string.error_on_validation), 0).show();
        }
    }

    private void confirmNewCellPhoneContact() {
        UserModel userCached = this.mUserDataManager.getUserCached();
        ContactModel userCellPhoneContact = userCached.getUserCellPhoneContact();
        this.mCellPhoneContact = userCellPhoneContact;
        if (userCellPhoneContact == null) {
            ContactModel contactModel = new ContactModel();
            this.mCellPhoneContact = contactModel;
            contactModel.setUid(UUID.randomUUID().toString());
            this.mCellPhoneContact.setUser(userCached);
        }
        this.mCellPhoneContact.setValidated(false);
        this.mCellPhoneContact.setPhoneNumber(this.validate.value);
        this.mCellPhoneContact.setType(this.validate.type);
    }

    private void checkPhoneNumberValidation() {
        confirmNewCellPhoneContact();
        this.mCellPhoneContact.setValidated(true);
        this.mDisposable.add(this.mTexaCareApiService.updateContacts(this.mCellPhoneContact).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.texa.careapp.app.activationSosServices.phone.NumberValidatorFinalStepScreen$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m151x7059d110();
            }
        }, new Consumer() { // from class: com.texa.careapp.app.activationSosServices.phone.NumberValidatorFinalStepScreen$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m152x50d32711((Throwable) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$checkPhoneNumberValidation$1$com-texa-careapp-app-activationSosServices-phone-NumberValidatorFinalStepScreen, reason: not valid java name */
    public /* synthetic */ void m151x7059d110() throws Exception {
        try {
            Utils.safeModelSave(this.mCellPhoneContact, getContext());
            this.mActivity.finish();
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save cell phone contacts", new Object[0]);
            Toast.makeText(getContext(), R.string.error_msg_unexpected_error_occurred, 1).show();
        }
    }

    /* JADX INFO: renamed from: lambda$checkPhoneNumberValidation$2$com-texa-careapp-app-activationSosServices-phone-NumberValidatorFinalStepScreen, reason: not valid java name */
    public /* synthetic */ void m152x50d32711(Throwable th) throws Exception {
        Log.e(TAG, "got exception in number validation:" + th.getMessage());
        this.mRetrofitErrorParser.parse(th);
        this.mCellPhoneContact.setValidated(false);
    }

    @Override // com.texa.care.navigation.Screen
    public void onDestroyView() {
        super.onDestroyView();
        Utils.safeDispose(this.mDisposable);
    }
}
