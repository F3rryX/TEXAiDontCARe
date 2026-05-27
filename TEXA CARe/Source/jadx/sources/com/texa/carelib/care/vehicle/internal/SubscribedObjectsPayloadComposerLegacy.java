package com.texa.carelib.care.vehicle.internal;

import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.Set;
import org.spongycastle.bcpg.sig.RevocationReasonTags;

/* JADX INFO: loaded from: classes2.dex */
class SubscribedObjectsPayloadComposerLegacy implements SubscribedObjectsPayloadComposer {
    @Override // com.texa.carelib.care.vehicle.internal.SubscribedObjectsPayloadComposer
    public byte getCommandId() {
        return RevocationReasonTags.USER_NO_LONGER_VALID;
    }

    SubscribedObjectsPayloadComposerLegacy() {
    }

    @Override // com.texa.carelib.care.vehicle.internal.SubscribedObjectsPayloadComposer
    public byte[] getPayload(int i, long j, Set<Long> set) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((set.size() * 4) + 1 + 4);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) i);
        Iterator<Long> it = set.iterator();
        while (it.hasNext()) {
            ByteBufferUtils.putUnsignedInt(byteBufferAllocate, it.next());
        }
        ByteBufferUtils.putUnsignedInt(byteBufferAllocate, Long.valueOf(j));
        return byteBufferAllocate.array();
    }
}
