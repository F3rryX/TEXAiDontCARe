package com.texa.careapp.app.settings.services;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ObservableField;
import androidx.recyclerview.widget.RecyclerView;
import com.activeandroid.query.Select;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.Constants;
import com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen;
import com.texa.careapp.app.activationSosServices.ActivationServiceActivity;
import com.texa.careapp.app.activationSosServices.FirmwareVersionAlertDialog;
import com.texa.careapp.app.settings.services.SettingsServicesAdapter;
import com.texa.careapp.app.sos.SosPrerequisiteActivity;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.checks.Check;
import com.texa.careapp.databinding.SettingsServicesListItemBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.core.utils.FirmwareVersion;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsServicesAdapter extends RecyclerView.Adapter<ServiceViewHolder> {
    private static DateFormat sDateFormat = new SimpleDateFormat(Constants.DEFAULT_FORMAT_DATE, Locale.getDefault());
    private static DateFormat sDayFormat = new SimpleDateFormat("dd", Locale.getDefault());
    private static DateFormat sMonthFormat = new SimpleDateFormat("MMM\nyyyy", Locale.getDefault());
    private DongleDataManager dongleDataManager;
    private Context mContext;
    private List<ServiceDataModel> mItems;
    private Navigator mNavigator;
    private SosFeatureManager mSosFeatureManager;
    private UserDataManager mUserDataManager;
    public final ObservableField<Boolean> preLollipopVersion;
    private UpdateData updateDataListener;

    public interface UpdateData {
        void updateDataAfterAcceptingTerms();
    }

    SettingsServicesAdapter(Context context, Navigator navigator, List<ServiceDataModel> list, UserDataManager userDataManager, DongleDataManager dongleDataManager, UpdateData updateData, SosFeatureManager sosFeatureManager) {
        ObservableField<Boolean> observableField = new ObservableField<>(false);
        this.preLollipopVersion = observableField;
        this.mContext = context;
        this.mNavigator = navigator;
        this.mItems = list;
        this.mUserDataManager = userDataManager;
        this.dongleDataManager = dongleDataManager;
        this.updateDataListener = updateData;
        this.mSosFeatureManager = sosFeatureManager;
        if (Build.VERSION.SDK_INT < 21) {
            observableField.set(true);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ServiceViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ServiceViewHolder((SettingsServicesListItemBinding) DataBindingUtil.inflate(LayoutInflater.from(viewGroup.getContext()), R.layout.settings_services_list_item, viewGroup, false), this.mSosFeatureManager);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ServiceViewHolder serviceViewHolder, int i) {
        serviceViewHolder.bindView(this.mContext, this.mNavigator, this.mItems.get(i), this.mUserDataManager, this.dongleDataManager, this.updateDataListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mItems.size();
    }

    public static class ServiceViewHolder extends RecyclerView.ViewHolder {
        private ImageView alertIcon;
        private boolean checkResult;
        private LinearLayout clickableItem;
        private AppCompatTextView deleteSubscription;
        private TextView dueDay;
        private TextView dueMonth;
        private TextView labelInfo;
        private CardView mCardView;
        private Disposable mCheckDisposable;
        private SosFeatureManager mSosFeatureManager;
        private AppCompatTextView mainInfo;
        private AppCompatTextView secondInfo;
        private AppCompatTextView status;

        public ServiceViewHolder(SettingsServicesListItemBinding settingsServicesListItemBinding, SosFeatureManager sosFeatureManager) {
            super(settingsServicesListItemBinding.getRoot());
            this.checkResult = false;
            this.mSosFeatureManager = sosFeatureManager;
            this.mCardView = settingsServicesListItemBinding.settingsServicesListItemCardView;
            this.clickableItem = settingsServicesListItemBinding.settingsServicesListItemInfoLay;
            this.mainInfo = settingsServicesListItemBinding.settingsServicesListItemMainInfo;
            this.secondInfo = settingsServicesListItemBinding.settingsServicesListItemSecondInfo;
            this.status = settingsServicesListItemBinding.settingsServicesListItemStatus;
            this.deleteSubscription = settingsServicesListItemBinding.settingsServicesListItemDelete;
            this.labelInfo = settingsServicesListItemBinding.settingsServicesListItemLabel;
            this.dueDay = settingsServicesListItemBinding.settingsServicesListItemDueDay;
            this.dueMonth = settingsServicesListItemBinding.settingsServicesListItemDueMonth;
            this.alertIcon = settingsServicesListItemBinding.alertIconService;
        }

        /* JADX WARN: Removed duplicated region for block: B:95:0x02ce  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x02d9  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x02e0  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x02eb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void bindView(final Context context, final Navigator navigator, final ServiceDataModel serviceDataModel, UserDataManager userDataManager, final DongleDataManager dongleDataManager, final UpdateData updateData) {
            String string;
            String string2;
            String str;
            String str2;
            String str3;
            String string3;
            String string4;
            String string5;
            if (Build.VERSION.SDK_INT < 21) {
                this.mCardView.setPreventCornerOverlap(false);
            }
            if (serviceDataModel.getDongle() != null) {
                VehicleModel vehicleByHwId = serviceDataModel.getDongle().getVehicleByHwId();
                if (vehicleByHwId != null) {
                    this.mainInfo.setText(Utils.formatVehicleModel(vehicleByHwId));
                    this.secondInfo.setText(vehicleByHwId.getPlate());
                }
            } else {
                UserModel userCached = userDataManager.getUserCached();
                this.mainInfo.setText(String.format(context.getString(R.string.format_string_space), userCached.getFirstName(), userCached.getLastName()));
                this.secondInfo.setText(userCached.getUserName());
            }
            this.deleteSubscription.setVisibility(8);
            string = "";
            if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS) {
                if (serviceDataModel.isTrial()) {
                    string2 = context.getString(R.string.settings_services_sos_plus_trial);
                } else {
                    string2 = context.getString(R.string.settings_services_sos_plus);
                }
            } else {
                string2 = serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT ? context.getString(R.string.settings_services_sos_light) : "";
            }
            int i = AnonymousClass1.$SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus[serviceDataModel.getStatus().ordinal()];
            String str4 = null;
            if (i != 1) {
                if (i == 2) {
                    string5 = context.getString(R.string.settings_services_item_due);
                    str3 = String.format(context.getString(R.string.settings_services_item_status_not_active), string2);
                    this.clickableItem.setBackgroundColor(Utils.getColorResource(context, R.color.sos_services_available));
                    this.status.setTextColor(ResourcesCompat.getColor(context.getResources(), R.color.sos_services_text_light_red, null));
                } else if (i == 3) {
                    string5 = context.getString(R.string.settings_services_item_pending);
                    str3 = String.format(context.getString(R.string.settings_services_item_status_not_active), string2);
                    this.clickableItem.setBackgroundColor(Utils.getColorResource(context, R.color.sos_services_pending));
                    this.status.setTextColor(ResourcesCompat.getColor(context.getResources(), R.color.sos_services_text_yellow, null));
                } else {
                    if (i != 4) {
                        string3 = "";
                    } else {
                        string = String.format(context.getString(R.string.settings_services_item_status_not_active), string2);
                        this.clickableItem.setBackgroundColor(Utils.getColorResource(context, R.color.sos_services_available));
                        this.status.setTextColor(ResourcesCompat.getColor(context.getResources(), R.color.sos_services_text_light_red, null));
                        if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT || ((serviceDataModel.isTrial() && serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS) || (!serviceDataModel.isTrial() && serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS && isSOSTrialNotAvailable(serviceDataModel.getDongle().getHwid())))) {
                            String string6 = context.getString(R.string.settings_services_item_not_active);
                            this.clickableItem.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.services.SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    SettingsServicesAdapter.ServiceViewHolder.lambda$bindView$3(dongleDataManager, context, serviceDataModel, navigator, view);
                                }
                            });
                            string3 = string6;
                        } else {
                            string3 = context.getString(R.string.settings_sos_plus_not_activated);
                        }
                    }
                    str2 = null;
                    this.labelInfo.setText(string);
                    this.labelInfo.setText(string3);
                    if (str4 == null) {
                        this.dueDay.setVisibility(0);
                        this.dueDay.setText(str4);
                    } else {
                        this.dueDay.setVisibility(8);
                    }
                    if (str2 == null) {
                        this.dueMonth.setVisibility(0);
                        this.dueMonth.setText(str2);
                    } else {
                        this.dueMonth.setVisibility(8);
                    }
                    this.status.setText(string);
                }
                string3 = string5;
                str2 = null;
            } else {
                if (checkIfThereAreProblems(serviceDataModel)) {
                    if (this.checkResult) {
                        string4 = context.getString(R.string.settings_services_item_problem);
                        this.clickableItem.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.services.SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                this.f$0.m400x67ba6e94(navigator, serviceDataModel, updateData, view);
                            }
                        });
                    } else {
                        string4 = context.getString(R.string.settings_services_item_active);
                        this.clickableItem.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.services.SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                Context context2 = context;
                                context2.startActivity(SosPrerequisiteActivity.buildIntent(context2, serviceDataModel));
                            }
                        });
                    }
                    this.alertIcon.setVisibility(0);
                    this.clickableItem.setBackgroundColor(Utils.getColorResource(context, R.color.sos_services_problem));
                    this.status.setTextColor(ResourcesCompat.getColor(context.getResources(), R.color.sos_services_text_red, null));
                    string = string4;
                    str2 = null;
                } else {
                    if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS) {
                        str = (serviceDataModel.isTrial() || serviceDataModel.isMechanicPurchase()) ? SettingsServicesAdapter.sDayFormat.format(serviceDataModel.getExpiration()) : null;
                        str2 = (serviceDataModel.isTrial() || serviceDataModel.isMechanicPurchase()) ? SettingsServicesAdapter.sMonthFormat.format(serviceDataModel.getExpiration()) : null;
                        if (serviceDataModel.isTrial() || serviceDataModel.isMechanicPurchase()) {
                            string = context.getString(R.string.settings_services_item_due_label);
                        } else {
                            string = context.getString(R.string.settings_services_item_subscription);
                        }
                    } else {
                        string = serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT ? context.getString(R.string.settings_services_item_active) : "";
                        str = null;
                        str2 = null;
                    }
                    this.clickableItem.setBackgroundColor(Utils.getColorResource(context, R.color.sos_services_active));
                    this.status.setTextColor(ResourcesCompat.getColor(context.getResources(), R.color.sos_services_text_green, null));
                    str4 = str;
                }
                str3 = String.format(context.getString(R.string.settings_services_item_status), string2, String.format(context.getString(R.string.settings_services_item_status_data), SettingsServicesAdapter.sDateFormat.format(serviceDataModel.getActivation())));
                if (!serviceDataModel.isTrial() && serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS && !serviceDataModel.isMechanicPurchase()) {
                    this.deleteSubscription.setVisibility(0);
                    this.deleteSubscription.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.services.SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingsServicesAdapter.ServiceViewHolder.lambda$bindView$2(context, serviceDataModel, view);
                        }
                    });
                } else {
                    this.deleteSubscription.setVisibility(4);
                }
                string3 = string;
            }
            string = str3;
            this.labelInfo.setText(string);
            this.labelInfo.setText(string3);
            if (str4 == null) {
            }
            if (str2 == null) {
            }
            this.status.setText(string);
        }

        /* JADX INFO: renamed from: com.texa.careapp.app.settings.services.SettingsServicesAdapter$ServiceViewHolder$1, reason: invalid class name */
        class AnonymousClass1 extends AcceptationTermsSosServiceScreen {
            final /* synthetic */ UpdateData val$updateDataListener;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(ServiceDataModel serviceDataModel, UpdateData updateData) {
                super(serviceDataModel);
                this.val$updateDataListener = updateData;
            }

            @Override // com.texa.careapp.app.ecodriving.AcceptationTermsScreen
            public void acceptedCondition() {
                Observable<ServiceDataModel> observableActivationService = activationService();
                final UpdateData updateData = this.val$updateDataListener;
                observableActivationService.subscribe(new Consumer() { // from class: com.texa.careapp.app.settings.services.SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda0
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) throws Exception {
                        this.f$0.m402x85796449(updateData, (ServiceDataModel) obj);
                    }
                }, new Consumer() { // from class: com.texa.careapp.app.settings.services.SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda1
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        Timber.e((Throwable) obj, "ServiceAcceptTerms error", new Object[0]);
                    }
                });
            }

            /* JADX INFO: renamed from: lambda$acceptedCondition$0$com-texa-careapp-app-settings-services-SettingsServicesAdapter$ServiceViewHolder$1, reason: not valid java name */
            public /* synthetic */ void m402x85796449(UpdateData updateData, ServiceDataModel serviceDataModel) throws Exception {
                updateData.updateDataAfterAcceptingTerms();
                goBack();
            }
        }

        /* JADX INFO: renamed from: lambda$bindView$0$com-texa-careapp-app-settings-services-SettingsServicesAdapter$ServiceViewHolder, reason: not valid java name */
        public /* synthetic */ void m400x67ba6e94(Navigator navigator, ServiceDataModel serviceDataModel, UpdateData updateData, View view) {
            navigator.goTo(new AnonymousClass1(serviceDataModel, updateData));
        }

        static /* synthetic */ void lambda$bindView$2(Context context, ServiceDataModel serviceDataModel, View view) {
            Intent intent = new Intent(context, (Class<?>) ServicesSubscriptionManagerActivity.class);
            intent.addFlags(268435456);
            intent.putExtra("serviceDataModelId", serviceDataModel.getUid());
            context.startActivity(intent);
        }

        static /* synthetic */ void lambda$bindView$3(DongleDataManager dongleDataManager, Context context, ServiceDataModel serviceDataModel, Navigator navigator, View view) {
            if (dongleDataManager.getDongleModel().getMainAppVersion().getVersion().compareTo(new FirmwareVersion(2, 0, 1, 1).getVersion()) == 1 && dongleDataManager.getDongleModel().getServiceAppVersion().getVersion().compareTo(new FirmwareVersion(2, 0, 1, 1).getVersion()) == 1) {
                context.startActivity(ActivationServiceActivity.buildIntent(context, serviceDataModel));
            } else {
                navigator.goTo(new FirmwareVersionAlertDialog());
            }
        }

        private boolean isSOSTrialNotAvailable(String str) {
            ServiceDataModel serviceDataModel = (ServiceDataModel) new Select().from(ServiceDataModel.class).where("service_type = ?", ServiceDataModel.DongleServiceId.SOS).and("trial = ?", true).and("hwid = ?", str).executeSingle();
            return serviceDataModel == null || serviceDataModel.getStatus() == ServiceDataModel.DongleServiceStatus.INACTIVE;
        }

        private boolean checkIfThereAreProblems(ServiceDataModel serviceDataModel) {
            return (checkSosPrerequisite() && serviceDataModel.isTermsAccepted()) ? false : true;
        }

        private boolean checkSosPrerequisite() {
            Utils.safeDispose(this.mCheckDisposable);
            this.mCheckDisposable = this.mSosFeatureManager.observeChecksForNotification().subscribe(new Consumer() { // from class: com.texa.careapp.app.settings.services.SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m401xb9670e6d((Check.Result) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.settings.services.SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda5
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "error checking sos prerequisite", new Object[0]);
                }
            });
            return this.checkResult;
        }

        /* JADX INFO: renamed from: lambda$checkSosPrerequisite$4$com-texa-careapp-app-settings-services-SettingsServicesAdapter$ServiceViewHolder, reason: not valid java name */
        public /* synthetic */ void m401xb9670e6d(Check.Result result) throws Exception {
            this.checkResult = result == Check.Result.OK;
        }
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.settings.services.SettingsServicesAdapter$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus;

        static {
            int[] iArr = new int[ServiceDataModel.DongleServiceStatus.values().length];
            $SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus = iArr;
            try {
                iArr[ServiceDataModel.DongleServiceStatus.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus[ServiceDataModel.DongleServiceStatus.INACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus[ServiceDataModel.DongleServiceStatus.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus[ServiceDataModel.DongleServiceStatus.AVAILABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void setMarginStart(View view, float f) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        layoutParams.setMarginStart((int) f);
        view.setLayoutParams(layoutParams);
    }

    public static void setMarginEnd(View view, float f) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        layoutParams.setMarginEnd((int) f);
        view.setLayoutParams(layoutParams);
    }

    public static void setMarginTop(View view, float f) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        layoutParams.setMargins(layoutParams.leftMargin, (int) f, layoutParams.rightMargin, layoutParams.bottomMargin);
        view.setLayoutParams(layoutParams);
    }

    public static void setMarginBottom(View view, float f) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        layoutParams.setMargins(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.rightMargin, (int) f);
        view.setLayoutParams(layoutParams);
    }

    public static void setLayoutWidth(View view, float f) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        layoutParams.width = (int) f;
        view.setLayoutParams(layoutParams);
    }
}
