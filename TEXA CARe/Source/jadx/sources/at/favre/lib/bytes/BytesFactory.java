package at.favre.lib.bytes;

import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public interface BytesFactory {
    Bytes wrap(byte[] bArr, ByteOrder byteOrder);
}
