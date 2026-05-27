package com.texa.carelib.care.vehicletroubles;

import com.texa.carelib.core.utils.internal.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class DTCDetail {
    private final boolean mIsOBD;
    private final Long mOccurrences;
    private final Long mSourceNode;
    private final DTCStatus mStatus;

    public DTCDetail(boolean z, DTCStatus dTCStatus, Long l, Long l2) {
        this.mIsOBD = z;
        this.mStatus = dTCStatus;
        this.mOccurrences = l;
        this.mSourceNode = l2;
    }

    public Long getOccurrences() {
        return this.mOccurrences;
    }

    public Long getSourceNode() {
        return this.mSourceNode;
    }

    public boolean isOBD() {
        return this.mIsOBD;
    }

    public DTCStatus getStatus() {
        return this.mStatus;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DTCDetail dTCDetail = (DTCDetail) obj;
        return this.mIsOBD == dTCDetail.mIsOBD && this.mStatus == dTCDetail.mStatus && Utils.equals(this.mOccurrences, dTCDetail.mOccurrences) && Utils.equals(this.mSourceNode, dTCDetail.mSourceNode);
    }

    public int hashCode() {
        return Utils.hashCode(Boolean.valueOf(this.mIsOBD), this.mStatus, this.mOccurrences, this.mSourceNode);
    }
}
