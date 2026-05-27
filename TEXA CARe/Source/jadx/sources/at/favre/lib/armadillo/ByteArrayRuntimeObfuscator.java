package at.favre.lib.armadillo;

import at.favre.lib.bytes.Bytes;
import at.favre.lib.bytes.MutableBytes;
import java.security.SecureRandom;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface ByteArrayRuntimeObfuscator {
    byte[] getBytes();

    void wipe();

    public static final class Default implements ByteArrayRuntimeObfuscator {
        private final byte[][] data;
        private final SecureRandom secureRandom;

        Default(byte[] bArr, SecureRandom secureRandom) {
            Objects.requireNonNull(bArr);
            Objects.requireNonNull(secureRandom);
            this.secureRandom = secureRandom;
            this.data = new byte[((int) (Math.abs(Bytes.random(8).toLong()) % 9)) + 1 + 1][];
            createAndEncrypt(secureRandom, Bytes.from(bArr), bArr.length);
        }

        private void createAndEncrypt(SecureRandom secureRandom, Bytes bytes, int i) {
            MutableBytes mutableBytesMutable = bytes.mutable();
            int i2 = 0;
            while (true) {
                byte[][] bArr = this.data;
                if (i2 < bArr.length - 1) {
                    byte[] bArrArray = Bytes.random(i, secureRandom).array();
                    this.data[i2] = bArrArray;
                    mutableBytesMutable.xor(bArrArray);
                    i2++;
                } else {
                    bArr[bArr.length - 1] = mutableBytesMutable.array();
                    return;
                }
            }
        }

        @Override // at.favre.lib.armadillo.ByteArrayRuntimeObfuscator
        public synchronized byte[] getBytes() {
            Bytes bytesEmpty;
            bytesEmpty = Bytes.empty();
            for (int length = this.data.length - 1; length >= 0; length--) {
                if (bytesEmpty.isEmpty()) {
                    bytesEmpty = Bytes.from(this.data[length]).mutable();
                } else {
                    bytesEmpty.xor(this.data[length]);
                }
            }
            createAndEncrypt(this.secureRandom, Bytes.from(bytesEmpty), bytesEmpty.length());
            return bytesEmpty.array();
        }

        @Override // at.favre.lib.armadillo.ByteArrayRuntimeObfuscator
        public void wipe() {
            for (byte[] bArr : this.data) {
                Bytes.wrap(bArr).mutable().secureWipe();
            }
        }

        protected void finalize() throws Throwable {
            wipe();
            super.finalize();
        }
    }
}
