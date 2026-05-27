package com.texa.careapp.app.onboarding.dialogs;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.DialogFragment;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.app.service.CareService;
import com.texa.careapp.databinding.ScreenDialogNewConfigurationRequestBinding;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.Utils;
import java.util.List;
import java.util.regex.Pattern;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class CareConfigurationRequestDialog extends Screen {
    private static final int ACTION_FIRST_CONFIGURATION = 1;
    public static final String TAG = "CareConfigurationRequestDialog";
    private View layout;
    private final int mAction;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected LoginHelperRx mLogInHelper;

    @Inject
    protected SharedPreferences mSharedPreferences;
    private final List<VehicleModel> mVehicles;
    private final MainActivity mainActivity;

    static /* synthetic */ boolean lambda$initBackPressureHandler$1(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        return i == 4;
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_dialog_new_configuration_request;
    }

    public CareConfigurationRequestDialog(MainActivity mainActivity, List<VehicleModel> list, int i) {
        this.mainActivity = mainActivity;
        this.mVehicles = list;
        this.mAction = i;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenDialogNewConfigurationRequestBinding screenDialogNewConfigurationRequestBinding = (ScreenDialogNewConfigurationRequestBinding) DataBindingUtil.bind(view);
        screenDialogNewConfigurationRequestBinding.requestNewConfigurationDialogBtnCreate.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.CareConfigurationRequestDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m315x9a9379b(view2);
            }
        });
        screenDialogNewConfigurationRequestBinding.requestNewConfigurationDialogDescription.setText(this.mainActivity.getString(R.string.care_new_configuration_dialog_description));
        for (VehicleModel vehicleModel : this.mVehicles) {
            this.layout = LayoutInflater.from(getContext()).inflate(R.layout.dialog_request_configuration_item, (ViewGroup) screenDialogNewConfigurationRequestBinding.requestNewConfigurationDialogVehicles, false);
            new VehicleViewHolder(getContext(), vehicleModel);
            screenDialogNewConfigurationRequestBinding.requestNewConfigurationDialogVehicles.addView(this.layout);
        }
        initBackPressureHandler();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-CareConfigurationRequestDialog, reason: not valid java name */
    public /* synthetic */ void m315x9a9379b(View view) {
        clickConfirm();
    }

    private void clickConfirm() {
        Intent intent = new Intent(this.mainActivity, (Class<?>) OnBoardingActivity.class);
        if (this.mAction == 1) {
            intent.addFlags(335544320);
            intent.putExtra(OnBoardingActivity.OOTB_FLAG, 1);
        }
        getContext().stopService(CareService.buildDefaultIntent(getContext()));
        this.mainActivity.finish();
        this.mainActivity.startActivity(intent);
        goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    private void initBackPressureHandler() {
        ((DialogFragment) getNavigator().getFragmentManager().findFragmentByTag(TAG)).getDialog().setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.texa.careapp.app.onboarding.dialogs.CareConfigurationRequestDialog$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return CareConfigurationRequestDialog.lambda$initBackPressureHandler$1(dialogInterface, i, keyEvent);
            }
        });
    }

    public class VehicleViewHolder extends View {
        protected LinearLayout itemLayout;
        protected TextView label;
        protected TextView subLabel;

        public VehicleViewHolder(final Context context, final VehicleModel vehicleModel) {
            String vehicleModel2;
            String[] strArrSplit;
            super(context);
            this.itemLayout = (LinearLayout) CareConfigurationRequestDialog.this.layout.findViewById(R.id.dialog_request_configuration_layout);
            this.label = (TextView) CareConfigurationRequestDialog.this.layout.findViewById(R.id.dialog_request_configuration_label);
            this.subLabel = (TextView) CareConfigurationRequestDialog.this.layout.findViewById(R.id.dialog_request_configuration_plate_label);
            String vehicleModel3 = Utils.formatVehicleModel(vehicleModel);
            vehicleModel3 = Utils.isEmpty(vehicleModel3) ? vehicleModel.getDescription() : vehicleModel3;
            if (vehicleModel3.contains(Constants.VEHICLE_DESCRIPTION_SEPARATOR)) {
                strArrSplit = vehicleModel3.split(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR));
                vehicleModel2 = Utils.formatVehicleModel(strArrSplit[1]);
                vehicleModel.setModelName(vehicleModel2);
            } else {
                vehicleModel2 = vehicleModel3;
                strArrSplit = null;
            }
            if (Utils.isEmpty(vehicleModel.getBrandName()) && strArrSplit != null) {
                vehicleModel.setBrandName(strArrSplit[0]);
            }
            if (Utils.isEmpty(vehicleModel.getDescription())) {
                vehicleModel.setDescription(vehicleModel.getBrandName() + Constants.VEHICLE_DESCRIPTION_SEPARATOR + Utils.formatVehicleModel(vehicleModel.getModelName()));
            }
            this.label.setText(vehicleModel2);
            this.subLabel.setText(vehicleModel.getPlate());
            this.itemLayout.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.CareConfigurationRequestDialog$VehicleViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m316x3eb89a04(vehicleModel, context, view);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-onboarding-dialogs-CareConfigurationRequestDialog$VehicleViewHolder, reason: not valid java name */
        public /* synthetic */ void m316x3eb89a04(VehicleModel vehicleModel, Context context, View view) {
            if (this.label == null || this.subLabel == null) {
                return;
            }
            Intent intent = new Intent(CareConfigurationRequestDialog.this.mainActivity, (Class<?>) OnBoardingActivity.class);
            intent.putExtra(OnBoardingActivity.PLATE, vehicleModel.getPlate());
            intent.putExtra(OnBoardingActivity.MODEL, vehicleModel.getModelName());
            intent.putExtra(OnBoardingActivity.BRAND, vehicleModel.getBrandName());
            intent.putExtra(OnBoardingActivity.DESCRIPTION, vehicleModel.getDescription());
            if (CareConfigurationRequestDialog.this.mAction == 1) {
                intent.addFlags(335544320);
                intent.putExtra(OnBoardingActivity.OOTB_FLAG, 1);
            }
            CareConfigurationRequestDialog.this.mainActivity.finish();
            CareConfigurationRequestDialog.this.mainActivity.startActivity(intent);
            context.stopService(CareService.buildDefaultIntent(context));
            CareConfigurationRequestDialog.this.mainActivity.getNavigator().goBack();
        }
    }
}
