package com.texa.careapp.app.settings.services;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import com.activeandroid.Cache;
import com.activeandroid.query.Select;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.databinding.ScreenServicesSubscriptionManagerBinding;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class ServicesSubscriptionManagerScreen extends Screen {
    private static DateFormat sDateFormat = new SimpleDateFormat(Constants.DEFAULT_FORMAT_DATE, Locale.getDefault());
    private static DateFormat sDayFormat = new SimpleDateFormat("dd", Locale.getDefault());
    private static DateFormat sMonthFormat = new SimpleDateFormat("MMM\nyyyy", Locale.getDefault());
    private ImageView alertIcon;
    private AppCompatTextView deleteSubscription;
    private TextView dueDay;
    private TextView dueMonth;
    private View inflatedLayout;
    private TextView labelInfo;

    @Inject
    protected Context mContext;

    @Inject
    UserDataManager mUserDataManager;
    private AppCompatTextView mainInfo;
    private TextView packageName;
    private AppCompatTextView secondInfo;
    private AppCompatTextView status;
    private String id = "";
    private String sosName = "";
    private String label = "";
    private String day = "";
    private String month = "";

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_services_subscription_manager;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenServicesSubscriptionManagerBinding screenServicesSubscriptionManagerBinding = (ScreenServicesSubscriptionManagerBinding) DataBindingUtil.bind(view);
        this.packageName = screenServicesSubscriptionManagerBinding.screenServicesSubscriptionManagerPackageName;
        screenServicesSubscriptionManagerBinding.screenServicesSubscriptionManagerPlayStore.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.services.ServicesSubscriptionManagerScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m399x229a9cce(view2);
            }
        });
        this.inflatedLayout = LayoutInflater.from(this.mContext).inflate(R.layout.settings_services_list_item, (ViewGroup) null, false);
        screenServicesSubscriptionManagerBinding.screenServicesSubscriptionManagerItemContainer.addView(this.inflatedLayout);
        initComponents();
        String serviceDataModelId = ServicesSubscriptionManagerActivity.getServiceDataModelId();
        this.id = serviceDataModelId;
        getServiceModelFromId(serviceDataModelId);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-settings-services-ServicesSubscriptionManagerScreen, reason: not valid java name */
    public /* synthetic */ void m399x229a9cce(View view) {
        clickOnPlayStore();
    }

    private void initComponents() {
        this.mainInfo = (AppCompatTextView) this.inflatedLayout.findViewById(R.id.settings_services_list_item_main_info);
        this.secondInfo = (AppCompatTextView) this.inflatedLayout.findViewById(R.id.settings_services_list_item_second_info);
        this.status = (AppCompatTextView) this.inflatedLayout.findViewById(R.id.settings_services_list_item_status);
        this.deleteSubscription = (AppCompatTextView) this.inflatedLayout.findViewById(R.id.settings_services_list_item_delete);
        this.labelInfo = (TextView) this.inflatedLayout.findViewById(R.id.settings_services_list_item_label);
        this.dueDay = (TextView) this.inflatedLayout.findViewById(R.id.settings_services_list_item_due_day);
        this.dueMonth = (TextView) this.inflatedLayout.findViewById(R.id.settings_services_list_item_due_month);
        this.alertIcon = (ImageView) this.inflatedLayout.findViewById(R.id.alert_icon_service);
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return ServicesSubscriptionManagerScreen.class.getName();
    }

    private void getServiceModelFromId(String str) {
        String tableName = Cache.getTableName(ServiceDataModel.class);
        initItem((ServiceDataModel) new Select().from(ServiceDataModel.class).where(tableName + ".uid=?", str).executeSingle());
    }

    private void initItem(ServiceDataModel serviceDataModel) {
        String string;
        String string2;
        if (serviceDataModel.getDongle() != null) {
            this.mainInfo.setText(Utils.formatVehicleModel(serviceDataModel.getDongle().getSelectedVehicle()));
            this.secondInfo.setText(serviceDataModel.getDongle().getSelectedVehicle().getPlate());
        } else {
            UserModel userCached = this.mUserDataManager.getUserCached();
            this.mainInfo.setText(String.format(this.mContext.getString(R.string.format_string_space), userCached.getFirstName(), userCached.getLastName()));
            this.secondInfo.setText(userCached.getUserName());
        }
        this.secondInfo.setText(serviceDataModel.getDongle().getSelectedVehicle().getPlate());
        this.deleteSubscription.setVisibility(8);
        if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS) {
            if (serviceDataModel.isTrial()) {
                string2 = this.mContext.getString(R.string.settings_services_sos_plus_trial);
            } else {
                string2 = this.mContext.getString(R.string.settings_services_sos_plus);
            }
            this.sosName = string2;
        } else if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT) {
            this.sosName = this.mContext.getString(R.string.settings_services_sos_light);
        }
        String str = String.format(this.mContext.getString(R.string.settings_services_item_status), this.sosName, String.format(this.mContext.getString(R.string.settings_services_item_status_data), sDateFormat.format(serviceDataModel.getActivation())));
        this.status.setText(str);
        if (!serviceDataModel.isTermsAccepted()) {
            this.label = this.mContext.getString(R.string.settings_services_item_problem);
            this.alertIcon.setVisibility(0);
        } else {
            this.alertIcon.setVisibility(8);
            if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS) {
                this.day = (serviceDataModel.isTrial() || serviceDataModel.isMechanicPurchase()) ? sDayFormat.format(serviceDataModel.getExpiration()) : null;
                this.month = (serviceDataModel.isTrial() || serviceDataModel.isMechanicPurchase()) ? sMonthFormat.format(serviceDataModel.getExpiration()) : null;
                if (serviceDataModel.isTrial() || serviceDataModel.isMechanicPurchase()) {
                    string = this.mContext.getString(R.string.settings_services_item_due_label);
                } else {
                    string = this.mContext.getString(R.string.settings_services_item_subscription);
                }
                this.label = string;
            } else if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT) {
                this.label = this.mContext.getString(R.string.settings_services_item_active);
            }
        }
        this.labelInfo.setText(str);
        this.labelInfo.setText(this.label);
        if (this.day != null) {
            this.dueDay.setVisibility(0);
            this.dueDay.setText(this.day);
        } else {
            this.dueDay.setVisibility(8);
        }
        if (this.month != null) {
            this.dueMonth.setVisibility(0);
            this.dueMonth.setText(this.month);
        } else {
            this.dueMonth.setVisibility(8);
        }
        this.packageName.setText(serviceDataModel.getPackageName());
    }

    private void clickOnPlayStore() {
        Intent intentBuildIntentForTexaCarePageOnGooglePlay = MainActivity.buildIntentForTexaCarePageOnGooglePlay();
        intentBuildIntentForTexaCarePageOnGooglePlay.addFlags(268435456);
        this.mContext.startActivity(intentBuildIntentForTexaCarePageOnGooglePlay);
    }
}
