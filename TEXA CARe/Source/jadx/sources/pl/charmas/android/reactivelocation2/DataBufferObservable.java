package pl.charmas.android.reactivelocation2;

import com.google.android.gms.common.data.AbstractDataBuffer;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Action;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class DataBufferObservable {
    private DataBufferObservable() {
    }

    public static <T> Observable<T> from(final AbstractDataBuffer<T> abstractDataBuffer) {
        return Observable.create(new ObservableOnSubscribe<T>() { // from class: pl.charmas.android.reactivelocation2.DataBufferObservable.1
            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<T> observableEmitter) {
                Iterator<T> it = abstractDataBuffer.iterator();
                while (it.hasNext()) {
                    observableEmitter.onNext(it.next());
                }
                observableEmitter.setDisposable(Disposables.fromAction(new Action() { // from class: pl.charmas.android.reactivelocation2.DataBufferObservable.1.1
                    @Override // io.reactivex.functions.Action
                    public void run() throws Exception {
                        abstractDataBuffer.release();
                    }
                }));
            }
        });
    }
}
