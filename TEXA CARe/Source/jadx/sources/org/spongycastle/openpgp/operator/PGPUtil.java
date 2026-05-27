package org.spongycastle.openpgp.operator;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.bcpg.HashAlgorithmTags;
import org.spongycastle.bcpg.S2K;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes3.dex */
class PGPUtil implements HashAlgorithmTags {
    PGPUtil() {
    }

    static byte[] makeKeyFromPassPhrase(PGPDigestCalculator pGPDigestCalculator, int i, S2K s2k, char[] cArr) throws PGPException {
        int i2 = 256;
        switch (i) {
            case 1:
            case 3:
            case 4:
            case 5:
            case 7:
            case 11:
                i2 = 128;
                break;
            case 2:
            case 8:
            case 12:
                i2 = 192;
                break;
            case 6:
                i2 = 64;
                break;
            case 9:
            case 10:
            case 13:
                break;
            default:
                throw new PGPException("unknown symmetric algorithm: " + i);
        }
        byte[] uTF8ByteArray = Strings.toUTF8ByteArray(cArr);
        int i3 = (i2 + 7) / 8;
        byte[] bArr = new byte[i3];
        if (s2k != null) {
            if (s2k.getHashAlgorithm() != pGPDigestCalculator.getAlgorithm()) {
                throw new PGPException("s2k/digestCalculator mismatch");
            }
        } else if (pGPDigestCalculator.getAlgorithm() != 1) {
            throw new PGPException("digestCalculator not for MD5");
        }
        OutputStream outputStream = pGPDigestCalculator.getOutputStream();
        int length = 0;
        int i4 = 0;
        while (length < i3) {
            if (s2k != null) {
                for (int i5 = 0; i5 != i4; i5++) {
                    try {
                        outputStream.write(0);
                    } catch (IOException e) {
                        throw new PGPException("exception calculating digest: " + e.getMessage(), e);
                    }
                }
                byte[] iv = s2k.getIV();
                int type = s2k.getType();
                if (type == 0) {
                    outputStream.write(uTF8ByteArray);
                } else if (type == 1) {
                    outputStream.write(iv);
                    outputStream.write(uTF8ByteArray);
                } else if (type == 3) {
                    long iterationCount = s2k.getIterationCount();
                    outputStream.write(iv);
                    outputStream.write(uTF8ByteArray);
                    long length2 = iterationCount - ((long) (iv.length + uTF8ByteArray.length));
                    while (true) {
                        if (length2 > 0) {
                            if (length2 < iv.length) {
                                outputStream.write(iv, 0, (int) length2);
                            } else {
                                outputStream.write(iv);
                                long length3 = length2 - ((long) iv.length);
                                if (length3 < uTF8ByteArray.length) {
                                    outputStream.write(uTF8ByteArray, 0, (int) length3);
                                    length2 = 0;
                                } else {
                                    outputStream.write(uTF8ByteArray);
                                    length2 = length3 - ((long) uTF8ByteArray.length);
                                }
                            }
                        }
                    }
                } else {
                    throw new PGPException("unknown S2K type: " + s2k.getType());
                }
            } else {
                for (int i6 = 0; i6 != i4; i6++) {
                    outputStream.write(0);
                }
                outputStream.write(uTF8ByteArray);
            }
            outputStream.close();
            byte[] digest = pGPDigestCalculator.getDigest();
            int i7 = i3 - length;
            if (digest.length > i7) {
                System.arraycopy(digest, 0, bArr, length, i7);
            } else {
                System.arraycopy(digest, 0, bArr, length, digest.length);
            }
            length += digest.length;
            i4++;
        }
        for (int i8 = 0; i8 != uTF8ByteArray.length; i8++) {
            uTF8ByteArray[i8] = 0;
        }
        return bArr;
    }

    public static byte[] makeKeyFromPassPhrase(PGPDigestCalculatorProvider pGPDigestCalculatorProvider, int i, S2K s2k, char[] cArr) throws PGPException {
        PGPDigestCalculator pGPDigestCalculator;
        if (s2k != null) {
            pGPDigestCalculator = pGPDigestCalculatorProvider.get(s2k.getHashAlgorithm());
        } else {
            pGPDigestCalculator = pGPDigestCalculatorProvider.get(1);
        }
        return makeKeyFromPassPhrase(pGPDigestCalculator, i, s2k, cArr);
    }
}
