package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class ElGamalSecretBCPGKey extends BCPGObject implements BCPGKey {
    MPInteger x;

    @Override // org.spongycastle.bcpg.BCPGKey
    public String getFormat() {
        return "PGP";
    }

    public ElGamalSecretBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.x = new MPInteger(bCPGInputStream);
    }

    public ElGamalSecretBCPGKey(BigInteger bigInteger) {
        this.x = new MPInteger(bigInteger);
    }

    public BigInteger getX() {
        return this.x.getValue();
    }

    @Override // org.spongycastle.bcpg.BCPGObject, org.spongycastle.util.Encodable
    public byte[] getEncoded() {
        try {
            return super.getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // org.spongycastle.bcpg.BCPGObject
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writeObject(this.x);
    }
}
