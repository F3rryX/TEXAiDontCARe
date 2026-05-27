package pl.charmas.android.reactivelocation2.observables.activity;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.ActivityRecognition;
import com.google.android.gms.location.ActivityRecognitionResult;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import pl.charmas.android.reactivelocation2.observables.ObservableContext;
import pl.charmas.android.reactivelocation2.observables.ObservableFactory;

/* JADX INFO: loaded from: classes3.dex */
public class ActivityUpdatesObservableOnSubscribe extends BaseActivityObservableOnSubscribe<ActivityRecognitionResult> {
    private static final String ACTION_ACTIVITY_DETECTED = "pl.charmas.android.reactivelocation2.ACTION_ACTIVITY_UPDATE_DETECTED";
    private final Context context;
    private final int detectionIntervalMilliseconds;
    private ActivityUpdatesBroadcastReceiver receiver;

    public static Observable<ActivityRecognitionResult> createObservable(ObservableContext observableContext, ObservableFactory observableFactory, int i) {
        return observableFactory.createObservable(new ActivityUpdatesObservableOnSubscribe(observableContext, i));
    }

    private ActivityUpdatesObservableOnSubscribe(ObservableContext observableContext, int i) {
        super(observableContext);
        this.context = observableContext.getContext();
        this.detectionIntervalMilliseconds = i;
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onGoogleApiClientReady(GoogleApiClient googleApiClient, ObservableEmitter<? super ActivityRecognitionResult> observableEmitter) {
        ActivityUpdatesBroadcastReceiver activityUpdatesBroadcastReceiver = new ActivityUpdatesBroadcastReceiver(observableEmitter);
        this.receiver = activityUpdatesBroadcastReceiver;
        this.context.registerReceiver(activityUpdatesBroadcastReceiver, new IntentFilter(ACTION_ACTIVITY_DETECTED));
        ActivityRecognition.ActivityRecognitionApi.requestActivityUpdates(googleApiClient, this.detectionIntervalMilliseconds, getReceiverPendingIntent());
    }

    private PendingIntent getReceiverPendingIntent() {
        return PendingIntent.getBroadcast(this.context, 0, new Intent(ACTION_ACTIVITY_DETECTED), 134217728);
    }

    @Override // pl.charmas.android.reactivelocation2.observables.BaseObservableOnSubscribe
    protected void onDisposed(GoogleApiClient googleApiClient) {
        if (googleApiClient.isConnected()) {
            ActivityRecognition.ActivityRecognitionApi.removeActivityUpdates(googleApiClient, getReceiverPendingIntent());
        }
        ActivityUpdatesBroadcastReceiver activityUpdatesBroadcastReceiver = this.receiver;
        if (activityUpdatesBroadcastReceiver != null) {
            this.context.unregisterReceiver(activityUpdatesBroadcastReceiver);
            this.receiver = null;
        }
    }

    private static class ActivityUpdatesBroadcastReceiver extends BroadcastReceiver {
        private final ObservableEmitter<? super ActivityRecognitionResult> emitter;

        public ActivityUpdatesBroadcastReceiver(ObservableEmitter<? super ActivityRecognitionResult> observableEmitter) {
            this.emitter = observableEmitter;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (ActivityRecognitionResult.hasResult(intent)) {
                this.emitter.onNext(ActivityRecognitionResult.extractResult(intent));
            }
        }
    }
}
