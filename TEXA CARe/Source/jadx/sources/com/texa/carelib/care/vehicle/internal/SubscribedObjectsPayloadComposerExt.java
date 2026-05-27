package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class SubscribedObjectsPayloadComposerExt implements SubscribedObjectsPayloadComposer {
    @Override // com.texa.carelib.care.vehicle.internal.SubscribedObjectsPayloadComposer
    public byte getCommandId() {
        return (byte) 37;
    }

    SubscribedObjectsPayloadComposerExt() {
    }

    @Override // com.texa.carelib.care.vehicle.internal.SubscribedObjectsPayloadComposer
    public byte[] getPayload(int i, long j, Set<Long> set) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((set.size() * 4) + 1 + 4);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) i);
        ByteBufferUtils.putUnsignedInt(byteBufferAllocate, Long.valueOf(j));
        Iterator<Long> it = set.iterator();
        while (it.hasNext()) {
            ByteBufferUtils.putUnsignedInt(byteBufferAllocate, it.next());
        }
        return byteBufferAllocate.array();
    }
}
