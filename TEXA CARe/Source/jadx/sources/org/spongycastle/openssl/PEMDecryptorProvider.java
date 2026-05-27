package org.spongycastle.openssl;

import org.spongycastle.operator.OperatorCreationException;

/* JADX INFO: loaded from: classes3.dex */
public interface PEMDecryptorProvider {
    PEMDecryptor get(String str) throws OperatorCreationException;
}
