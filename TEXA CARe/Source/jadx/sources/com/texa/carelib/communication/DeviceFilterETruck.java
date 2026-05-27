package com.texa.carelib.communication;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceFilterETruck extends DeviceFilterCare {
    private static final String DEVICE_PREFIX_ETRUCK_EVALUATION = "EVE";
    private static final String DEVICE_PREFIX_ETRUCK_TEXA = "TOE";

    @Deprecated
    public DeviceFilterETruck() {
        super(new HashSet(Arrays.asList(DEVICE_PREFIX_ETRUCK_EVALUATION, DEVICE_PREFIX_ETRUCK_TEXA)));
    }

    public DeviceFilterETruck(Set<String> set) {
        super(set);
    }
}
