package com.texa.carelib.care.vehicle.internal;

import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
interface SubscribedObjectsPayloadComposer {
    byte getCommandId();

    byte[] getPayload(int i, long j, Set<Long> set);
}
