package org.spongycastle.openssl.bc;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.engines.AESFastEngine;
import org.spongycastle.crypto.engines.BlowfishEngine;
import org.spongycastle.crypto.engines.DESEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.RC2Engine;
import org.spongycastle.crypto.generators.OpenSSLPBEParametersGenerator;
import org.spongycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.CFBBlockCipher;
import org.spongycastle.crypto.modes.OFBBlockCipher;
import org.spongycastle.crypto.paddings.PKCS7Padding;
import org.spongycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.RC2Parameters;
import org.spongycastle.openssl.EncryptionException;
import org.spongycastle.openssl.PEMException;
import org.spongycastle.util.Integers;

/* JADX INFO: loaded from: classes3.dex */
class PEMUtilities {
    private static final Map KEYSIZES;
    private static final Set PKCS5_SCHEME_1;
    private static final Set PKCS5_SCHEME_2;

    PEMUtilities() {
    }

    static {
        HashMap map = new HashMap();
        KEYSIZES = map;
        HashSet hashSet = new HashSet();
        PKCS5_SCHEME_1 = hashSet;
        HashSet hashSet2 = new HashSet();
        PKCS5_SCHEME_2 = hashSet2;
        hashSet.add(PKCSObjectIdentifiers.pbeWithMD2AndDES_CBC);
        hashSet.add(PKCSObjectIdentifiers.pbeWithMD2AndRC2_CBC);
        hashSet.add(PKCSObjectIdentifiers.pbeWithMD5AndDES_CBC);
        hashSet.add(PKCSObjectIdentifiers.pbeWithMD5AndRC2_CBC);
        hashSet.add(PKCSObjectIdentifiers.pbeWithSHA1AndDES_CBC);
        hashSet.add(PKCSObjectIdentifiers.pbeWithSHA1AndRC2_CBC);
        hashSet2.add(PKCSObjectIdentifiers.id_PBES2);
        hashSet2.add(PKCSObjectIdentifiers.des_EDE3_CBC);
        hashSet2.add(NISTObjectIdentifiers.id_aes128_CBC);
        hashSet2.add(NISTObjectIdentifiers.id_aes192_CBC);
        hashSet2.add(NISTObjectIdentifiers.id_aes256_CBC);
        map.put(PKCSObjectIdentifiers.des_EDE3_CBC.getId(), Integers.valueOf(192));
        map.put(NISTObjectIdentifiers.id_aes128_CBC.getId(), Integers.valueOf(128));
        map.put(NISTObjectIdentifiers.id_aes192_CBC.getId(), Integers.valueOf(192));
        map.put(NISTObjectIdentifiers.id_aes256_CBC.getId(), Integers.valueOf(256));
        map.put(PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC4.getId(), Integers.valueOf(128));
        map.put(PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC4, Integers.valueOf(40));
        map.put(PKCSObjectIdentifiers.pbeWithSHAAnd2_KeyTripleDES_CBC, Integers.valueOf(128));
        map.put(PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC, Integers.valueOf(192));
        map.put(PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC2_CBC, Integers.valueOf(128));
        map.put(PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC2_CBC, Integers.valueOf(40));
    }

    static int getKeySize(String str) {
        Map map = KEYSIZES;
        if (!map.containsKey(str)) {
            throw new IllegalStateException("no key size for algorithm: " + str);
        }
        return ((Integer) map.get(str)).intValue();
    }

    static boolean isPKCS5Scheme1(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return PKCS5_SCHEME_1.contains(aSN1ObjectIdentifier);
    }

    static boolean isPKCS5Scheme2(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return PKCS5_SCHEME_2.contains(aSN1ObjectIdentifier);
    }

    public static boolean isPKCS12(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return aSN1ObjectIdentifier.getId().startsWith(PKCSObjectIdentifiers.pkcs_12PbeIds.getId());
    }

    public static KeyParameter generateSecretKeyForPKCS5Scheme2(String str, char[] cArr, byte[] bArr, int i) {
        PKCS5S2ParametersGenerator pKCS5S2ParametersGenerator = new PKCS5S2ParametersGenerator(new SHA1Digest());
        pKCS5S2ParametersGenerator.init(PBEParametersGenerator.PKCS5PasswordToBytes(cArr), bArr, i);
        return (KeyParameter) pKCS5S2ParametersGenerator.generateDerivedParameters(getKeySize(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0132 A[Catch: Exception -> 0x016c, TRY_ENTER, TryCatch #0 {Exception -> 0x016c, blocks: (B:63:0x0132, B:67:0x0140, B:69:0x014c, B:72:0x0166, B:68:0x0144, B:64:0x0138), top: B:81:0x0130 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0138 A[Catch: Exception -> 0x016c, TryCatch #0 {Exception -> 0x016c, blocks: (B:63:0x0132, B:67:0x0140, B:69:0x014c, B:72:0x0166, B:68:0x0144, B:64:0x0138), top: B:81:0x0130 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0140 A[Catch: Exception -> 0x016c, TryCatch #0 {Exception -> 0x016c, blocks: (B:63:0x0132, B:67:0x0140, B:69:0x014c, B:72:0x0166, B:68:0x0144, B:64:0x0138), top: B:81:0x0130 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0144 A[Catch: Exception -> 0x016c, TryCatch #0 {Exception -> 0x016c, blocks: (B:63:0x0132, B:67:0x0140, B:69:0x014c, B:72:0x0166, B:68:0x0144, B:64:0x0138), top: B:81:0x0130 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0165 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0166 A[Catch: Exception -> 0x016c, TRY_LEAVE, TryCatch #0 {Exception -> 0x016c, blocks: (B:63:0x0132, B:67:0x0140, B:69:0x014c, B:72:0x0166, B:68:0x0144, B:64:0x0138), top: B:81:0x0130 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static byte[] crypt(boolean z, byte[] bArr, char[] cArr, String str, byte[] bArr2) throws PEMException {
        String str2;
        byte[] bArr3;
        KeyParameter key;
        BlockCipher aESFastEngine;
        BlockCipher oFBBlockCipher;
        BufferedBlockCipher paddedBufferedBlockCipher;
        int outputSize;
        int iDoFinal;
        byte[] bArr4 = bArr2;
        PKCS7Padding pKCS7Padding = new PKCS7Padding();
        PKCS7Padding pKCS7Padding2 = null;
        if (str.endsWith("-CFB")) {
            str2 = "CFB";
            pKCS7Padding = null;
        } else {
            str2 = "CBC";
        }
        if (str.endsWith("-ECB") || "DES-EDE".equals(str) || "DES-EDE3".equals(str)) {
            str2 = "ECB";
            bArr3 = null;
        } else {
            bArr3 = bArr4;
        }
        if (str.endsWith("-OFB")) {
            str2 = "OFB";
        } else {
            pKCS7Padding2 = pKCS7Padding;
        }
        if (str.startsWith("DES-EDE")) {
            key = getKey(cArr, 24, bArr4, !str.startsWith("DES-EDE3"));
            aESFastEngine = new DESedeEngine();
        } else if (str.startsWith("DES-")) {
            key = getKey(cArr, 8, bArr4);
            aESFastEngine = new DESEngine();
        } else if (str.startsWith("BF-")) {
            key = getKey(cArr, 16, bArr4);
            aESFastEngine = new BlowfishEngine();
        } else {
            int i = 128;
            if (str.startsWith("RC2-")) {
                if (str.startsWith("RC2-40-")) {
                    i = 40;
                } else if (str.startsWith("RC2-64-")) {
                    i = 64;
                }
                RC2Parameters rC2Parameters = new RC2Parameters(getKey(cArr, i / 8, bArr4).getKey(), i);
                aESFastEngine = new RC2Engine();
                key = rC2Parameters;
            } else if (str.startsWith("AES-")) {
                if (bArr4.length > 8) {
                    byte[] bArr5 = new byte[8];
                    System.arraycopy(bArr4, 0, bArr5, 0, 8);
                    bArr4 = bArr5;
                }
                if (!str.startsWith("AES-128-")) {
                    if (str.startsWith("AES-192-")) {
                        i = 192;
                    } else {
                        if (!str.startsWith("AES-256-")) {
                            throw new EncryptionException("unknown AES encryption with private key: " + str);
                        }
                        i = 256;
                    }
                }
                key = getKey(cArr, i / 8, bArr4);
                aESFastEngine = new AESFastEngine();
            } else {
                throw new EncryptionException("unknown encryption with private key: " + str);
            }
        }
        try {
            if (str2.equals("CBC")) {
                oFBBlockCipher = new CBCBlockCipher(aESFastEngine);
            } else if (str2.equals("CFB")) {
                oFBBlockCipher = new CFBBlockCipher(aESFastEngine, aESFastEngine.getBlockSize() * 8);
            } else {
                if (str2.equals("OFB")) {
                    oFBBlockCipher = new OFBBlockCipher(aESFastEngine, aESFastEngine.getBlockSize() * 8);
                }
                if (pKCS7Padding2 != null) {
                    paddedBufferedBlockCipher = new BufferedBlockCipher(aESFastEngine);
                } else {
                    paddedBufferedBlockCipher = new PaddedBufferedBlockCipher(aESFastEngine, pKCS7Padding2);
                }
                BufferedBlockCipher bufferedBlockCipher = paddedBufferedBlockCipher;
                if (bArr3 != null) {
                    bufferedBlockCipher.init(z, key);
                } else {
                    bufferedBlockCipher.init(z, new ParametersWithIV(key, bArr3));
                }
                outputSize = bufferedBlockCipher.getOutputSize(bArr.length);
                byte[] bArr6 = new byte[outputSize];
                int iProcessBytes = bufferedBlockCipher.processBytes(bArr, 0, bArr.length, bArr6, 0);
                iDoFinal = iProcessBytes + bufferedBlockCipher.doFinal(bArr6, iProcessBytes);
                if (iDoFinal != outputSize) {
                    return bArr6;
                }
                byte[] bArr7 = new byte[iDoFinal];
                System.arraycopy(bArr6, 0, bArr7, 0, iDoFinal);
                return bArr7;
            }
            if (pKCS7Padding2 != null) {
            }
            BufferedBlockCipher bufferedBlockCipher2 = paddedBufferedBlockCipher;
            if (bArr3 != null) {
            }
            outputSize = bufferedBlockCipher2.getOutputSize(bArr.length);
            byte[] bArr62 = new byte[outputSize];
            int iProcessBytes2 = bufferedBlockCipher2.processBytes(bArr, 0, bArr.length, bArr62, 0);
            iDoFinal = iProcessBytes2 + bufferedBlockCipher2.doFinal(bArr62, iProcessBytes2);
            if (iDoFinal != outputSize) {
            }
        } catch (Exception e) {
            throw new EncryptionException("exception using cipher - please check password and data.", e);
        }
        aESFastEngine = oFBBlockCipher;
    }

    private static KeyParameter getKey(char[] cArr, int i, byte[] bArr) throws PEMException {
        return getKey(cArr, i, bArr, false);
    }

    private static KeyParameter getKey(char[] cArr, int i, byte[] bArr, boolean z) throws PEMException {
        OpenSSLPBEParametersGenerator openSSLPBEParametersGenerator = new OpenSSLPBEParametersGenerator();
        openSSLPBEParametersGenerator.init(PBEParametersGenerator.PKCS5PasswordToBytes(cArr), bArr, 1);
        KeyParameter keyParameter = (KeyParameter) openSSLPBEParametersGenerator.generateDerivedParameters(i * 8);
        if (!z || keyParameter.getKey().length != 24) {
            return keyParameter;
        }
        byte[] key = keyParameter.getKey();
        System.arraycopy(key, 0, key, 16, 8);
        return new KeyParameter(key);
    }
}
