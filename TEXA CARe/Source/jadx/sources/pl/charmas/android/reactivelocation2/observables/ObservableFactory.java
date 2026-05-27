package pl.charmas.android.reactivelocation2.observables;

import io.reactivex.Observable;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.BiPredicate;

/* JADX INFO: loaded from: classes3.dex */
public class ObservableFactory {
    private final ObservableContext context;

    public ObservableFactory(ObservableContext observableContext) {
        this.context = observableContext;
    }

    public <T> Observable<T> createObservable(ObservableOnSubscribe<T> observableOnSubscribe) {
        return Observable.create(observableOnSubscribe).compose(new RetryOnConnectionSuspension(this.context.isRetryOnConnectionSuspended()));
    }

    private static class RetryOnConnectionSuspension<T> implements ObservableTransformer<T, T> {
        private final boolean shouldRetry;

        RetryOnConnectionSuspension(boolean z) {
            this.shouldRetry = z;
        }

        @Override // io.reactivex.ObservableTransformer
        public ObservableSource<T> apply(Observable<T> observable) {
            return this.shouldRetry ? observable.retry(new IsConnectionSuspendedException()) : observable;
        }

        private static class IsConnectionSuspendedException implements BiPredicate<Integer, Throwable> {
            private IsConnectionSuspendedException() {
            }

            @Override // io.reactivex.functions.BiPredicate
            public boolean test(Integer num, Throwable th) throws Exception {
                return th instanceof GoogleAPIConnectionSuspendedException;
            }
        }
    }
}
