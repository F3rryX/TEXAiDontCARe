package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class ElGamalPublicBCPGKey extends BCPGObject implements BCPGKey {
    MPInteger g;
    MPInteger p;
    MPInteger y;

    @Override // org.spongycastle.bcpg.BCPGKey
    public String getFormat() {
        return "PGP";
    }

    public ElGamalPublicBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.p = new MPInteger(bCPGInputStream);
        this.g = new MPInteger(bCPGInputStream);
        this.y = new MPInteger(bCPGInputStream);
    }

    public ElGamalPublicBCPGKey(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.p = new MPInteger(bigInteger);
        this.g = new MPInteger(bigInteger2);
        this.y = new MPInteger(bigInteger3);
    }

    @Override // org.spongycastle.bcpg.BCPGObject, org.spongycastle.util.Encodable
    public byte[] getEncoded() {
        try {
            return super.getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    public BigInteger getP() {
        return this.p.getValue();
    }

    public BigInteger getG() {
        return this.g.getValue();
    }

    public BigInteger getY() {
        return this.y.getValue();
    }

    @Override // org.spongycastle.bcpg.BCPGObject
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writeObject(this.p);
        bCPGOutputStream.writeObject(this.g);
        bCPGOutputStream.writeObject(this.y);
    }
}
