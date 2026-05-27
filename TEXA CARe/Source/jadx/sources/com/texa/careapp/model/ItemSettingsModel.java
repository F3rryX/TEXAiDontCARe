package com.texa.careapp.model;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.RelativeLayout;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.Constants;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactActivity;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.app.service.CareService;
import com.texa.careapp.app.settings.FactoryResetScreenDialog;
import com.texa.careapp.app.settings.companyinfo.CompanyInfoActivity;
import com.texa.careapp.app.settings.generalsettings.GeneralSettingsActivity;
import com.texa.careapp.app.settings.services.SettingsServicesActivity;
import com.texa.careapp.app.settings.settingscare.SettingsCareActivity;
import com.texa.careapp.app.settings.troubleshooting.ProblemResolutionActivity;
import com.texa.careapp.app.settings.user.SettingsUserActivity;
import com.texa.careapp.utils.webviewsection.WebViewSectionActivity;

/* JADX INFO: loaded from: classes2.dex */
public class ItemSettingsModel implements ISettingsModel {
    private String mTitle = "";
    private String mSubtitle = "";
    private boolean hasImage = false;
    private int mType = -1;
    private int mImage = -1;
    private int mAction = -1;
    private boolean visible = true;

    @Override // com.texa.careapp.model.ISettingsModel
    public void setTitle(String str) {
        this.mTitle = str;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public String getTitle() {
        return this.mTitle;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void setSubtitle(String str) {
        this.mSubtitle = str;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public String getSubtitle() {
        return this.mSubtitle;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void setHasImage(boolean z) {
        this.hasImage = z;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public boolean hasImage() {
        return this.hasImage;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public int getType() {
        return this.mType;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void setType(int i) {
        this.mType = i;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public int getImage() {
        return this.mImage;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void setImage(int i) {
        this.mImage = i;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void setAction(int i) {
        this.mAction = i;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public int getAction() {
        return this.mAction;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public void isVisible(boolean z) {
        this.visible = z;
    }

    @Override // com.texa.careapp.model.ISettingsModel
    public boolean getVisibility() {
        return this.visible;
    }

    public void setOnCLickListener(RelativeLayout relativeLayout, final int i, final Context context) {
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.model.ItemSettingsModel$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemSettingsModel.lambda$setOnCLickListener$0(i, context, view);
            }
        });
    }

    static /* synthetic */ void lambda$setOnCLickListener$0(int i, Context context, View view) {
        if (i == 0) {
            Intent intent = new Intent(SettingsUserActivity.buildIntent(context));
            intent.addFlags(268435456);
            context.startActivity(intent);
            return;
        }
        if (i == 18) {
            context.startActivity(ActivationServiceContactActivity.buildIntent(context));
            return;
        }
        if (i == 10) {
            Intent intent2 = new Intent(context, (Class<?>) WebViewSectionActivity.class);
            intent2.putExtra(WebViewSectionActivity.WEB_VIEW_TYPE, 4);
            intent2.addFlags(268435456);
            context.startActivity(intent2);
            return;
        }
        if (i != 11) {
            switch (i) {
                case 2:
                    Intent intent3 = new Intent(context, (Class<?>) OnBoardingActivity.class);
                    intent3.putExtra(Constants.SETTINGS_ADD_VEHICLE_EXTRA, true);
                    intent3.addFlags(268435456);
                    intent3.addFlags(67108864);
                    context.stopService(CareService.buildDefaultIntent(context));
                    context.startActivity(intent3);
                    break;
                case 3:
                    context.startActivity(SettingsCareActivity.buildIntent(context));
                    break;
                case 4:
                    Intent intent4 = new Intent(ProblemResolutionActivity.buildIntent(context));
                    intent4.addFlags(268435456);
                    context.startActivity(intent4);
                    break;
                case 5:
                    Intent intent5 = new Intent(context, (Class<?>) SettingsServicesActivity.class);
                    intent5.addFlags(268435456);
                    context.startActivity(intent5);
                    break;
                case 6:
                    Intent intent6 = new Intent(CompanyInfoActivity.buildIntent(context));
                    intent6.addFlags(268435456);
                    context.startActivity(intent6);
                    break;
                case 7:
                    Intent intent7 = new Intent(context, (Class<?>) WebViewSectionActivity.class);
                    intent7.putExtra(WebViewSectionActivity.WEB_VIEW_TYPE, 2);
                    intent7.addFlags(268435456);
                    context.startActivity(intent7);
                    break;
                case 8:
                    Intent intent8 = new Intent(context, (Class<?>) WebViewSectionActivity.class);
                    intent8.putExtra(WebViewSectionActivity.WEB_VIEW_TYPE, 1);
                    intent8.addFlags(268435456);
                    context.startActivity(intent8);
                    break;
            }
            return;
        }
        Intent intent9 = new Intent(GeneralSettingsActivity.buildIntent(context));
        intent9.addFlags(268435456);
        context.startActivity(intent9);
    }

    public void setOnCLickListener(RelativeLayout relativeLayout, final Navigator navigator) {
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.model.ItemSettingsModel$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                navigator.goTo(new FactoryResetScreenDialog());
            }
        });
    }

    public void setOnCLickListener(final RelativeLayout relativeLayout, final Context context, final ServiceDataModel serviceDataModel) {
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.model.ItemSettingsModel$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                context.startActivity(WebViewSectionActivity.buildIntentFor(relativeLayout.getContext(), serviceDataModel.getContractUrl()));
            }
        });
    }
}
