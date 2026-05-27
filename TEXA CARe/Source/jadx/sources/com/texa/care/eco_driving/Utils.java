package com.texa.care.eco_driving;

import android.location.Location;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.texa.care.eco_driving.score.OverallScore;
import com.texa.care.eco_driving.score.ScoreConfigurationProvider;
import com.texa.care.eco_driving.utils.jsonSerializer.ComponentSerializer;
import com.texa.care.eco_driving.utils.jsonSerializer.CounterInfoSerializer;
import com.texa.care.eco_driving.utils.jsonSerializer.ExclusionForEventHub;
import com.texa.care.eco_driving.utils.jsonSerializer.LocationSerializer;
import com.texa.care.eco_driving.utils.jsonSerializer.ScoreConfigurationSerializer;
import com.texa.carelib.core.CounterInfo;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.schedulers.Timed;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class Utils {
    public static Observable<Timed<Long>> timerObservable(int i) {
        return Observable.interval(1000L, TimeUnit.MILLISECONDS).timeInterval().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribeOn(AndroidSchedulers.mainThread());
    }

    public static long dateDifference(Date date, Date date2) {
        return TimeUnit.MILLISECONDS.toSeconds(date2.getTime() - date.getTime());
    }

    public static String asString(Location location) {
        return String.format("%s° N, %s° E", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()));
    }

    public static String asString(Date date) {
        return new SimpleDateFormat("dd-MM-yyyy HH:mm:ss", Locale.getDefault()).format(date);
    }

    static String asString(BigInteger bigInteger) {
        return String.format("%016X", bigInteger);
    }

    static Float odoDifference(Float f, Float f2) {
        return Float.valueOf(f2.floatValue() - f.floatValue());
    }

    public static Object getLast(List<?> list) {
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static Gson buildGSONInstance() {
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES).registerTypeAdapter(Location.class, new LocationSerializer()).registerTypeAdapter(CounterInfo.class, new CounterInfoSerializer()).registerTypeAdapter(ScoreConfigurationProvider.class, new ScoreConfigurationSerializer()).registerTypeAdapter(OverallScore.Component.class, new ComponentSerializer()).create();
    }

    static Gson buildGSONInstanceForEventHub() {
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().setExclusionStrategies(new ExclusionForEventHub()).setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES).registerTypeAdapter(Location.class, new LocationSerializer()).registerTypeAdapter(CounterInfo.class, new CounterInfoSerializer()).registerTypeAdapter(ScoreConfigurationProvider.class, new ScoreConfigurationSerializer()).registerTypeAdapter(OverallScore.Component.class, new ComponentSerializer()).create();
    }

    static List<CounterInfo> countersByRemoving(List<CounterInfo> list, List<CounterInfo> list2) {
        ArrayList arrayList = null;
        if (list != null && list2 != null) {
            if (list.size() != list2.size()) {
                return null;
            }
            arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                CounterInfo counterInfoCounterByDeductingCounter = counterByDeductingCounter(list.get(i), list2.get(i));
                if (counterInfoCounterByDeductingCounter != null) {
                    arrayList.add(counterInfoCounterByDeductingCounter);
                }
            }
        }
        return arrayList;
    }

    private static CounterInfo counterByDeductingCounter(CounterInfo counterInfo, CounterInfo counterInfo2) {
        if (counterInfo.getRange().equals(counterInfo2.getRange())) {
            return new CounterInfo(counterInfo.getRange(), Math.max(0, counterInfo2.getValue() - counterInfo.getValue()));
        }
        return null;
    }

    public static void safeDispose(Disposable disposable) {
        if (disposable == null || disposable.isDisposed()) {
            return;
        }
        disposable.dispose();
    }

    public static void safeDispose(HashMap<String, Disposable> map, String str) {
        Disposable disposable = map.get(str);
        if (disposable == null || disposable.isDisposed()) {
            return;
        }
        disposable.dispose();
    }

    public static void safeDisposeAll(HashMap<String, Disposable> map) {
        Iterator<Map.Entry<String, Disposable>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, Disposable> next = it.next();
            if (next.getValue() instanceof Disposable) {
                safeDispose(next.getValue());
            }
            it.remove();
        }
    }
}
