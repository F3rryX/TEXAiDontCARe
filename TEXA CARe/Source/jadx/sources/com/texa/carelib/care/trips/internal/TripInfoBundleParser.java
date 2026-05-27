package com.texa.carelib.care.trips.internal;

import android.util.LongSparseArray;
import com.texa.carelib.care.trips.TripBeginInfo;
import com.texa.carelib.care.trips.TripEndInfo;
import com.texa.carelib.care.trips.TripInfo;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.core.internal.CareStructID;
import com.texa.carelib.core.logging.CareLog;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TripInfoBundleParser {
    public static final String TAG = "TripInfoBundleParser";
    private final LongSparseArray<StructParser> mParserHandler;

    public interface StructParser {
        void parse(Map<Long, TripInfo> map, byte[] bArr);
    }

    TripInfoBundleParser() {
        LongSparseArray<StructParser> longSparseArray = new LongSparseArray<>();
        this.mParserHandler = longSparseArray;
        longSparseArray.put(CareStructID.TRIP_BEGIN_INFO.getID(), new StructParser() { // from class: com.texa.carelib.care.trips.internal.TripInfoBundleParser$$ExternalSyntheticLambda2
            @Override // com.texa.carelib.care.trips.internal.TripInfoBundleParser.StructParser
            public final void parse(Map map, byte[] bArr) {
                this.f$0.parseBlockTripBeginInfo(map, bArr);
            }
        });
        longSparseArray.put(CareStructID.TRIP_END_INFO.getID(), new StructParser() { // from class: com.texa.carelib.care.trips.internal.TripInfoBundleParser$$ExternalSyntheticLambda1
            @Override // com.texa.carelib.care.trips.internal.TripInfoBundleParser.StructParser
            public final void parse(Map map, byte[] bArr) {
                this.f$0.parseBlockTripEndInfo(map, bArr);
            }
        });
        longSparseArray.put(CareStructID.TRIP_STATISTICS_INFO.getID(), new StructParser() { // from class: com.texa.carelib.care.trips.internal.TripInfoBundleParser$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.care.trips.internal.TripInfoBundleParser.StructParser
            public final void parse(Map map, byte[] bArr) {
                this.f$0.parseBlockTripStatisticsInfo(map, bArr);
            }
        });
    }

    public List<TripInfo> getTripInfoList(ByteBuffer byteBuffer) {
        return new ArrayList(getTripInfo(byteBuffer).values());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0064 A[Catch: Exception -> 0x009f, TryCatch #0 {Exception -> 0x009f, blocks: (B:7:0x000d, B:14:0x005d, B:17:0x0064, B:19:0x0093, B:10:0x0047, B:13:0x0052), top: B:26:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0063 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Map<Long, TripInfo> getTripInfo(ByteBuffer byteBuffer) {
        String str;
        int blockID;
        int blockSize;
        if (byteBuffer == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        do {
            try {
                str = TAG;
                CareLog.d(str, "Position: %d/%d. Remaining: %d", Integer.valueOf(byteBuffer.position()), Integer.valueOf(byteBuffer.capacity()), Integer.valueOf(byteBuffer.remaining()));
                blockID = getBlockID(byteBuffer);
                blockSize = getBlockSize(byteBuffer);
            } catch (Exception e) {
                CareLog.e(TAG, e, "Trip data parse error.", new Object[0]);
            }
            if (!isValidBlockID(blockID) || blockSize == 0) {
                int iFindNextBlock = findNextBlock(byteBuffer);
                if (iFindNextBlock < byteBuffer.position()) {
                    break;
                }
                byteBuffer.position(iFindNextBlock);
                blockID = getBlockID(byteBuffer);
                blockSize = getBlockSize(byteBuffer);
                if (byteBuffer.remaining() >= blockSize) {
                    break;
                }
                byte[] bArr = new byte[Math.min(blockSize, byteBuffer.remaining())];
                byteBuffer.get(bArr);
                CareLog.d(str, "Found blockID: 0x%s(%s) Size:%d", Integer.toHexString(blockID), CareStructID.getBlockName(blockID), Integer.valueOf(blockSize));
                long j = blockID;
                if (this.mParserHandler.get(j) != null) {
                    this.mParserHandler.get(j).parse(map, bArr);
                }
            } else if (byteBuffer.remaining() >= blockSize) {
            }
        } while (byteBuffer.hasRemaining());
        return map;
    }

    private int findNextBlock(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 2) {
            return byteBuffer.position();
        }
        int iPosition = byteBuffer.position();
        while (byteBuffer.remaining() > 2) {
            byteBuffer.position(iPosition);
            int blockID = getBlockID(byteBuffer);
            int blockSize = getBlockSize(byteBuffer);
            if (isValidBlockID(blockID) && blockSize > 0) {
                byteBuffer.position(iPosition);
                return iPosition;
            }
            iPosition++;
        }
        return -1;
    }

    protected boolean isValidBlockID(int i) {
        return this.mParserHandler.get((long) i) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseBlockTripEndInfo(Map<Long, TripInfo> map, byte[] bArr) {
        TripEndInfo tripEndInfoCreate = new TripEndInfoFactory().create(bArr);
        if (tripEndInfoCreate == null) {
            CareLog.e(TAG, "Could not create a valid TripEndInfo object from the input data!", new Object[0]);
            return;
        }
        Long tripNumber = tripEndInfoCreate.getTripNumber();
        if (tripNumber != null) {
            CareLog.d(TAG, "Received TripEndInfo for trip: %d", tripNumber);
            if (map.get(tripNumber) == null) {
                map.put(tripNumber, new TripInfo().setTripStatus(TripStatus.Ended));
            }
            map.get(tripNumber).setTripEndInfo(tripEndInfoCreate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseBlockTripBeginInfo(Map<Long, TripInfo> map, byte[] bArr) {
        TripBeginInfo tripBeginInfoCreate = new TripBeginInfoFactory().create(bArr);
        if (tripBeginInfoCreate == null) {
            CareLog.e(TAG, "Could not create a valid TripBeginInfo object from the input data!", new Object[0]);
            return;
        }
        Long tripNumber = tripBeginInfoCreate.getTripNumber();
        if (tripNumber != null) {
            CareLog.d(TAG, "Received TripBeginInfo for trip: %d", tripNumber);
            if (map.get(tripNumber) == null) {
                map.put(tripNumber, new TripInfo().setTripStatus(TripStatus.Ended));
            }
            map.get(tripNumber).setTripBeginInfo(tripBeginInfoCreate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseBlockTripStatisticsInfo(Map<Long, TripInfo> map, byte[] bArr) {
        TripStatisticsInfo tripStatisticsInfoCreate = new TripStatisticsInfoFactory().create(bArr);
        if (tripStatisticsInfoCreate == null) {
            CareLog.e(TAG, "Could not create a valid TripStatisticsInfo object from the input data!", new Object[0]);
            return;
        }
        Long tripNumber = tripStatisticsInfoCreate.getTripNumber();
        if (tripNumber != null) {
            CareLog.d(TAG, "Received TripStatisticsInfo for trip: %d", tripNumber);
            if (map.get(tripNumber) == null) {
                map.put(tripNumber, new TripInfo().setTripStatus(TripStatus.Ended));
            }
            map.get(tripNumber).setTripStatisticsInfo(tripStatisticsInfoCreate);
        }
    }

    private int getBlockID(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 2) {
            return 0;
        }
        return (byteBuffer.get(byteBuffer.position()) & 255) + 0 + ((byteBuffer.get(byteBuffer.position() + 1) << 8) & 65280);
    }

    private int getBlockSize(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 4) {
            return 0;
        }
        return (byteBuffer.get(byteBuffer.position() + 2) & 255) + 0 + ((byteBuffer.get(byteBuffer.position() + 3) << 8) & 65280);
    }
}
