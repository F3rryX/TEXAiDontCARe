package com.texa.carelib.care.attitude;

import com.texa.carelib.core.utils.CareStruct;

/* JADX INFO: loaded from: classes2.dex */
public class RotationMatrixReport implements CareStruct {
    private byte[] mRawData;
    private RotationMatrix mRotationMatrixFinal;
    private int mVersion;

    public RotationMatrixReport(byte[] bArr, int i, RotationMatrix rotationMatrix) {
        this.mRawData = bArr;
        this.mVersion = i;
        this.mRotationMatrixFinal = rotationMatrix;
    }

    @Override // com.texa.carelib.core.utils.CareStruct
    public byte[] getRawData() {
        return this.mRawData;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public RotationMatrix getRotationMatrixFinal() {
        return this.mRotationMatrixFinal;
    }
}
