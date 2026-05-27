package com.texa.carelib.care.attitude.internal;

import com.texa.carelib.care.attitude.RotationMatrix;
import com.texa.carelib.care.attitude.RotationMatrixReport;

/* JADX INFO: loaded from: classes2.dex */
public class RotationMatrixReportBuilder {
    private RotationMatrix mRotationMatrixFinal;
    private byte[] rawData;
    private int version;

    public RotationMatrixReportBuilder setRawData(byte[] bArr) {
        this.rawData = bArr;
        return this;
    }

    public RotationMatrixReportBuilder setVersion(int i) {
        this.version = i;
        return this;
    }

    public RotationMatrixReportBuilder setRotationMatrixFinal(RotationMatrix rotationMatrix) {
        this.mRotationMatrixFinal = rotationMatrix;
        return this;
    }

    public RotationMatrixReport build() {
        return new RotationMatrixReport(this.rawData, this.version, this.mRotationMatrixFinal);
    }
}
