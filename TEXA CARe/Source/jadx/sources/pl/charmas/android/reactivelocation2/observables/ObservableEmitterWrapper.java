package pl.charmas.android.reactivelocation2.observables;

import io.reactivex.ObservableEmitter;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public class ObservableEmitterWrapper<T> implements Observer<T> {
    private final ObservableEmitter<T> emitter;

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
    }

    public ObservableEmitterWrapper(ObservableEmitter<T> observableEmitter) {
        this.emitter = observableEmitter;
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (this.emitter.isDisposed()) {
            return;
        }
        this.emitter.onNext(t);
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (this.emitter.isDisposed()) {
            return;
        }
        this.emitter.onError(th);
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (this.emitter.isDisposed()) {
            return;
        }
        this.emitter.onComplete();
    }
}
