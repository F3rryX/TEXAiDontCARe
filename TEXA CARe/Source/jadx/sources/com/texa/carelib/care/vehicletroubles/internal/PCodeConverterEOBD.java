package com.texa.carelib.care.vehicletroubles.internal;

/* JADX INFO: loaded from: classes2.dex */
public class PCodeConverterEOBD {
    public String convert(long j) {
        int i = ((int) j) >> 14;
        return String.format("%s%04X", i != 0 ? i != 1 ? i != 2 ? i != 3 ? "X" : "U" : "B" : "C" : "P", Long.valueOf(j & 16383));
    }
}
