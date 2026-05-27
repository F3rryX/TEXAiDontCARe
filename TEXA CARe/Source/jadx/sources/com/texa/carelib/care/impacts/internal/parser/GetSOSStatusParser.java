package com.texa.carelib.care.impacts.internal.parser;

import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.internal.CrashReportFactory;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class GetSOSStatusParser {
    private static final int INDEX_CRASH_REPORT = 5;
    private static final int INDEX_SOS_DATE = 1;
    private static final int INDEX_SOS_STATUS = 0;
    public static final String TAG = "GetSOSStatusParser";

    public enum SOSStatus {
        Undefined,
        Absent,
        Present,
        Error
    }

    private GetSOSStatusParser() {
    }

    public static GetSOSStatusResponse parse(Message message) {
        GetSOSStatusResponse getSOSStatusResponse = new GetSOSStatusResponse();
        if (message.getStatus() == 0 && message.getData() != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(message.getData());
            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
            getSOSStatusResponse.setSOSStatus(getSOSStatus(byteBufferWrap));
            getSOSStatusResponse.setDate(getSOSDate(byteBufferWrap));
            getSOSStatusResponse.setCrashReport(getCrashReport(byteBufferWrap));
        }
        return getSOSStatusResponse;
    }

    private static CrashReport getCrashReport(ByteBuffer byteBuffer) {
        if (byteBuffer.capacity() >= 5) {
            byteBuffer.position(5);
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            if (CrashReportFactory.isStandardCrashReportBlock(bArr)) {
                return new CrashReportFactory().create(bArr);
            }
        }
        return null;
    }

    private static Date getSOSDate(ByteBuffer byteBuffer) {
        if (byteBuffer.capacity() >= 5) {
            return ByteBufferUtils.getTimestamp(TimeUnit.SECONDS, byteBuffer, 1);
        }
        return null;
    }

    private static SOSStatus getSOSStatus(ByteBuffer byteBuffer) {
        if (byteBuffer.capacity() >= 1) {
            short unsignedByte = ByteBufferUtils.getUnsignedByte(byteBuffer, 0);
            CareLog.v(TAG, "SOS Status = %d", Integer.valueOf(unsignedByte));
            if (unsignedByte == 0) {
                return SOSStatus.Absent;
            }
            if (unsignedByte == 1) {
                return SOSStatus.Present;
            }
            if (unsignedByte == 2) {
                return SOSStatus.Error;
            }
        }
        return SOSStatus.Undefined;
    }

    public static class GetSOSStatusResponse {
        private SOSStatus mSOSStatus = SOSStatus.Undefined;
        private Date mDate = null;
        private CrashReport mCrashReport = null;

        public SOSStatus getSOSStatus() {
            return this.mSOSStatus;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public GetSOSStatusResponse setSOSStatus(SOSStatus sOSStatus) {
            this.mSOSStatus = sOSStatus;
            return this;
        }

        public Date getDate() {
            return this.mDate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public GetSOSStatusResponse setDate(Date date) {
            this.mDate = date;
            return this;
        }

        public CrashReport getCrashReport() {
            return this.mCrashReport;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public GetSOSStatusResponse setCrashReport(CrashReport crashReport) {
            this.mCrashReport = crashReport;
            return this;
        }
    }
}
