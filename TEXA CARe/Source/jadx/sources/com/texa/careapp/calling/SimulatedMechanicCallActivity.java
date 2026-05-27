package com.texa.careapp.calling;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.texa.care.R;
import com.texa.careapp.base.BaseActivity;

/* JADX INFO: loaded from: classes2.dex */
public class SimulatedMechanicCallActivity extends BaseActivity implements MediaPlayer.OnCompletionListener {
    private static final String AUDIO_RES = "AUDIO_RES_KEY";
    private static final String IMAGE_RES = "IMAGE_RES_KEY";
    private static final String TAG = "SimulatedMechanicCallActivity";
    private int mAudioRes;
    private int mImageRes;
    protected MediaPlayer mMediaPlayer;

    @Override // com.texa.careapp.base.BaseActivity
    protected boolean requiresAuthentication() {
        return false;
    }

    public static Intent buildIntent(Context context, int i, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(AUDIO_RES, i);
        bundle.putInt(IMAGE_RES, i2);
        Intent intent = new Intent(context, (Class<?>) SimulatedMechanicCallActivity.class);
        intent.putExtras(bundle);
        intent.setFlags(268435456);
        return intent;
    }

    @Override // com.texa.careapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        this.mAudioRes = extras.getInt(AUDIO_RES);
        this.mImageRes = extras.getInt(IMAGE_RES);
        setContentView(R.layout.activity_simulated_call);
        ImageView imageView = (ImageView) findViewById(R.id.simulated_call_image);
        if (imageView != null) {
            imageView.setImageResource(extras.getInt(IMAGE_RES));
        }
        findViewById(R.id.button_finish_call).setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.calling.SimulatedMechanicCallActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m543x69416c84(view);
            }
        });
        playAudioFile();
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-texa-careapp-calling-SimulatedMechanicCallActivity, reason: not valid java name */
    public /* synthetic */ void m543x69416c84(View view) {
        finish();
    }

    private void playAudioFile() {
        try {
            MediaPlayer mediaPlayerCreate = MediaPlayer.create(this, this.mAudioRes);
            this.mMediaPlayer = mediaPlayerCreate;
            mediaPlayerCreate.setOnCompletionListener(this);
            this.mMediaPlayer.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void stopPlayer() {
        try {
            this.mMediaPlayer.stop();
            this.mMediaPlayer.release();
        } catch (Exception unused) {
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        stopPlayer();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        finish();
    }
}
