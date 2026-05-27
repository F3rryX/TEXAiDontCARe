package com.texa.carelib.care.accessory.internal;

import com.texa.carelib.core.internal.ConfigurationIDSupport;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessoryStatusEvaluator {
    private AccessoryStatusEvaluator() {
    }

    public static int evaluate(int i, BigInteger bigInteger) {
        if (4 == i) {
            if (ConfigurationIDSupport.isSet(bigInteger)) {
                return i;
            }
            return 132;
        }
        if (2 != i || ConfigurationIDSupport.isSet(bigInteger)) {
            return i;
        }
        return 130;
    }
}
