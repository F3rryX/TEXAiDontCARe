package com.texa.careapp.app.ecodriving.hint;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ActivityEcoDrivingHintBinding;
import com.texa.careapp.views.CirclePageIndicator;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingHintActivity extends BaseActivity {
    private static final String ECO_DRIVING_TIPS_TYPE = "ECO_DRIVING_TIPS_TYPE";
    private EcoDrivingHintAdapter adapter;
    private TextView btnNext;
    private ViewPager mViewPager;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context, ArrayList<String> arrayList) {
        Intent intent = new Intent(context, (Class<?>) EcoDrivingHintActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(ECO_DRIVING_TIPS_TYPE, arrayList);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityEcoDrivingHintBinding activityEcoDrivingHintBinding = (ActivityEcoDrivingHintBinding) DataBindingUtil.setContentView(this, R.layout.activity_eco_driving_hint);
        this.mViewPager = activityEcoDrivingHintBinding.activityEcoDrivingHintPager;
        CirclePageIndicator circlePageIndicator = activityEcoDrivingHintBinding.activityEcoDrivingHintIndicator;
        TextView textView = activityEcoDrivingHintBinding.activityEcoDrivingHintBtnNext;
        this.btnNext = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.hint.EcoDrivingHintActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m253xbc62ff8b(view);
            }
        });
        activityEcoDrivingHintBinding.activityEcoDrivingHintClose.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.hint.EcoDrivingHintActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m254x76d8a00c(view);
            }
        });
        getCareApplication().component().inject(this);
        EcoDrivingHintAdapter ecoDrivingHintAdapter = new EcoDrivingHintAdapter(getCareApplication().component(), EcoDrivingEventsDataManager.getTips(getIntent().getStringArrayListExtra(ECO_DRIVING_TIPS_TYPE)));
        this.adapter = ecoDrivingHintAdapter;
        this.mViewPager.setAdapter(ecoDrivingHintAdapter);
        circlePageIndicator.setViewPager(this.mViewPager);
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.texa.careapp.app.ecodriving.hint.EcoDrivingHintActivity.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                if (i == EcoDrivingHintActivity.this.adapter.getCount() - 1) {
                    EcoDrivingHintActivity.this.btnNext.setText(R.string.eco_driving_hint_btn_finish);
                } else {
                    EcoDrivingHintActivity.this.btnNext.setText(R.string.eco_driving_hint_btn_next);
                }
            }
        });
        this.mViewPager.setCurrentItem(0, true);
        if (this.adapter.getCount() == 1) {
            this.btnNext.setText(R.string.eco_driving_hint_btn_finish);
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-ecodriving-hint-EcoDrivingHintActivity, reason: not valid java name */
    public /* synthetic */ void m253xbc62ff8b(View view) {
        clickNext();
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-texa-careapp-app-ecodriving-hint-EcoDrivingHintActivity, reason: not valid java name */
    public /* synthetic */ void m254x76d8a00c(View view) {
        finish();
    }

    private void clickNext() {
        if (this.mViewPager.getCurrentItem() < this.adapter.getCount() - 1) {
            ViewPager viewPager = this.mViewPager;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1, true);
        } else {
            finish();
        }
    }
}
