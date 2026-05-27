package org.spongycastle.openpgp.bc;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKeyRingCollection;
import org.spongycastle.openpgp.operator.bc.BcKeyFingerprintCalculator;

/* JADX INFO: loaded from: classes3.dex */
public class BcPGPPublicKeyRingCollection extends PGPPublicKeyRingCollection {
    public BcPGPPublicKeyRingCollection(byte[] bArr) throws PGPException, IOException {
        this(new ByteArrayInputStream(bArr));
    }

    public BcPGPPublicKeyRingCollection(InputStream inputStream) throws PGPException, IOException {
        super(inputStream, new BcKeyFingerprintCalculator());
    }

    public BcPGPPublicKeyRingCollection(Collection collection) throws PGPException, IOException {
        super(collection);
    }
}
