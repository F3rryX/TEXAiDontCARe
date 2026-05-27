package com.texa.careapp.app.sos.featuremanager;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Vibrator;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.core.content.res.ResourcesCompat;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.Constants;
import com.texa.careapp.app.activationSosServices.ActivationServiceActivity;
import com.texa.careapp.app.activationSosServices.FirmwareVersionAlertDialog;
import com.texa.careapp.app.settings.SettingsActivity;
import com.texa.careapp.app.sos.AlertCentralActivity;
import com.texa.careapp.app.sos.SosPrerequisiteActivity;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.core.utils.FirmwareVersion;

/* JADX INFO: loaded from: classes2.dex */
public class SosFeatureButtonManager {
    private ViewGroup buttonLayout;
    private ImageView image;
    private Context mContext;
    private DongleDataManager mDongleDataManager;
    private UserDataManager mUserDataManager;
    private Vibrator mVibrator;
    private Navigator navigator;
    private ServiceDataModel sosService;

    public SosFeatureButtonManager(Context context, UserDataManager userDataManager, DongleDataManager dongleDataManager, ServiceDataModel serviceDataModel, ViewGroup viewGroup, ImageView imageView, Navigator navigator) {
        this.mContext = context;
        this.sosService = serviceDataModel;
        this.mUserDataManager = userDataManager;
        this.mDongleDataManager = dongleDataManager;
        this.buttonLayout = viewGroup;
        this.image = imageView;
        this.navigator = navigator;
        initResources(context);
    }

    private void initResources(Context context) {
        this.mVibrator = (Vibrator) context.getSystemService("vibrator");
    }

    private void showAcceptationPolicySosActivity(ServiceDataModel serviceDataModel) {
        Context context = this.mContext;
        context.startActivity(SosPrerequisiteActivity.buildIntent(context, serviceDataModel));
    }

    private void showActivationSosActivity(ServiceDataModel serviceDataModel) {
        if (this.mDongleDataManager.getDongleModel().getMainAppVersion().getVersion().compareTo(new FirmwareVersion(2, 0, 1, 1).getVersion()) == 1 && this.mDongleDataManager.getDongleModel().getServiceAppVersion().getVersion().compareTo(new FirmwareVersion(2, 0, 1, 1).getVersion()) == 1) {
            Intent intentBuildIntent = ActivationServiceActivity.buildIntent(this.mContext, serviceDataModel);
            intentBuildIntent.addFlags(268435456);
            this.mContext.startActivity(intentBuildIntent);
            return;
        }
        this.navigator.goTo(new FirmwareVersionAlertDialog());
    }

    private void showCheckList(ServiceDataModel serviceDataModel) {
        Context context = this.mContext;
        context.startActivity(SosPrerequisiteActivity.buildIntent(context, serviceDataModel));
    }

    private void onManualSosButtonClicked() {
        startAlertActivity();
    }

    private void startAlertActivity() {
        ServiceDataModel serviceDataModel;
        if (isCellPhoneNumberNotEmpty() && (serviceDataModel = this.sosService) != null) {
            this.mContext.startActivity(AlertCentralActivity.buildIntent(this.mContext, serviceDataModel.getIdType().ordinal()));
        } else {
            if (isCellPhoneNumberNotEmpty()) {
                return;
            }
            Context context = this.mContext;
            Toast.makeText(context, context.getResources().getString(R.string.user_cell_phone_not_validated), 0).show();
        }
    }

    private boolean isCellPhoneNumberNotEmpty() {
        return isCellPhoneNumberNotEmpty(this.mUserDataManager.getUserCached().getUserCellPhoneContact());
    }

    private boolean isCellPhoneNumberNotEmpty(ContactModel contactModel) {
        return (contactModel == null || Utils.isEmpty(contactModel.getPhoneNumber())) ? false : true;
    }

    public void addClick(View view, ServiceDataModel serviceDataModel) {
        if (serviceDataModel != null) {
            view.setVisibility(0);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureButtonManager$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.m492xded9ab78(view2);
                }
            });
        } else {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: renamed from: lambda$addClick$0$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager, reason: not valid java name */
    public /* synthetic */ void m492xded9ab78(View view) {
        Intent intent = new Intent(this.mContext, (Class<?>) SettingsActivity.class);
        intent.putExtra(SettingsActivity.SCROLL_TO_SERVICE, true);
        intent.addFlags(268435456);
        this.mContext.startActivity(intent);
    }

    public void enableButtonForSosActivation() {
        final Drawable drawable = ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.contact_button_background, null);
        if (drawable != null) {
            drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.button_disabled), PorterDuff.Mode.SRC_IN);
        }
        this.image.setBackground(drawable);
        this.buttonLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureButtonManager$$ExternalSyntheticLambda4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.m496x8b991d8b(drawable, view, motionEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$enableButtonForSosActivation$1$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager, reason: not valid java name */
    public /* synthetic */ boolean m496x8b991d8b(Drawable drawable, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            vibrate();
            if (drawable != null) {
                drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.button_disabled), PorterDuff.Mode.SRC_IN);
            }
            this.image.setBackground(drawable);
            return true;
        }
        if (action != 1) {
            return false;
        }
        if (drawable != null) {
            drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.button_disabled), PorterDuff.Mode.SRC_IN);
        }
        this.image.setBackground(drawable);
        showActivationSosActivity(this.sosService);
        return true;
    }

    public void enableButtonForAcceptTerms() {
        final Drawable drawable = ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.contact_button_background, null);
        if (drawable != null) {
            drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.button_disabled), PorterDuff.Mode.SRC_IN);
        }
        this.image.setBackground(drawable);
        this.buttonLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureButtonManager$$ExternalSyntheticLambda2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.m494xfa2b9e9e(drawable, view, motionEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$enableButtonForAcceptTerms$2$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager, reason: not valid java name */
    public /* synthetic */ boolean m494xfa2b9e9e(Drawable drawable, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            vibrate();
            if (drawable != null) {
                drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.button_disabled), PorterDuff.Mode.SRC_IN);
            }
            this.image.setBackground(drawable);
            return true;
        }
        if (action != 1) {
            return false;
        }
        if (drawable != null) {
            drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.button_disabled), PorterDuff.Mode.SRC_IN);
        }
        this.image.setBackground(drawable);
        showAcceptationPolicySosActivity(this.sosService);
        return true;
    }

    public void disableButtonCauseCheck() {
        final Drawable drawable = ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.contact_button_background, null);
        if (drawable != null) {
            drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.button_disabled), PorterDuff.Mode.SRC_IN);
        }
        this.image.setBackground(drawable);
        this.buttonLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureButtonManager$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.m493x105dc7f3(drawable, view, motionEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$disableButtonCauseCheck$3$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager, reason: not valid java name */
    public /* synthetic */ boolean m493x105dc7f3(Drawable drawable, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            vibrate();
            if (drawable != null) {
                drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.button_disabled), PorterDuff.Mode.SRC_IN);
            }
            this.image.setBackground(drawable);
            return true;
        }
        if (action != 1) {
            return false;
        }
        if (drawable != null) {
            drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.button_disabled), PorterDuff.Mode.SRC_IN);
        }
        this.image.setBackground(drawable);
        showCheckList(this.sosService);
        return true;
    }

    public void disableButton() {
        Drawable drawable = ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.contact_button_background, null);
        if (drawable != null) {
            drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.button_disabled), PorterDuff.Mode.SRC_IN);
        }
        this.image.setBackground(drawable);
        this.buttonLayout.setOnTouchListener(null);
    }

    public void enableButtonForSos() {
        final Drawable drawable = ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.contact_button_background, null);
        if (drawable != null) {
            drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.error), PorterDuff.Mode.SRC_IN);
        }
        this.image.setBackground(drawable);
        this.buttonLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.texa.careapp.app.sos.featuremanager.SosFeatureButtonManager$$ExternalSyntheticLambda3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.m495x8f840dd8(drawable, view, motionEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$enableButtonForSos$4$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager, reason: not valid java name */
    public /* synthetic */ boolean m495x8f840dd8(Drawable drawable, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            vibrate();
            if (drawable != null) {
                drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.error_pressed), PorterDuff.Mode.SRC_IN);
            }
            this.image.setBackground(drawable);
            return true;
        }
        if (action != 1) {
            return false;
        }
        if (drawable != null) {
            drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.error), PorterDuff.Mode.SRC_IN);
        }
        this.image.setBackground(drawable);
        onManualSosButtonClicked();
        return true;
    }

    private void vibrate() {
        this.mVibrator.vibrate(Constants.TIME_TO_VIBRATE_ON_TOUCH);
    }
}
