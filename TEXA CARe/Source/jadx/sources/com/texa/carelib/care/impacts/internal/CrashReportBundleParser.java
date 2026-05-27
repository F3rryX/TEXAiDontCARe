package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.Impact;
import com.texa.carelib.care.impacts.VerboseCrashReport;
import com.texa.carelib.core.internal.CareStructID;
import com.texa.carelib.core.logging.CareLog;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReportBundleParser {
    private static List<Integer> SUPPORTED_BLOCK_ID = Arrays.asList(Integer.valueOf(CareStructID.CRASH_REPORT_STANDARD.getID()), Integer.valueOf(CareStructID.CRASH_REPORT_STANDARD_NOT_VALIDATED.getID()), Integer.valueOf(CareStructID.CRASH_REPORT_STANDARD_LOW_POWER.getID()), Integer.valueOf(CareStructID.CRASH_REPORT_VERBOSE.getID()));
    private static final String TAG = "CrashReportBundleParser";
    private final List<Impact> mImpacts = new ArrayList();
    private final List<CrashReport> mAccelerationEvents = new ArrayList();
    private final List<CrashReport> mAccelerationEventsLPM = new ArrayList();

    CrashReportBundleParser() {
    }

    public void parse(ByteBuffer byteBuffer) {
        String str;
        int blockID;
        int blockSize;
        VerboseCrashReport blockVerboseCrashReport;
        this.mImpacts.clear();
        this.mAccelerationEvents.clear();
        this.mAccelerationEventsLPM.clear();
        if (byteBuffer == null) {
            return;
        }
        byteBuffer.position(0);
        do {
            try {
                str = TAG;
                CareLog.d(str, "Position: %d/%d. Remaining: %d", Integer.valueOf(byteBuffer.position()), Integer.valueOf(byteBuffer.capacity()), Integer.valueOf(byteBuffer.remaining()));
                blockID = getBlockID(byteBuffer);
                blockSize = getBlockSize(byteBuffer);
                if (!isValidBlockID(blockID) || blockSize == 0) {
                    int iFindNextBlock = findNextBlock(byteBuffer);
                    if (iFindNextBlock < byteBuffer.position()) {
                        return;
                    }
                    byteBuffer.position(iFindNextBlock);
                    blockID = getBlockID(byteBuffer);
                    blockSize = getBlockSize(byteBuffer);
                }
            } catch (Exception e) {
                CareLog.e(TAG, "Trip data parse error.", e);
            }
            if (byteBuffer.remaining() < blockSize) {
                return;
            }
            byte[] bArr = new byte[Math.min(blockSize, byteBuffer.remaining())];
            byteBuffer.get(bArr);
            CareStructID careStructIDFromBlockID = CareStructID.fromBlockID(blockID);
            CareLog.d(str, "Found blockID: 0x%s(%s) Size:%d", Integer.toHexString(blockID), CareStructID.getBlockName(blockID), Integer.valueOf(blockSize));
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$core$internal$CareStructID[careStructIDFromBlockID.ordinal()];
            if (i == 1) {
                CrashReport blockCrashReport = parseBlockCrashReport(bArr);
                if (blockCrashReport != null) {
                    addCrashReportValidated(blockCrashReport);
                }
            } else if (i == 2) {
                CrashReport blockCrashReport2 = parseBlockCrashReport(bArr);
                if (blockCrashReport2 != null) {
                    addCrashReportNotValidated(blockCrashReport2);
                }
            } else if (i == 3) {
                CrashReport blockCrashReport3 = parseBlockCrashReport(bArr);
                if (blockCrashReport3 != null) {
                    addCrashReportLPM(blockCrashReport3);
                }
            } else if (i == 4 && (blockVerboseCrashReport = parseBlockVerboseCrashReport(bArr)) != null) {
                addVerboseCrashReport(blockVerboseCrashReport);
            }
        } while (byteBuffer.hasRemaining());
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.impacts.internal.CrashReportBundleParser$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$core$internal$CareStructID;

        static {
            int[] iArr = new int[CareStructID.values().length];
            $SwitchMap$com$texa$carelib$core$internal$CareStructID = iArr;
            try {
                iArr[CareStructID.CRASH_REPORT_STANDARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$core$internal$CareStructID[CareStructID.CRASH_REPORT_STANDARD_NOT_VALIDATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$core$internal$CareStructID[CareStructID.CRASH_REPORT_STANDARD_LOW_POWER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$core$internal$CareStructID[CareStructID.CRASH_REPORT_VERBOSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    protected boolean isRelated(CrashReport crashReport, VerboseCrashReport verboseCrashReport) {
        return crashReport.getCrashID() == verboseCrashReport.getCrashID();
    }

    protected void addCrashReportValidated(CrashReport crashReport) {
        boolean z;
        long crashID = crashReport.getCrashID();
        Date timeStamp = crashReport.getTimeStamp();
        if (CrashReport.CRASH_ID_UNDEF.equals(Long.valueOf(crashID))) {
            return;
        }
        List<Impact> list = this.mImpacts;
        ListIterator<Impact> listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                z = false;
                break;
            }
            Impact impactPrevious = listIterator.previous();
            if (impactPrevious.getCrashReport() == null && impactPrevious.getVerboseCrashReport() != null && impactPrevious.getVerboseCrashReport().getCrashID() == crashID) {
                impactPrevious.setDate(timeStamp);
                impactPrevious.setCrashReport(crashReport);
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        this.mImpacts.add(new Impact(timeStamp, crashReport));
    }

    protected void addCrashReportNotValidated(CrashReport crashReport) {
        this.mAccelerationEvents.add(crashReport);
    }

    protected void addCrashReportLPM(CrashReport crashReport) {
        this.mAccelerationEventsLPM.add(crashReport);
    }

    private void addVerboseCrashReport(VerboseCrashReport verboseCrashReport) {
        boolean z;
        if (VerboseCrashReport.CRASH_ID_UNDEF.longValue() != verboseCrashReport.getCrashID()) {
            List<Impact> list = this.mImpacts;
            ListIterator<Impact> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                Impact impactPrevious = listIterator.previous();
                if (impactPrevious.getCrashReport() != null && isRelated(impactPrevious.getCrashReport(), verboseCrashReport)) {
                    impactPrevious.setVerboseCrashReport(verboseCrashReport);
                    z = true;
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        if (verboseCrashReport.getVersion() >= 3) {
            this.mImpacts.add(new Impact(verboseCrashReport.getTimeStamp(), null, verboseCrashReport));
        } else {
            int size = this.mImpacts.size() - 1;
            if (size >= 0) {
                this.mImpacts.get(size).setVerboseCrashReport(verboseCrashReport);
            }
        }
    }

    public List<CrashReport> getAccelerationEvents() {
        return this.mAccelerationEvents;
    }

    public List<CrashReport> getAccelerationEventsLPM() {
        return this.mAccelerationEventsLPM;
    }

    public List<Impact> getImpacts() {
        return this.mImpacts;
    }

    CrashReport parseBlockCrashReport(byte[] bArr) {
        try {
            return new CrashReportFactory().create(bArr);
        } catch (Exception e) {
            CareLog.e(TAG, "CrashReport parser exception.", e);
            return null;
        }
    }

    VerboseCrashReport parseBlockVerboseCrashReport(byte[] bArr) {
        try {
            return new VerboseCrashReportFactory().create(bArr);
        } catch (Exception e) {
            CareLog.e(TAG, "VerboseCrashReport parser exception.", e);
            return null;
        }
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
        return SUPPORTED_BLOCK_ID.contains(Integer.valueOf(i));
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
