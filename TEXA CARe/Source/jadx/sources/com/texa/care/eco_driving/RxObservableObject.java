package com.texa.care.eco_driving;

import android.util.Log;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.subjects.Subject;
import java.beans.PropertyChangeEvent;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
class RxObservableObject {
    private static final String TAG = "RxObservableObject";
    final Subject<PropertyChangeEvent> mPropertyChangeEventSubject = PublishSubject.create();

    interface Supplier<T> {
        T get();
    }

    RxObservableObject() {
    }

    public class Validator {
        public <T> boolean isValid(T t) {
            return t != null;
        }

        public Validator() {
        }
    }

    <T> Observable<T> observePropertyChanges(String str, Supplier<T> supplier) {
        return observePropertyChanges(str, supplier, new Validator());
    }

    <T> Observable<T> observePropertyChanges(String str, final Supplier<T> supplier, final Validator validator) {
        return Observable.merge(Observable.defer(new Callable() { // from class: com.texa.care.eco_driving.RxObservableObject$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return RxObservableObject.lambda$observePropertyChanges$0(supplier, validator);
            }
        }), _observePropertyChanges(str, null));
    }

    static /* synthetic */ ObservableSource lambda$observePropertyChanges$0(Supplier supplier, Validator validator) throws Exception {
        Object obj = supplier.get();
        if (validator.isValid(obj)) {
            return Observable.just(obj);
        }
        return Observable.empty();
    }

    private <T> Observable<T> _observePropertyChanges(final String str, final T t) {
        return (Observable<T>) this.mPropertyChangeEventSubject.filter(new Predicate() { // from class: com.texa.care.eco_driving.RxObservableObject$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return str.equals(((PropertyChangeEvent) obj).getPropertyName());
            }
        }).flatMap(new Function() { // from class: com.texa.care.eco_driving.RxObservableObject$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return RxObservableObject.lambda$_observePropertyChanges$2(t, (PropertyChangeEvent) obj);
            }
        });
    }

    static /* synthetic */ ObservableSource lambda$_observePropertyChanges$2(Object obj, PropertyChangeEvent propertyChangeEvent) throws Exception {
        if (propertyChangeEvent.getNewValue() != null) {
            try {
                Object newValue = propertyChangeEvent.getNewValue();
                if (newValue != null) {
                    return Observable.just(newValue);
                }
                if (obj != null) {
                    return Observable.just(obj);
                }
                Log.w(TAG, "Null value receveid..");
            } catch (ClassCastException e) {
                Log.e(TAG, "Could not obtain the new property value!", e);
            }
        }
        return Observable.empty();
    }
}
