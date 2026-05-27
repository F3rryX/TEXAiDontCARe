package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class RSASecretBCPGKey extends BCPGObject implements BCPGKey {
    BigInteger crt;
    MPInteger d;
    BigInteger expP;
    BigInteger expQ;
    MPInteger p;
    MPInteger q;
    MPInteger u;

    @Override // org.spongycastle.bcpg.BCPGKey
    public String getFormat() {
        return "PGP";
    }

    public RSASecretBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.d = new MPInteger(bCPGInputStream);
        this.p = new MPInteger(bCPGInputStream);
        this.q = new MPInteger(bCPGInputStream);
        this.u = new MPInteger(bCPGInputStream);
        this.expP = this.d.getValue().remainder(this.p.getValue().subtract(BigInteger.valueOf(1L)));
        this.expQ = this.d.getValue().remainder(this.q.getValue().subtract(BigInteger.valueOf(1L)));
        this.crt = this.q.getValue().modInverse(this.p.getValue());
    }

    public RSASecretBCPGKey(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        int iCompareTo = bigInteger2.compareTo(bigInteger3);
        if (iCompareTo >= 0) {
            if (iCompareTo == 0) {
                throw new IllegalArgumentException("p and q cannot be equal");
            }
            bigInteger3 = bigInteger2;
            bigInteger2 = bigInteger3;
        }
        this.d = new MPInteger(bigInteger);
        this.p = new MPInteger(bigInteger2);
        this.q = new MPInteger(bigInteger3);
        this.u = new MPInteger(bigInteger2.modInverse(bigInteger3));
        this.expP = bigInteger.remainder(bigInteger2.subtract(BigInteger.valueOf(1L)));
        this.expQ = bigInteger.remainder(bigInteger3.subtract(BigInteger.valueOf(1L)));
        this.crt = bigInteger3.modInverse(bigInteger2);
    }

    public BigInteger getModulus() {
        return this.p.getValue().multiply(this.q.getValue());
    }

    public BigInteger getPrivateExponent() {
        return this.d.getValue();
    }

    public BigInteger getPrimeP() {
        return this.p.getValue();
    }

    public BigInteger getPrimeQ() {
        return this.q.getValue();
    }

    public BigInteger getPrimeExponentP() {
        return this.expP;
    }

    public BigInteger getPrimeExponentQ() {
        return this.expQ;
    }

    public BigInteger getCrtCoefficient() {
        return this.crt;
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
        bCPGOutputStream.writeObject(this.d);
        bCPGOutputStream.writeObject(this.p);
        bCPGOutputStream.writeObject(this.q);
        bCPGOutputStream.writeObject(this.u);
    }
}
