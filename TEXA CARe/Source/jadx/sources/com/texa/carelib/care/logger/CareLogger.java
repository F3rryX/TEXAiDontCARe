package com.texa.carelib.care.logger;

import com.texa.carelib.core.CareLibException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public interface CareLogger {
    void beginLogUpdate(OutputStream outputStream) throws CareLibException;

    void endLogUpdate() throws CareLibException;
}
