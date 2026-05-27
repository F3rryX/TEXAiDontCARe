package pl.charmas.android.reactivelocation2.observables;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public class PendingResultObservableOnSubscribe<T extends Result> implements ObservableOnSubscribe<T> {
    private boolean complete = false;
    private final PendingResult<T> result;

    public PendingResultObservableOnSubscribe(PendingResult<T> pendingResult) {
        this.result = pendingResult;
    }

    @Override // io.reactivex.ObservableOnSubscribe
    public void subscribe(final ObservableEmitter<T> observableEmitter) throws Exception {
        this.result.setResultCallback(new ResultCallback<T>() { // from class: pl.charmas.android.reactivelocation2.observables.PendingResultObservableOnSubscribe.1
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(T t) {
                if (!observableEmitter.isDisposed()) {
                    observableEmitter.onNext(t);
                    observableEmitter.onComplete();
                }
                PendingResultObservableOnSubscribe.this.complete = true;
            }
        });
        observableEmitter.setDisposable(Disposables.fromAction(new Action() { // from class: pl.charmas.android.reactivelocation2.observables.PendingResultObservableOnSubscribe.2
            @Override // io.reactivex.functions.Action
            public void run() {
                if (PendingResultObservableOnSubscribe.this.complete) {
                    return;
                }
                PendingResultObservableOnSubscribe.this.result.cancel();
            }
        }));
    }
}
