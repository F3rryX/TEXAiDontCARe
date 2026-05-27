package com.texa.careapp.app.permission;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.SuperscriptSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.ViewDataBinding;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenBackgroundLocationPermissionBinding;
import com.texa.careapp.databinding.ScreenDrawOverlayPermissionBinding;
import com.texa.careapp.databinding.ScreenPermissionBinding;
import com.texa.careapp.utils.Utils;
import java.util.Arrays;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionPresenter {
    private static final int COUNT_BETA_WORD = 4;
    private PermissionActivity mActivity;

    @Inject
    protected Context mContext;
    private PermissionModel mPermissionModel;

    PermissionPresenter(PermissionActivity permissionActivity, CareApplication.ApplicationComponent applicationComponent, PermissionModel permissionModel) {
        this.mActivity = permissionActivity;
        applicationComponent.inject(this);
        this.mPermissionModel = permissionModel;
    }

    public void afterViewInjection(ViewDataBinding viewDataBinding) {
        if (viewDataBinding instanceof ScreenPermissionBinding) {
            ScreenPermissionBinding screenPermissionBinding = (ScreenPermissionBinding) viewDataBinding;
            TextView textView = screenPermissionBinding.screenPermissionTitle;
            TextView textView2 = screenPermissionBinding.screenPermissionDescription;
            TextView textView3 = screenPermissionBinding.screenPermissionBtn;
            ImageView imageView = screenPermissionBinding.screenPermissionImage;
            if (this.mPermissionModel.isBeta()) {
                String string = this.mContext.getString(this.mPermissionModel.getTitleRes());
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                spannableStringBuilder.setSpan(new SuperscriptSpan(), string.length() - 4, string.length(), 33);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(ResourcesCompat.getColor(this.mContext.getResources(), R.color.beta_text_color, null)), string.length() - 4, string.length(), 33);
                textView.setText(spannableStringBuilder);
            } else {
                textView.setText(this.mPermissionModel.getTitleRes());
            }
            textView2.setText(this.mPermissionModel.getDescriptionRes());
            textView3.setText(this.mPermissionModel.getBtnTextRes());
            imageView.setImageDrawable(ResourcesCompat.getDrawable(this.mContext.getResources(), this.mPermissionModel.getImageRes(), null));
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.permission.PermissionPresenter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m337xb1107446(view);
                }
            });
            return;
        }
        if (viewDataBinding instanceof ScreenBackgroundLocationPermissionBinding) {
            ((ScreenBackgroundLocationPermissionBinding) viewDataBinding).fragmentPermissionBtn.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.permission.PermissionPresenter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m338x3e4b25c7(view);
                }
            });
        } else if (viewDataBinding instanceof ScreenDrawOverlayPermissionBinding) {
            ((ScreenDrawOverlayPermissionBinding) viewDataBinding).fragmentPermissionBtn.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.permission.PermissionPresenter$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m339xcb85d748(view);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-permission-PermissionPresenter, reason: not valid java name */
    public /* synthetic */ void m337xb1107446(View view) {
        if (this.mPermissionModel.getPermissionType() != null) {
            if (Arrays.asList(this.mPermissionModel.getPermissionType()).contains("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS")) {
                PowerManager powerManager = (PowerManager) this.mActivity.getSystemService("power");
                if (Build.VERSION.SDK_INT >= 24) {
                    if (!powerManager.isIgnoringBatteryOptimizations(this.mActivity.getPackageName())) {
                        Intent intent = new Intent();
                        intent.setAction("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                        intent.setData(Uri.parse("package:" + this.mActivity.getPackageName()));
                        this.mActivity.startActivityForResult(intent, 7);
                        return;
                    }
                    this.mActivity.mSkipBtn.callOnClick();
                    return;
                }
                this.mActivity.mSkipBtn.callOnClick();
                return;
            }
            this.mActivity.requestPermission(this.mPermissionModel.getPermissionType());
            return;
        }
        this.mActivity.requestPermission(this.mPermissionModel.getPermissionType());
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-permission-PermissionPresenter, reason: not valid java name */
    public /* synthetic */ void m338x3e4b25c7(View view) {
        this.mActivity.requestPermission(this.mPermissionModel.getPermissionType());
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-permission-PermissionPresenter, reason: not valid java name */
    public /* synthetic */ void m339xcb85d748(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            if (!Utils.canDrawOverlays(this.mContext)) {
                Intent intent = new Intent();
                intent.setAction("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                intent.setData(Uri.parse("package:" + this.mActivity.getPackageName()));
                this.mActivity.startActivityForResult(intent, 6);
                return;
            }
            this.mActivity.mSkipBtn.callOnClick();
            return;
        }
        this.mActivity.mSkipBtn.callOnClick();
    }
}
