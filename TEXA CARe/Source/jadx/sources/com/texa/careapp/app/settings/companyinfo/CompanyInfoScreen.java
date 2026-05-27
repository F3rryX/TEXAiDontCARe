package com.texa.careapp.app.settings.companyinfo;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenCompanyInfoBinding;
import com.texa.careapp.utils.Utils;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class CompanyInfoScreen extends Screen {
    private static boolean NEED_TO_SHOW_LEGAL_RAPPRESENTATIVE = false;
    private static boolean NEED_TO_SHOW_PEC = true;
    private static final String TAG = "CompanyInfoScreen";
    private ScreenCompanyInfoBinding binding;

    @Inject
    protected Context mContext;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_company_info;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenCompanyInfoBinding screenCompanyInfoBinding = (ScreenCompanyInfoBinding) DataBindingUtil.bind(view);
        this.binding = screenCompanyInfoBinding;
        screenCompanyInfoBinding.textviewCompanySite.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.companyinfo.CompanyInfoScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.clickGoToCompanySite(view2);
            }
        });
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        initTextViewValue();
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
    }

    private void initTextViewValue() {
        String string = this.mContext.getString(R.string.registered_office_location_value);
        if (!Utils.isEmpty(string)) {
            this.binding.textviewRegisteredOffice.setText(string);
        }
        String string2 = this.mContext.getString(R.string.administrative_headquarters_plant_location_value);
        if (!Utils.isEmpty(string2)) {
            this.binding.textviewAdministrativeHeadquartersPlant.setText(string2);
        }
        Context context = this.mContext;
        String string3 = context.getString(R.string.company_info1, context.getString(R.string.vat_registration_value));
        if (!Utils.isEmpty(string3)) {
            this.binding.textviewCompanyInfo1.setText(string3);
        }
        Context context2 = this.mContext;
        String string4 = context2.getString(R.string.company_info2, context2.getString(R.string.share_capital_value), this.mContext.getString(R.string.rea_n_value));
        if (!Utils.isEmpty(string4)) {
            this.binding.textviewCompanyInfo2.setText(string4);
        }
        Context context3 = this.mContext;
        String string5 = context3.getString(R.string.company_info3, context3.getString(R.string.company_coordination_value));
        if (!Utils.isEmpty(string5)) {
            this.binding.textviewCompanyInfo3.setText(string5);
        }
        if (NEED_TO_SHOW_LEGAL_RAPPRESENTATIVE) {
            Context context4 = this.mContext;
            String string6 = context4.getString(R.string.company_info4, context4.getString(R.string.company_legal_representative_value));
            if (!Utils.isEmpty(string6)) {
                this.binding.textviewCompanyInfo4.setText(string6);
            }
        } else {
            this.binding.textviewCompanyInfo4.setVisibility(8);
        }
        Context context5 = this.mContext;
        String string7 = context5.getString(R.string.company_phone_info, context5.getString(R.string.company_phone_value));
        if (!Utils.isEmpty(string7)) {
            this.binding.textviewCompanyPhone.setText(string7);
        }
        Context context6 = this.mContext;
        String string8 = context6.getString(R.string.company_fax_info, context6.getString(R.string.company_fax_value));
        if (!Utils.isEmpty(string8)) {
            this.binding.textviewCompanyFax.setText(string8);
        }
        if (NEED_TO_SHOW_PEC) {
            Context context7 = this.mContext;
            String string9 = context7.getString(R.string.pec_text, context7.getString(R.string.pec_value));
            if (Utils.isEmpty(string9)) {
                return;
            }
            this.binding.textviewCompanyInfo5.setText(string9);
            return;
        }
        this.binding.textviewCompanyInfo5.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clickGoToCompanySite(View view) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.mContext.getString(R.string.company_main_site_value)));
        intent.addFlags(268435456);
        this.mContext.startActivity(intent);
    }
}
