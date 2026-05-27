package com.texa.carelib.care.impacts;

import com.texa.carelib.core.utils.CareStruct;
import com.texa.carelib.core.utils.internal.Utils;
import java.nio.ByteBuffer;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class Impact implements CareStruct {
    private CrashReport mCrashReport;
    private Date mDate;
    private VerboseCrashReport mVerboseCrashReport;

    public Date getDate() {
        return this.mDate;
    }

    public Impact setDate(Date date) {
        this.mDate = date;
        return this;
    }

    public CrashReport getCrashReport() {
        return this.mCrashReport;
    }

    public Impact setCrashReport(CrashReport crashReport) {
        this.mCrashReport = crashReport;
        return this;
    }

    public VerboseCrashReport getVerboseCrashReport() {
        return this.mVerboseCrashReport;
    }

    public Impact setVerboseCrashReport(VerboseCrashReport verboseCrashReport) {
        this.mVerboseCrashReport = verboseCrashReport;
        return this;
    }

    public Impact() {
        this.mDate = Utils.getUTCNow();
        this.mCrashReport = null;
        this.mVerboseCrashReport = null;
    }

    public Impact(Date date) {
        this();
        this.mDate = date;
    }

    public Impact(Date date, CrashReport crashReport) {
        this();
        this.mDate = date;
        this.mCrashReport = crashReport;
    }

    public Impact(Date date, CrashReport crashReport, VerboseCrashReport verboseCrashReport) {
        this();
        this.mDate = date;
        this.mCrashReport = crashReport;
        this.mVerboseCrashReport = verboseCrashReport;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Impact impact = (Impact) obj;
        return Utils.equals(this.mDate, impact.mDate) && Utils.equals(this.mCrashReport, impact.mCrashReport) && Utils.equals(this.mVerboseCrashReport, impact.mVerboseCrashReport);
    }

    public int hashCode() {
        return Utils.hashCode(this.mDate, this.mCrashReport, this.mVerboseCrashReport);
    }

    @Override // com.texa.carelib.core.utils.CareStruct
    public byte[] getRawData() {
        byte[] rawData = new byte[0];
        byte[] rawData2 = new byte[0];
        CrashReport crashReport = this.mCrashReport;
        if (crashReport != null && crashReport.getRawData() != null) {
            rawData = this.mCrashReport.getRawData();
        }
        VerboseCrashReport verboseCrashReport = this.mVerboseCrashReport;
        if (verboseCrashReport != null && verboseCrashReport.getRawData() != null) {
            rawData2 = this.mVerboseCrashReport.getRawData();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(rawData.length + rawData2.length);
        byteBufferAllocate.put(rawData);
        byteBufferAllocate.put(rawData2);
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }
}
