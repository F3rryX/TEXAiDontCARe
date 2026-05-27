package at.favre.lib.armadillo;

import android.util.LruCache;
import at.favre.lib.armadillo.ByteArrayRuntimeObfuscator;
import at.favre.lib.bytes.Bytes;
import java.security.SecureRandom;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public interface DerivedPasswordCache {
    byte[] get(byte[] bArr, char[] cArr);

    void put(byte[] bArr, char[] cArr, byte[] bArr2);

    void wipe();

    public static final class Default implements DerivedPasswordCache {
        private final LruCache<Long, ByteArrayRuntimeObfuscator> cache = new LruCache<>(12);
        private final boolean enabled;
        private long key;
        private final SecureRandom secureRandom;

        public Default(boolean z, SecureRandom secureRandom) {
            this.enabled = z;
            this.secureRandom = secureRandom;
        }

        @Override // at.favre.lib.armadillo.DerivedPasswordCache
        public byte[] get(byte[] bArr, char[] cArr) {
            if (!this.enabled) {
                return null;
            }
            if (this.key == getPwKey(cArr)) {
                ByteArrayRuntimeObfuscator byteArrayRuntimeObfuscator = this.cache.get(Long.valueOf(getSaltKey(bArr)));
                if (byteArrayRuntimeObfuscator != null) {
                    return byteArrayRuntimeObfuscator.getBytes();
                }
                return null;
            }
            wipe();
            return null;
        }

        @Override // at.favre.lib.armadillo.DerivedPasswordCache
        public void put(byte[] bArr, char[] cArr, byte[] bArr2) {
            if (this.enabled) {
                long pwKey = getPwKey(cArr);
                if (pwKey != this.key) {
                    wipe();
                }
                this.key = pwKey;
                this.cache.put(Long.valueOf(getSaltKey(bArr)), new ByteArrayRuntimeObfuscator.Default(bArr2, this.secureRandom));
            }
        }

        private long getPwKey(char[] cArr) {
            return Bytes.from(cArr).hashSha256().longAt(0);
        }

        private long getSaltKey(byte[] bArr) {
            return Bytes.from(bArr).hashSha256().longAt(0);
        }

        @Override // at.favre.lib.armadillo.DerivedPasswordCache
        public void wipe() {
            this.key = 0L;
            if (this.cache.snapshot() != null) {
                Iterator<ByteArrayRuntimeObfuscator> it = this.cache.snapshot().values().iterator();
                while (it.hasNext()) {
                    it.next().wipe();
                }
            }
            this.cache.evictAll();
        }
    }
}
