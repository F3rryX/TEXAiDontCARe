package com.texa.carelib.care.vehicle;

import com.texa.carelib.core.CareLibException;

/* JADX INFO: loaded from: classes2.dex */
public class InvalidVehicleValueException extends CareLibException {
    private int mDetail;
    private ErrorCode mErrorCode;

    public enum ErrorCode {
        NoDataAvailable,
        DataRead,
        DataTypeMismatch,
        NotSupported
    }

    public InvalidVehicleValueException(ErrorCode errorCode, String str, Throwable th) {
        super(str, th);
        this.mErrorCode = errorCode;
    }

    public InvalidVehicleValueException(ErrorCode errorCode, String str) {
        super(str);
        this.mErrorCode = errorCode;
    }

    public InvalidVehicleValueException(ErrorCode errorCode, String str, int i) {
        super(str);
        this.mErrorCode = errorCode;
        this.mDetail = i;
    }

    public ErrorCode getCode() {
        return this.mErrorCode;
    }

    public int getDetail() {
        return this.mDetail;
    }
}
