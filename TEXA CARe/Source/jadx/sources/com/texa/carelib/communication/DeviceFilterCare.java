package com.texa.carelib.communication;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceFilterCare implements DeviceFilter {
    private static final String DEVICE_PREFIX_CARE_TEXA = "TOC";
    private static final String TEXA_MAC_ADDRESS_PREFIX_B4_B8_59 = "B4:B8:59";
    private final Set<String> mSerialPrefixes;

    @Deprecated
    public DeviceFilterCare() {
        HashSet hashSet = new HashSet();
        this.mSerialPrefixes = hashSet;
        hashSet.add(DEVICE_PREFIX_CARE_TEXA);
    }

    public DeviceFilterCare(Set<String> set) {
        this.mSerialPrefixes = new HashSet();
        if (set.isEmpty()) {
            return;
        }
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            this.mSerialPrefixes.add(it.next().toUpperCase(Locale.US));
        }
    }

    @Override // com.texa.carelib.communication.DeviceFilter
    public boolean isValidDevice(DeviceInfo deviceInfo) {
        return isValidAddress(deviceInfo.getAddress()) && isValidName(deviceInfo.getName());
    }

    private boolean isValidAddress(String str) {
        return str.toUpperCase(Locale.US).startsWith(TEXA_MAC_ADDRESS_PREFIX_B4_B8_59);
    }

    private boolean isValidName(String str) {
        if (str == null) {
            return false;
        }
        if (this.mSerialPrefixes.isEmpty()) {
            return true;
        }
        String upperCase = str.toUpperCase(Locale.US);
        Iterator<String> it = this.mSerialPrefixes.iterator();
        while (it.hasNext()) {
            if (upperCase.startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }
}
