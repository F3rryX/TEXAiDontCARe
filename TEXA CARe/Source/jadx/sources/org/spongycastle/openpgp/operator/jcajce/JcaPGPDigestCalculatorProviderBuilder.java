package org.spongycastle.openpgp.operator.jcajce;

import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Provider;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.openpgp.operator.PGPDigestCalculatorProvider;

/* JADX INFO: loaded from: classes3.dex */
public class JcaPGPDigestCalculatorProviderBuilder {
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());

    public JcaPGPDigestCalculatorProviderBuilder setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }

    public JcaPGPDigestCalculatorProviderBuilder setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public PGPDigestCalculatorProvider build() throws PGPException {
        return new PGPDigestCalculatorProvider() { // from class: org.spongycastle.openpgp.operator.jcajce.JcaPGPDigestCalculatorProviderBuilder.1
            @Override // org.spongycastle.openpgp.operator.PGPDigestCalculatorProvider
            public PGPDigestCalculator get(final int i) throws PGPException {
                try {
                    final MessageDigest messageDigestCreateDigest = JcaPGPDigestCalculatorProviderBuilder.this.helper.createDigest(i);
                    final DigestOutputStream digestOutputStream = JcaPGPDigestCalculatorProviderBuilder.this.new DigestOutputStream(messageDigestCreateDigest);
                    return new PGPDigestCalculator() { // from class: org.spongycastle.openpgp.operator.jcajce.JcaPGPDigestCalculatorProviderBuilder.1.1
                        @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
                        public int getAlgorithm() {
                            return i;
                        }

                        @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
                        public OutputStream getOutputStream() {
                            return digestOutputStream;
                        }

                        @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
                        public byte[] getDigest() {
                            return digestOutputStream.getDigest();
                        }

                        @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
                        public void reset() {
                            messageDigestCreateDigest.reset();
                        }
                    };
                } catch (GeneralSecurityException e) {
                    throw new PGPException("exception on setup: " + e, e);
                }
            }
        };
    }

    private class DigestOutputStream extends OutputStream {
        private MessageDigest dig;

        DigestOutputStream(MessageDigest messageDigest) {
            this.dig = messageDigest;
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.dig.update(bArr, i, i2);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.dig.update(bArr);
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.dig.update((byte) i);
        }

        byte[] getDigest() {
            return this.dig.digest();
        }
    }
}
