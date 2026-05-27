package com.texa.carelib.communication;

import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceFilterTexaDongles implements DeviceFilter {
    private static final String TEXA_MAC_ADDRESS_PREFIX_B4_B8_59 = "B4:B8:59";

    @Override // com.texa.carelib.communication.DeviceFilter
    public boolean isValidDevice(DeviceInfo deviceInfo) {
        return isValidAddress(deviceInfo.getAddress());
    }

    private boolean isValidAddress(String str) {
        return str.toUpperCase(Locale.US).startsWith(TEXA_MAC_ADDRESS_PREFIX_B4_B8_59);
    }
}
