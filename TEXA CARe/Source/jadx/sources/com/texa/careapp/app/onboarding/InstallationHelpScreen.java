package com.texa.careapp.app.onboarding;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.view.View;
import androidx.core.app.ActivityCompat;
import androidx.core.content.FileProvider;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.app.onboarding.dialogs.EnableBluetoothScreenDialog;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.Communication;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class InstallationHelpScreen extends Screen {
    private boolean hasSkipped;
    private OnBoardingActivity mActivity;
    private CareApplication mCareApplication;

    @Inject
    Communication mCommunication;

    @Inject
    DongleDataManager mDongleDataManager;
    private DongleModel mDongleModel;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected SharedPreferences mPreferences;
    private boolean shouldUnregister;
    private boolean wasUserNotified;
    private final String INSTALLATION_HELPER_FILE_NAME = "Installation_helper.pdf";
    private BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_installation_help;
    }

    public InstallationHelpScreen(CareApplication careApplication, OnBoardingActivity onBoardingActivity, boolean z) {
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        this.mActivity = onBoardingActivity;
        this.hasSkipped = z;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        view.findViewById(R.id.screen_installation_help_next_layout).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.InstallationHelpScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m287xbd4da14e(view2);
            }
        });
        view.findViewById(R.id.screen_installation_help_obd_layout).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.InstallationHelpScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m288xbe83f42d(view2);
            }
        });
        this.mDongleModel = this.mDongleDataManager.getDongleModel();
        this.wasUserNotified = this.mPreferences.getBoolean(Constants.ERROR_VEHICLE_ALREADY_CONFIGURED, false);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-InstallationHelpScreen, reason: not valid java name */
    public /* synthetic */ void m287xbd4da14e(View view) {
        onNextClicked();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-InstallationHelpScreen, reason: not valid java name */
    public /* synthetic */ void m288xbe83f42d(View view) {
        openPdfHelper();
    }

    private void onNextClicked() {
        if (this.mBluetoothAdapter.isEnabled()) {
            handleNextStep();
        } else {
            getNavigator().goTo(new EnableBluetoothScreenDialog(this.mCareApplication));
        }
    }

    private void handleNextStep() {
        if (this.mDongleModel == null || (!Utils.isCareConnected(this.mCommunication) && !this.wasUserNotified)) {
            getNavigator().goTo(new DongleDiscoveryScreen(this.mCareApplication, this.mActivity, this.hasSkipped));
        } else {
            getNavigator().goTo(new StartEngineScreen(this.mActivity));
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        if (!this.mEventBus.isRegistered(this)) {
            this.mEventBus.register(this);
        }
        this.shouldUnregister = true;
        super.onResume();
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        if (this.shouldUnregister) {
            this.mEventBus.unregister(this);
        }
        super.onPause();
    }

    private void openPdfHelper() {
        if (isStoragePermissionGranted()) {
            AssetManager assets = getContext().getAssets();
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + File.separator + "TEXA CARe");
            Timber.i("CREATE DIR --> %s", Boolean.valueOf(file.mkdirs()));
            File file2 = new File(file, "Installation_helper.pdf");
            try {
                InputStream inputStreamOpen = assets.open("Installation_helper.pdf");
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                copyFile(inputStreamOpen, bufferedOutputStream);
                inputStreamOpen.close();
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
            } catch (Exception e) {
                Timber.e("tag", e.getMessage());
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            Uri correctUri = getCorrectUri(file2);
            intent.setDataAndType(correctUri, "application/pdf");
            Iterator<ResolveInfo> it = getContext().getPackageManager().queryIntentActivities(intent, 65536).iterator();
            while (it.hasNext()) {
                getContext().grantUriPermission(it.next().activityInfo.packageName, correctUri, 3);
            }
            intent.addFlags(268435456);
            getContext().startActivity(intent);
        }
    }

    private boolean isStoragePermissionGranted() {
        if (Build.VERSION.SDK_INT < 23 || getContext().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            return true;
        }
        this.shouldUnregister = false;
        ActivityCompat.requestPermissions(this.mActivity, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
        return false;
    }

    private void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    private Uri getCorrectUri(File file) {
        if (Build.VERSION.SDK_INT >= 23) {
            return FileProvider.getUriForFile(getContext(), "com.texa.care.provider", file);
        }
        return Uri.parse("file://" + Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + File.separator + "TEXA CARe/Installation_helper.pdf");
    }

    @Subscribe
    public void onEvent(OnBoardingActivity.WritingPermissionEvent writingPermissionEvent) {
        if (writingPermissionEvent.isStatus()) {
            openPdfHelper();
        }
    }

    @Subscribe
    public void onEvent(EnableBluetoothScreenDialog.BluetoothEnabledEvent bluetoothEnabledEvent) {
        handleNextStep();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return InstallationHelpScreen.class.getName();
    }
}
