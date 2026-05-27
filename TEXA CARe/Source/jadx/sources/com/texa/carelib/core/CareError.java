package com.texa.carelib.core;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.core.utils.internal.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class CareError extends Error implements Parcelable {
    public static final Parcelable.Creator<CareError> CREATOR = new Parcelable.Creator<CareError>() { // from class: com.texa.carelib.core.CareError.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CareError createFromParcel(Parcel parcel) {
            return new CareError(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CareError[] newArray(int i) {
            return new CareError[i];
        }
    };
    public static final String EXTRA_API_ERROR = "CareError#EXTRA_API_ERROR";
    public static final String EXTRA_API_ERROR_CODE = "CareError#EXTRA_API_ERROR_CODE";
    public static final String EXTRA_API_ERROR_DETAIL = "CareError#EXTRA_API_ERROR_DETAIL";
    public static final String EXTRA_API_HTTP_REASON = "CareError#EXTRA_API_HTTP_REASON";
    public static final String EXTRA_API_HTTP_RESPONSE_CODE = "CareError#EXTRA_API_HTTP_RESPONSE_CODE";
    public static final String EXTRA_API_URL = "CareError#EXTRA_API_URL";
    public static final String EXTRA_COMMAND_STATUS = "EXTRA_COMMAND_STATUS#CommandStatus";
    public static final String TAG = "CareError";
    private static final long serialVersionUID = 5212124521033358020L;
    private final int mDomain;
    private final int mErrorCode;
    private final Throwable mException;
    private final Bundle mExtraData;
    private final CareError mInnerError;
    private final String mMessage;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CareError(Builder builder) {
        this.mDomain = builder.mDomain;
        this.mErrorCode = builder.mErrorCode;
        this.mMessage = builder.mMessage;
        this.mExtraData = builder.mExtraData;
        this.mException = builder.mException;
        this.mInnerError = builder.mInnerError;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CareError careError = (CareError) obj;
        return this.mDomain == careError.mDomain && this.mErrorCode == careError.mErrorCode && Utils.equals(this.mException, careError.mException) && Utils.equals(this.mMessage, careError.mMessage) && Utils.equalBundles(this.mExtraData, careError.mExtraData) && Utils.equals(this.mInnerError, careError.mInnerError);
    }

    public int hashCode() {
        return Utils.hashCode(this.mException, this.mMessage, this.mInnerError, Integer.valueOf(this.mDomain), Integer.valueOf(this.mErrorCode));
    }

    @Override // java.lang.Throwable
    public CareError getCause() {
        return this.mInnerError;
    }

    public int getDomain() {
        return this.mDomain;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public Throwable getException() {
        return this.mException;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (!StringUtils.isNullOrEmpty(this.mMessage)) {
            return this.mMessage;
        }
        Throwable th = this.mException;
        return (th == null || StringUtils.isNullOrEmpty(th.getMessage())) ? "" : this.mException.getMessage();
    }

    public String getStringExtra(String str) {
        return this.mExtraData.getString(str);
    }

    public int getIntExtra(String str) {
        return this.mExtraData.getInt(str);
    }

    public int getIntExtra(String str, int i) {
        return this.mExtraData.getInt(str, i);
    }

    public boolean getBooleanExtra(String str) {
        return this.mExtraData.getBoolean(str);
    }

    public boolean getBooleanExtra(String str, boolean z) {
        return this.mExtraData.getBoolean(str, z);
    }

    public Bundle getBundleExtra(String str) {
        return this.mExtraData.getBundle(str);
    }

    public byte getByteExtra(String str) {
        return this.mExtraData.getByte(str);
    }

    public byte getByteExtra(String str, byte b) {
        return this.mExtraData.getByte(str, b).byteValue();
    }

    public byte[] getByteArrayExtra(String str) {
        return this.mExtraData.getByteArray(str);
    }

    public float getFloatExtra(String str) {
        return this.mExtraData.getFloat(str);
    }

    public float getFloatExtra(String str, float f) {
        return this.mExtraData.getFloat(str, f);
    }

    public float[] getFloatArrayExtra(String str) {
        return this.mExtraData.getFloatArray(str);
    }

    public Parcelable getParcelableExtra(String str) {
        return this.mExtraData.getParcelable(str);
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getMessage());
        if (!getMessage().endsWith("")) {
            sb.append('.');
        }
        if (this.mInnerError != null) {
            sb.append(" Inner error=");
            sb.append(this.mInnerError.toString());
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mDomain);
        parcel.writeInt(this.mErrorCode);
        parcel.writeBundle(this.mExtraData);
        parcel.writeSerializable(this.mException);
        parcel.writeParcelable(this.mInnerError, i);
        parcel.writeString(this.mMessage);
    }

    public CareError(Parcel parcel) {
        this.mDomain = parcel.readInt();
        this.mErrorCode = parcel.readInt();
        this.mExtraData = parcel.readBundle(Bundle.class.getClassLoader());
        this.mException = (Throwable) parcel.readSerializable();
        this.mInnerError = (CareError) parcel.readParcelable(CareError.class.getClassLoader());
        this.mMessage = parcel.readString();
    }

    public static class Builder {
        private int mDomain;
        private int mErrorCode;
        private CareError mInnerError = null;
        private String mMessage = null;
        private final Bundle mExtraData = new Bundle();
        private Throwable mException = null;

        public Builder(int i, int i2) {
            this.mDomain = i;
            this.mErrorCode = i2;
        }

        public CareError build() {
            return new CareError(this);
        }

        public Builder setInnerError(CareError careError) {
            this.mInnerError = careError;
            return this;
        }

        public Builder setException(Throwable th) {
            this.mException = th;
            return this;
        }

        public Builder setMessage(String str) {
            this.mMessage = str;
            return this;
        }

        public Builder putExtra(String str, String str2) {
            this.mExtraData.putString(str, str2);
            return this;
        }

        public Builder putExtra(String str, int i) {
            this.mExtraData.putInt(str, i);
            return this;
        }

        public Builder putExtra(String str, boolean z) {
            this.mExtraData.putBoolean(str, z);
            return this;
        }

        public Builder putExtra(String str, Bundle bundle) {
            this.mExtraData.putBundle(str, bundle);
            return this;
        }

        public Builder putExtra(String str, byte b) {
            this.mExtraData.putByte(str, b);
            return this;
        }

        public Builder putExtra(String str, byte[] bArr) {
            this.mExtraData.putByteArray(str, bArr);
            return this;
        }

        public Builder putExtra(String str, float f) {
            this.mExtraData.putFloat(str, f);
            return this;
        }

        public Builder putExtra(String str, float[] fArr) {
            this.mExtraData.putFloatArray(str, fArr);
            return this;
        }

        public Builder putExtra(String str, Parcelable parcelable) {
            this.mExtraData.putParcelable(str, parcelable);
            return this;
        }
    }
}
