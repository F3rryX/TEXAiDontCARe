package com.texa.careapp.app.walkthrough;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import androidx.databinding.DataBindingUtil;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.careapp.base.BaseActivity;
import com.texa.careapp.databinding.ActivityWalkthroughBinding;
import com.texa.careapp.views.CirclePageIndicator;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class WalkthroughActivity extends BaseActivity {
    protected static final String HAS_SHOT_PREFS_KEY = "walkthrough-activity-has-shot";
    private WalkThroughAdapter adapter;

    @Inject
    protected SharedPreferences mPreferences;
    private ViewPager mViewPager;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public static Intent buildIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) WalkthroughActivity.class);
        intent.addFlags(268435456);
        return intent;
    }

    public static boolean hasShot(SharedPreferences sharedPreferences) {
        return sharedPreferences.getBoolean(HAS_SHOT_PREFS_KEY, false);
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityWalkthroughBinding activityWalkthroughBinding = (ActivityWalkthroughBinding) DataBindingUtil.setContentView(this, R.layout.activity_walkthrough);
        VideoView videoView = activityWalkthroughBinding.activityWalkthroughVideoView;
        this.mViewPager = activityWalkthroughBinding.activityWalkthroughPager;
        CirclePageIndicator circlePageIndicator = activityWalkthroughBinding.activityWalkthroughIndicator;
        activityWalkthroughBinding.activityWalkthroughClick.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.walkthrough.WalkthroughActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Timber.i("preventShowVideoControls", new Object[0]);
            }
        });
        activityWalkthroughBinding.activityWalkthroughBottomLayContent.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.walkthrough.WalkthroughActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Timber.i("preventShowVideoControls", new Object[0]);
            }
        });
        activityWalkthroughBinding.activityWalkthroughBtnNext.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.walkthrough.WalkthroughActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m521xb3c189e8(view);
            }
        });
        activityWalkthroughBinding.activityWalkthroughBtnSkip.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.walkthrough.WalkthroughActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m522xcddd0887(view);
            }
        });
        getCareApplication().component().inject(this);
        getWindow().setFormat(0);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        videoView.setLayoutParams(new RelativeLayout.LayoutParams(displayMetrics.widthPixels, displayMetrics.heightPixels));
        videoView.setVideoURI(Uri.parse("android.resource://" + getPackageName() + "/" + R.raw.care_video));
        MediaController mediaController = new MediaController(this);
        mediaController.setAnchorView(videoView);
        mediaController.setMediaPlayer(videoView);
        videoView.setMediaController(mediaController);
        videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.texa.careapp.app.walkthrough.WalkthroughActivity$$ExternalSyntheticLambda0
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer) {
                WalkthroughActivity.lambda$onCreate$4(mediaPlayer);
            }
        });
        videoView.requestFocus();
        WalkThroughAdapter walkThroughAdapter = new WalkThroughAdapter(getCareApplication().component(), getWalkthrough());
        this.adapter = walkThroughAdapter;
        this.mViewPager.setAdapter(walkThroughAdapter);
        circlePageIndicator.setViewPager(this.mViewPager);
    }

    /* JADX INFO: renamed from: lambda$onCreate$2$com-texa-careapp-app-walkthrough-WalkthroughActivity, reason: not valid java name */
    public /* synthetic */ void m521xb3c189e8(View view) {
        clickNext();
    }

    /* JADX INFO: renamed from: lambda$onCreate$3$com-texa-careapp-app-walkthrough-WalkthroughActivity, reason: not valid java name */
    public /* synthetic */ void m522xcddd0887(View view) {
        clickSkip();
    }

    static /* synthetic */ void lambda$onCreate$4(MediaPlayer mediaPlayer) {
        if (mediaPlayer.isPlaying()) {
            mediaPlayer.stop();
            mediaPlayer.release();
            mediaPlayer = new MediaPlayer();
        }
        mediaPlayer.setVolume(0.0f, 0.0f);
        mediaPlayer.setLooping(true);
        mediaPlayer.start();
    }

    private List<WalkthroughModel> getWalkthrough() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new WalkthroughModel(R.string.walkthrough_title_1, R.string.walkthrough_description_1));
        arrayList.add(new WalkthroughModel(R.string.walkthrough_title_2, R.string.walkthrough_description_2));
        arrayList.add(new WalkthroughModel(R.string.walkthrough_title_3, R.string.walkthrough_description_3));
        arrayList.add(new WalkthroughModel(R.string.walkthrough_title_4, R.string.walkthrough_description_4));
        return arrayList;
    }

    protected void setHasShot() {
        SharedPreferences.Editor editorEdit = this.mPreferences.edit();
        editorEdit.putBoolean(HAS_SHOT_PREFS_KEY, true);
        editorEdit.apply();
    }

    private void clickNext() {
        if (this.mViewPager.getCurrentItem() < this.adapter.getCount() - 1) {
            ViewPager viewPager = this.mViewPager;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1, true);
        } else {
            setHasShot();
            startActivity(WalkthroughActivityLastStep.buildIntent(this));
            finish();
        }
    }

    private void clickSkip() {
        setHasShot();
        startActivity(WalkthroughActivityLastStep.buildIntent(this));
    }
}
