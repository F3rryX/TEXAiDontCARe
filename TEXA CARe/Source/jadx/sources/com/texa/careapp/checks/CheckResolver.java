package com.texa.careapp.checks;

import com.texa.careapp.checks.Check;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CheckResolver {
    private List<Check> checkList = new ArrayList();

    public CheckResolver addCheck(Check check) {
        this.checkList.add(check);
        return this;
    }

    public Observable<Check.Result> observeChecks() {
        ArrayList arrayList = new ArrayList();
        Iterator<Check> it = this.checkList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().check());
        }
        return Observable.combineLatest(arrayList, new Function() { // from class: com.texa.careapp.checks.CheckResolver$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.checksResult((Object[]) obj);
            }
        });
    }

    public void resolveChecks(Check.Result result) {
        for (Check check : this.checkList) {
            if (check.checkCurrentStatus() == result) {
                check.resolve();
            }
        }
    }

    public Check.Result checkStatus() {
        Check.Result result = Check.Result.OK;
        Iterator<Check> it = this.checkList.iterator();
        while (it.hasNext()) {
            Check.Result resultCheckCurrentStatus = it.next().checkCurrentStatus();
            if (resultCheckCurrentStatus == Check.Result.BLOCKING) {
                return Check.Result.BLOCKING;
            }
            if (resultCheckCurrentStatus.ordinal() > result.ordinal()) {
                result = resultCheckCurrentStatus;
            }
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Check.Result checksResult(Object[] objArr) {
        Check.Result result = Check.Result.OK;
        for (Object obj : objArr) {
            Check.Result result2 = (Check.Result) obj;
            if (result2 == Check.Result.BLOCKING) {
                return Check.Result.BLOCKING;
            }
            if (result2 == Check.Result.WARNING) {
                result = Check.Result.WARNING;
            }
        }
        return result;
    }
}
