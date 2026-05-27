package com.texa.careapp.app.ecodriving.tutorial;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.ecodriving.AcceptationTermsActivity;
import com.texa.careapp.app.ecodriving.EcoDrivingActivity;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ActivityEcoDrivingTutorialBinding;
import com.texa.careapp.model.TermsModel;
import com.texa.careapp.utils.UserDataManager;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingTutorialActivity extends BaseActivity {
    private static final String HAVE_TO_OPEN_NEW_ACTIVITY = "HAVE_TO_OPEN_NEW_ACTIVITY";
    private EcoDrivingTutorialAdapter adapter;
    private TextView mButton;
    protected CareApplication mCareApplication;
    protected Navigator mNavigator;

    @Inject
    protected SharedPreferences mSharedPreferences;

    @Inject
    protected UserDataManager mUserDataManager;
    private ViewPager mViewPager;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return true;
    }

    public static Intent buildIntent(Context context) {
        return buildIntent(context, true);
    }

    public static Intent buildIntent(Context context, boolean z) {
        Intent intent = new Intent(context, (Class<?>) EcoDrivingTutorialActivity.class);
        intent.putExtra(HAVE_TO_OPEN_NEW_ACTIVITY, z);
        intent.addFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityEcoDrivingTutorialBinding activityEcoDrivingTutorialBinding = (ActivityEcoDrivingTutorialBinding) DataBindingUtil.setContentView(this, R.layout.activity_eco_driving_tutorial);
        this.mViewPager = activityEcoDrivingTutorialBinding.activityEcoDrivingTutorialPager;
        TextView textView = activityEcoDrivingTutorialBinding.activityEcoDrivingTutorialBtn;
        this.mButton = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m255x7f81c32b(view);
            }
        });
        CareApplication careApplication = getCareApplication();
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        this.mNavigator = Navigator.getInstanceFor(this);
        EcoDrivingTutorialAdapter ecoDrivingTutorialAdapter = new EcoDrivingTutorialAdapter(this.mCareApplication.component(), getTutorialItems());
        this.adapter = ecoDrivingTutorialAdapter;
        this.mViewPager.setAdapter(ecoDrivingTutorialAdapter);
        activityEcoDrivingTutorialBinding.activityEcoDrivingTutorialIndicator.setViewPager(this.mViewPager);
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialActivity.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                if (i == EcoDrivingTutorialActivity.this.adapter.getCount() - 1) {
                    EcoDrivingTutorialActivity.this.mButton.setText(R.string.eco_driving_tutorial_button);
                } else {
                    EcoDrivingTutorialActivity.this.mButton.setText(R.string.eco_driving_tutorial_button_next);
                }
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-app-ecodriving-tutorial-EcoDrivingTutorialActivity, reason: not valid java name */
    public /* synthetic */ void m255x7f81c32b(View view) {
        clickClose();
    }

    private List<TutorialItem> getTutorialItems() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new TutorialItem(R.string.eco_driving_tutorial_title_1, R.string.eco_driving_tutorial_description_1, R.drawable.tutorial_item_1));
        arrayList.add(new TutorialItem(R.string.eco_driving_tutorial_title_2, R.string.eco_driving_tutorial_description_2, R.drawable.tutorial_item_2));
        arrayList.add(new TutorialItem(R.string.eco_driving_tutorial_title_3, R.string.eco_driving_tutorial_description_3, R.drawable.tutorial_item_3));
        return arrayList;
    }

    private void clickClose() {
        if (this.mViewPager.getCurrentItem() == this.adapter.getCount() - 1) {
            savePrefs(Constants.PREFS_KEY_ECO_DRIVING_TUTORIAL, true);
            TermsModel termAcepted = this.mUserDataManager.getUserCached().getTermAcepted(Constants.TERM_OF_SERVICES_NAME_PRIVACY);
            if (termAcepted == null || termAcepted.version < 2) {
                startActivity(AcceptationTermsActivity.buildIntent(this));
            } else if (getIntent().getBooleanExtra(HAVE_TO_OPEN_NEW_ACTIVITY, true)) {
                startActivity(EcoDrivingActivity.buildIntent(this));
            }
            finish();
            return;
        }
        ViewPager viewPager = this.mViewPager;
        viewPager.setCurrentItem(viewPager.getCurrentItem() + 1, true);
    }

    protected void savePrefs(String str, boolean z) {
        SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
        editorEdit.putBoolean(str, z);
        editorEdit.apply();
    }
}
