package com.texa.careapp.utils;

import com.texa.careapp.utils.RxCareLifecycle;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public class RxCareLifecycle {
    private static final Function<Throwable, Boolean> RESUME_FUNCTION = new Function() { // from class: com.texa.careapp.utils.RxCareLifecycle$$ExternalSyntheticLambda5
        @Override // io.reactivex.functions.Function
        public final Object apply(Object obj) {
            return RxCareLifecycle.lambda$static$0((Throwable) obj);
        }
    };
    private static final Predicate<Boolean> SHOULD_COMPLETE = new Predicate() { // from class: com.texa.careapp.utils.RxCareLifecycle$$ExternalSyntheticLambda7
        @Override // io.reactivex.functions.Predicate
        public final boolean test(Object obj) {
            return ((Boolean) obj).booleanValue();
        }
    };
    private static final Function<CareEvent, CareEvent> TRIP_LIFECYCLE = new Function() { // from class: com.texa.careapp.utils.RxCareLifecycle$$ExternalSyntheticLambda3
        @Override // io.reactivex.functions.Function
        public final Object apply(Object obj) {
            return RxCareLifecycle.lambda$static$2((RxCareLifecycle.CareEvent) obj);
        }
    };
    private static final Function<CareEvent, CareEvent> CONNECTION_LIFECYCLE = new Function() { // from class: com.texa.careapp.utils.RxCareLifecycle$$ExternalSyntheticLambda4
        @Override // io.reactivex.functions.Function
        public final Object apply(Object obj) {
            return RxCareLifecycle.lambda$static$3((RxCareLifecycle.CareEvent) obj);
        }
    };

    public enum CareEvent {
        TRIP_START,
        CONNECTED,
        DISCONNECTED
    }

    static /* synthetic */ boolean lambda$bindUntilEvent$6(Object obj, Object obj2) throws Exception {
        return obj2 == obj;
    }

    static /* synthetic */ Boolean lambda$static$0(Throwable th) throws Exception {
        Exceptions.propagate(th);
        return false;
    }

    static /* synthetic */ CareEvent lambda$static$2(CareEvent careEvent) throws Exception {
        if (AnonymousClass1.$SwitchMap$com$texa$careapp$utils$RxCareLifecycle$CareEvent[careEvent.ordinal()] == 2) {
            return CareEvent.DISCONNECTED;
        }
        throw new UnsupportedOperationException("Binding to " + careEvent + " not yet implemented");
    }

    /* JADX INFO: renamed from: com.texa.careapp.utils.RxCareLifecycle$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$utils$RxCareLifecycle$CareEvent;

        static {
            int[] iArr = new int[CareEvent.values().length];
            $SwitchMap$com$texa$careapp$utils$RxCareLifecycle$CareEvent = iArr;
            try {
                iArr[CareEvent.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$careapp$utils$RxCareLifecycle$CareEvent[CareEvent.TRIP_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static /* synthetic */ CareEvent lambda$static$3(CareEvent careEvent) throws Exception {
        if (AnonymousClass1.$SwitchMap$com$texa$careapp$utils$RxCareLifecycle$CareEvent[careEvent.ordinal()] == 1) {
            return CareEvent.DISCONNECTED;
        }
        throw new UnsupportedOperationException("Binding to " + careEvent + " not yet implemented");
    }

    public static <T> ObservableTransformer<T, T> bindToTrip(Observable<CareEvent> observable) {
        return bind(observable, TRIP_LIFECYCLE);
    }

    public static <T> ObservableTransformer<T, T> bindToConnection(Observable<CareEvent> observable) {
        return bind(observable, CONNECTION_LIFECYCLE);
    }

    private static <T, R> ObservableTransformer<T, T> bind(Observable<R> observable, final Function<R, R> function) {
        if (observable == null) {
            throw new IllegalArgumentException("Lifecycle must be given");
        }
        final Observable<R> observableShare = observable.share();
        return new ObservableTransformer() { // from class: com.texa.careapp.utils.RxCareLifecycle$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable2) {
                Observable observable3 = observableShare;
                return observable2.takeUntil(Observable.combineLatest(observable3.take(1L).map(function), observable3.skip(1L), new BiFunction() { // from class: com.texa.careapp.utils.RxCareLifecycle$$ExternalSyntheticLambda2
                    @Override // io.reactivex.functions.BiFunction
                    public final Object apply(Object obj, Object obj2) {
                        return Boolean.valueOf(obj2 == obj);
                    }
                }).onErrorReturn(RxCareLifecycle.RESUME_FUNCTION).filter(RxCareLifecycle.SHOULD_COMPLETE).firstElement().toObservable());
            }
        };
    }

    private static <T, R> ObservableTransformer<T, T> bindUntilEvent(final Observable<R> observable, final R r) {
        if (observable == null) {
            throw new IllegalArgumentException("Lifecycle must be given");
        }
        if (r == null) {
            throw new IllegalArgumentException("Event must be given");
        }
        return new ObservableTransformer() { // from class: com.texa.careapp.utils.RxCareLifecycle$$ExternalSyntheticLambda1
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable2) {
                return observable2.takeUntil(observable.filter(new Predicate() { // from class: com.texa.careapp.utils.RxCareLifecycle$$ExternalSyntheticLambda6
                    @Override // io.reactivex.functions.Predicate
                    public final boolean test(Object obj) {
                        return RxCareLifecycle.lambda$bindUntilEvent$6(obj, obj);
                    }
                }).firstElement().toObservable());
            }
        };
    }
}
