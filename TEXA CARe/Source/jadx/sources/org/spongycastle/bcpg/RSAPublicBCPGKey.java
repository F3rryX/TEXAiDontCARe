package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class RSAPublicBCPGKey extends BCPGObject implements BCPGKey {
    MPInteger e;
    MPInteger n;

    @Override // org.spongycastle.bcpg.BCPGKey
    public String getFormat() {
        return "PGP";
    }

    public RSAPublicBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.n = new MPInteger(bCPGInputStream);
        this.e = new MPInteger(bCPGInputStream);
    }

    public RSAPublicBCPGKey(BigInteger bigInteger, BigInteger bigInteger2) {
        this.n = new MPInteger(bigInteger);
        this.e = new MPInteger(bigInteger2);
    }

    public BigInteger getPublicExponent() {
        return this.e.getValue();
    }

    public BigInteger getModulus() {
        return this.n.getValue();
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
        bCPGOutputStream.writeObject(this.n);
        bCPGOutputStream.writeObject(this.e);
    }
}
