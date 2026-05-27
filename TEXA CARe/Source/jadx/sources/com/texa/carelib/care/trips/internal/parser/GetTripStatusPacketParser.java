package com.texa.carelib.care.trips.internal.parser;

import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.communication.Message;

/* JADX INFO: loaded from: classes2.dex */
public class GetTripStatusPacketParser {
    public static TripStatus parse(Message message) {
        TripStatus tripStatus = TripStatus.Undef;
        if (message == null || message.getStatus() != 0 || message.getData() == null || message.getData().length < 1) {
            return tripStatus;
        }
        byte[] data = message.getData();
        if (data.length <= 0) {
            return tripStatus;
        }
        int i = data[0] & 255;
        if (i == 0) {
            return TripStatus.Searching;
        }
        if (i != 1) {
            return i != 2 ? tripStatus : TripStatus.Ended;
        }
        return TripStatus.InProgress;
    }
}
