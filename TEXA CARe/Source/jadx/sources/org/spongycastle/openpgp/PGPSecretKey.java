package org.spongycastle.openpgp;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.spongycastle.asn1.x9.ECNamedCurveTable;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.bcpg.BCPGObject;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.bcpg.ContainedPacket;
import org.spongycastle.bcpg.DSASecretBCPGKey;
import org.spongycastle.bcpg.ECDSAPublicBCPGKey;
import org.spongycastle.bcpg.ECSecretBCPGKey;
import org.spongycastle.bcpg.ElGamalSecretBCPGKey;
import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.bcpg.RSASecretBCPGKey;
import org.spongycastle.bcpg.S2K;
import org.spongycastle.bcpg.SecretKeyPacket;
import org.spongycastle.bcpg.SecretSubkeyPacket;
import org.spongycastle.bcpg.UserAttributePacket;
import org.spongycastle.bcpg.UserIDPacket;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.openpgp.operator.PBEProtectionRemoverFactory;
import org.spongycastle.openpgp.operator.PBESecretKeyDecryptor;
import org.spongycastle.openpgp.operator.PBESecretKeyEncryptor;
import org.spongycastle.openpgp.operator.PGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;

/* JADX INFO: loaded from: classes3.dex */
public class PGPSecretKey {
    PGPPublicKey pub;
    SecretKeyPacket secret;

    PGPSecretKey(SecretKeyPacket secretKeyPacket, PGPPublicKey pGPPublicKey) {
        this.secret = secretKeyPacket;
        this.pub = pGPPublicKey;
    }

    PGPSecretKey(PGPPrivateKey pGPPrivateKey, PGPPublicKey pGPPublicKey, PGPDigestCalculator pGPDigestCalculator, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        this(pGPPrivateKey, pGPPublicKey, pGPDigestCalculator, false, pBESecretKeyEncryptor);
    }

    public PGPSecretKey(PGPPrivateKey pGPPrivateKey, PGPPublicKey pGPPublicKey, PGPDigestCalculator pGPDigestCalculator, boolean z, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        this.pub = pGPPublicKey;
        this.secret = buildSecretKeyPacket(z, pGPPrivateKey, pGPPublicKey, pBESecretKeyEncryptor, pGPDigestCalculator);
    }

    private static SecretKeyPacket buildSecretKeyPacket(boolean z, PGPPrivateKey pGPPrivateKey, PGPPublicKey pGPPublicKey, PBESecretKeyEncryptor pBESecretKeyEncryptor, PGPDigestCalculator pGPDigestCalculator) throws PGPException {
        int i;
        BCPGObject bCPGObject = (BCPGObject) pGPPrivateKey.getPrivateKeyDataPacket();
        if (bCPGObject == null) {
            if (z) {
                return new SecretKeyPacket(pGPPublicKey.publicPk, 0, null, null, new byte[0]);
            }
            return new SecretSubkeyPacket(pGPPublicKey.publicPk, 0, null, null, new byte[0]);
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            BCPGOutputStream bCPGOutputStream = new BCPGOutputStream(byteArrayOutputStream);
            bCPGOutputStream.writeObject(bCPGObject);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bCPGOutputStream.write(checksum(pGPDigestCalculator, byteArray, byteArray.length));
            int algorithm = pBESecretKeyEncryptor != null ? pBESecretKeyEncryptor.getAlgorithm() : 0;
            if (algorithm == 0) {
                if (z) {
                    return new SecretKeyPacket(pGPPublicKey.publicPk, algorithm, null, null, byteArrayOutputStream.toByteArray());
                }
                return new SecretSubkeyPacket(pGPPublicKey.publicPk, algorithm, null, null, byteArrayOutputStream.toByteArray());
            }
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            byte[] bArrEncryptKeyData = pBESecretKeyEncryptor.encryptKeyData(byteArray2, 0, byteArray2.length);
            byte[] cipherIV = pBESecretKeyEncryptor.getCipherIV();
            S2K s2k = pBESecretKeyEncryptor.getS2K();
            if (pGPDigestCalculator == null) {
                i = 255;
            } else {
                if (pGPDigestCalculator.getAlgorithm() != 2) {
                    throw new PGPException("only SHA1 supported for key checksum calculations.");
                }
                i = SecretKeyPacket.USAGE_SHA1;
            }
            if (z) {
                return new SecretKeyPacket(pGPPublicKey.publicPk, algorithm, i, s2k, cipherIV, bArrEncryptKeyData);
            }
            return new SecretSubkeyPacket(pGPPublicKey.publicPk, algorithm, i, s2k, cipherIV, bArrEncryptKeyData);
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("Exception encrypting key", e2);
        }
    }

    public PGPSecretKey(int i, PGPKeyPair pGPKeyPair, String str, PGPSignatureSubpacketVector pGPSignatureSubpacketVector, PGPSignatureSubpacketVector pGPSignatureSubpacketVector2, PGPContentSignerBuilder pGPContentSignerBuilder, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        this(i, pGPKeyPair, str, null, pGPSignatureSubpacketVector, pGPSignatureSubpacketVector2, pGPContentSignerBuilder, pBESecretKeyEncryptor);
    }

    public PGPSecretKey(int i, PGPKeyPair pGPKeyPair, String str, PGPDigestCalculator pGPDigestCalculator, PGPSignatureSubpacketVector pGPSignatureSubpacketVector, PGPSignatureSubpacketVector pGPSignatureSubpacketVector2, PGPContentSignerBuilder pGPContentSignerBuilder, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        this(pGPKeyPair.getPrivateKey(), certifiedPublicKey(i, pGPKeyPair, str, pGPSignatureSubpacketVector, pGPSignatureSubpacketVector2, pGPContentSignerBuilder), pGPDigestCalculator, true, pBESecretKeyEncryptor);
    }

    private static PGPPublicKey certifiedPublicKey(int i, PGPKeyPair pGPKeyPair, String str, PGPSignatureSubpacketVector pGPSignatureSubpacketVector, PGPSignatureSubpacketVector pGPSignatureSubpacketVector2, PGPContentSignerBuilder pGPContentSignerBuilder) throws PGPException {
        try {
            PGPSignatureGenerator pGPSignatureGenerator = new PGPSignatureGenerator(pGPContentSignerBuilder);
            pGPSignatureGenerator.init(i, pGPKeyPair.getPrivateKey());
            pGPSignatureGenerator.setHashedSubpackets(pGPSignatureSubpacketVector);
            pGPSignatureGenerator.setUnhashedSubpackets(pGPSignatureSubpacketVector2);
            try {
                return PGPPublicKey.addCertification(pGPKeyPair.getPublicKey(), str, pGPSignatureGenerator.generateCertification(str, pGPKeyPair.getPublicKey()));
            } catch (Exception e) {
                throw new PGPException("exception doing certification: " + e, e);
            }
        } catch (Exception e2) {
            throw new PGPException("creating signature generator: " + e2, e2);
        }
    }

    public boolean isSigningKey() {
        int algorithm = this.pub.getAlgorithm();
        return algorithm == 1 || algorithm == 3 || algorithm == 17 || algorithm == 19 || algorithm == 20;
    }

    public boolean isMasterKey() {
        return this.pub.isMasterKey();
    }

    public boolean isPrivateKeyEmpty() {
        byte[] secretKeyData = this.secret.getSecretKeyData();
        return secretKeyData == null || secretKeyData.length < 1;
    }

    public int getKeyEncryptionAlgorithm() {
        return this.secret.getEncAlgorithm();
    }

    public long getKeyID() {
        return this.pub.getKeyID();
    }

    public int getS2KUsage() {
        return this.secret.getS2KUsage();
    }

    public S2K getS2K() {
        return this.secret.getS2K();
    }

    public PGPPublicKey getPublicKey() {
        return this.pub;
    }

    public Iterator getUserIDs() {
        return this.pub.getUserIDs();
    }

    public Iterator getUserAttributes() {
        return this.pub.getUserAttributes();
    }

    private byte[] extractKeyData(PBESecretKeyDecryptor pBESecretKeyDecryptor) throws PGPException {
        int i;
        byte[] secretKeyData = this.secret.getSecretKeyData();
        if (this.secret.getEncAlgorithm() == 0) {
            return secretKeyData;
        }
        try {
            int i2 = 0;
            if (this.secret.getPublicKeyPacket().getVersion() == 4) {
                byte[] bArrRecoverKeyData = pBESecretKeyDecryptor.recoverKeyData(this.secret.getEncAlgorithm(), pBESecretKeyDecryptor.makeKeyFromPassPhrase(this.secret.getEncAlgorithm(), this.secret.getS2K()), this.secret.getIV(), secretKeyData, 0, secretKeyData.length);
                boolean z = this.secret.getS2KUsage() == 254;
                byte[] bArrChecksum = checksum(z ? pBESecretKeyDecryptor.getChecksumCalculator(2) : null, bArrRecoverKeyData, z ? bArrRecoverKeyData.length - 20 : bArrRecoverKeyData.length - 2);
                while (i2 != bArrChecksum.length) {
                    if (bArrChecksum[i2] != bArrRecoverKeyData[(bArrRecoverKeyData.length - bArrChecksum.length) + i2]) {
                        throw new PGPException("checksum mismatch at " + i2 + " of " + bArrChecksum.length);
                    }
                    i2++;
                }
                return bArrRecoverKeyData;
            }
            byte[] bArrMakeKeyFromPassPhrase = pBESecretKeyDecryptor.makeKeyFromPassPhrase(this.secret.getEncAlgorithm(), this.secret.getS2K());
            int length = secretKeyData.length;
            byte[] bArr = new byte[length];
            int length2 = this.secret.getIV().length;
            byte[] bArr2 = new byte[length2];
            System.arraycopy(this.secret.getIV(), 0, bArr2, 0, length2);
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 4; i3 != i5; i5 = 4) {
                int i6 = i4 + 1;
                int i7 = (((secretKeyData[i4] << 8) | (secretKeyData[i6] & 255)) + 7) / 8;
                bArr[i4] = secretKeyData[i4];
                bArr[i6] = secretKeyData[i6];
                int i8 = i4 + 2;
                int i9 = i3;
                byte[] bArr3 = bArr2;
                int i10 = length2;
                byte[] bArrRecoverKeyData2 = pBESecretKeyDecryptor.recoverKeyData(this.secret.getEncAlgorithm(), bArrMakeKeyFromPassPhrase, bArr2, secretKeyData, i8, i7);
                System.arraycopy(bArrRecoverKeyData2, 0, bArr, i8, bArrRecoverKeyData2.length);
                i4 += i7 + 2;
                if (i9 != 3) {
                    i = i10;
                    System.arraycopy(secretKeyData, i4 - i, bArr3, 0, i);
                } else {
                    i = i10;
                }
                i3 = i9 + 1;
                length2 = i;
                bArr2 = bArr3;
            }
            bArr[i4] = secretKeyData[i4];
            int i11 = i4 + 1;
            bArr[i11] = secretKeyData[i11];
            int i12 = (secretKeyData[i11] & 255) | ((secretKeyData[i4] << 8) & 65280);
            int i13 = 0;
            while (i2 < length - 2) {
                i13 += bArr[i2] & 255;
                i2++;
            }
            int i14 = i13 & 65535;
            if (i14 == i12) {
                return bArr;
            }
            throw new PGPException("checksum mismatch: passphrase wrong, expected " + Integer.toHexString(i12) + " found " + Integer.toHexString(i14));
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("Exception decrypting key", e2);
        }
    }

    public PGPPrivateKey extractPrivateKey(PBESecretKeyDecryptor pBESecretKeyDecryptor) throws PGPException {
        if (isPrivateKeyEmpty()) {
            return null;
        }
        PublicKeyPacket publicKeyPacket = this.secret.getPublicKeyPacket();
        try {
            BCPGInputStream bCPGInputStream = new BCPGInputStream(new ByteArrayInputStream(extractKeyData(pBESecretKeyDecryptor)));
            int algorithm = publicKeyPacket.getAlgorithm();
            if (algorithm == 1 || algorithm == 2 || algorithm == 3) {
                return new PGPPrivateKey(getKeyID(), publicKeyPacket, new RSASecretBCPGKey(bCPGInputStream));
            }
            switch (algorithm) {
                case 16:
                case 20:
                    return new PGPPrivateKey(getKeyID(), publicKeyPacket, new ElGamalSecretBCPGKey(bCPGInputStream));
                case 17:
                    return new PGPPrivateKey(getKeyID(), publicKeyPacket, new DSASecretBCPGKey(bCPGInputStream));
                case 18:
                case 19:
                    return new PGPPrivateKey(getKeyID(), publicKeyPacket, new ECSecretBCPGKey(bCPGInputStream));
                default:
                    throw new PGPException("unknown public key algorithm encountered");
            }
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("Exception constructing key", e2);
        }
    }

    private static byte[] checksum(PGPDigestCalculator pGPDigestCalculator, byte[] bArr, int i) throws PGPException {
        if (pGPDigestCalculator == null) {
            int i2 = 0;
            for (int i3 = 0; i3 != i; i3++) {
                i2 += bArr[i3] & 255;
            }
            return new byte[]{(byte) (i2 >> 8), (byte) i2};
        }
        OutputStream outputStream = pGPDigestCalculator.getOutputStream();
        try {
            outputStream.write(bArr, 0, i);
            outputStream.close();
            return pGPDigestCalculator.getDigest();
        } catch (Exception e) {
            throw new PGPException("checksum digest calculation failed: " + e.getMessage(), e);
        }
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        encode(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public void encode(OutputStream outputStream) throws IOException {
        BCPGOutputStream bCPGOutputStream;
        if (outputStream instanceof BCPGOutputStream) {
            bCPGOutputStream = (BCPGOutputStream) outputStream;
        } else {
            bCPGOutputStream = new BCPGOutputStream(outputStream);
        }
        bCPGOutputStream.writePacket(this.secret);
        if (this.pub.trustPk != null) {
            bCPGOutputStream.writePacket(this.pub.trustPk);
        }
        if (this.pub.subSigs == null) {
            for (int i = 0; i != this.pub.keySigs.size(); i++) {
                ((PGPSignature) this.pub.keySigs.get(i)).encode(bCPGOutputStream);
            }
            for (int i2 = 0; i2 != this.pub.ids.size(); i2++) {
                if (this.pub.ids.get(i2) instanceof UserIDPacket) {
                    bCPGOutputStream.writePacket((UserIDPacket) this.pub.ids.get(i2));
                } else {
                    bCPGOutputStream.writePacket(new UserAttributePacket(((PGPUserAttributeSubpacketVector) this.pub.ids.get(i2)).toSubpacketArray()));
                }
                if (this.pub.idTrusts.get(i2) != null) {
                    bCPGOutputStream.writePacket((ContainedPacket) this.pub.idTrusts.get(i2));
                }
                ArrayList arrayList = (ArrayList) this.pub.idSigs.get(i2);
                for (int i3 = 0; i3 != arrayList.size(); i3++) {
                    ((PGPSignature) arrayList.get(i3)).encode(bCPGOutputStream);
                }
            }
            return;
        }
        for (int i4 = 0; i4 != this.pub.subSigs.size(); i4++) {
            ((PGPSignature) this.pub.subSigs.get(i4)).encode(bCPGOutputStream);
        }
    }

    public static PGPSecretKey copyWithNewPassword(PGPSecretKey pGPSecretKey, PBESecretKeyDecryptor pBESecretKeyDecryptor, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        S2K s2k;
        byte[] bArr;
        byte[] bArr2;
        int algorithm;
        int i;
        SecretKeyPacket secretKeyPacket;
        int i2;
        int i3;
        byte[] bArrEncryptKeyData;
        if (pGPSecretKey.isPrivateKeyEmpty()) {
            throw new PGPException("no private key in this SecretKey - public key present only.");
        }
        byte[] bArrExtractKeyData = pGPSecretKey.extractKeyData(pBESecretKeyDecryptor);
        int s2KUsage = pGPSecretKey.secret.getS2KUsage();
        if (pBESecretKeyEncryptor == null || pBESecretKeyEncryptor.getAlgorithm() == 0) {
            if (pGPSecretKey.secret.getS2KUsage() == 254) {
                int length = bArrExtractKeyData.length - 18;
                byte[] bArr3 = new byte[length];
                int i4 = length - 2;
                System.arraycopy(bArrExtractKeyData, 0, bArr3, 0, i4);
                byte[] bArrChecksum = checksum(null, bArr3, i4);
                bArr3[i4] = bArrChecksum[0];
                bArr3[length - 1] = bArrChecksum[1];
                s2k = null;
                bArr = null;
                bArr2 = bArr3;
            } else {
                s2k = null;
                bArr = null;
                bArr2 = bArrExtractKeyData;
            }
            algorithm = 0;
            i = 0;
        } else {
            int i5 = s2KUsage == 0 ? 255 : s2KUsage;
            if (pGPSecretKey.secret.getPublicKeyPacket().getVersion() < 4) {
                byte[] key = pBESecretKeyEncryptor.getKey();
                byte[] bArr4 = new byte[bArrExtractKeyData.length];
                if (pBESecretKeyEncryptor.getHashAlgorithm() != 1) {
                    throw new PGPException("MD5 Digest Calculator required for version 3 key encryptor.");
                }
                byte[] cipherIV = null;
                int i6 = 0;
                int i7 = 0;
                while (i6 != 4) {
                    int i8 = i7 + 1;
                    int i9 = (((bArrExtractKeyData[i7] << 8) | (bArrExtractKeyData[i8] & 255)) + 7) / 8;
                    bArr4[i7] = bArrExtractKeyData[i7];
                    bArr4[i8] = bArrExtractKeyData[i8];
                    if (i6 == 0) {
                        bArrEncryptKeyData = pBESecretKeyEncryptor.encryptKeyData(key, bArrExtractKeyData, i7 + 2, i9);
                        cipherIV = pBESecretKeyEncryptor.getCipherIV();
                        i2 = i9;
                        i3 = i6;
                    } else {
                        int length2 = cipherIV.length;
                        byte[] bArr5 = new byte[length2];
                        System.arraycopy(bArr4, i7 - cipherIV.length, bArr5, 0, length2);
                        i2 = i9;
                        i3 = i6;
                        bArrEncryptKeyData = pBESecretKeyEncryptor.encryptKeyData(key, bArr5, bArrExtractKeyData, i7 + 2, i2);
                        cipherIV = cipherIV;
                    }
                    System.arraycopy(bArrEncryptKeyData, 0, bArr4, i7 + 2, bArrEncryptKeyData.length);
                    i7 += i2 + 2;
                    i6 = i3 + 1;
                }
                bArr4[i7] = bArrExtractKeyData[i7];
                int i10 = i7 + 1;
                bArr4[i10] = bArrExtractKeyData[i10];
                S2K s2k2 = pBESecretKeyEncryptor.getS2K();
                algorithm = pBESecretKeyEncryptor.getAlgorithm();
                i = i5;
                bArr = cipherIV;
                bArr2 = bArr4;
                s2k = s2k2;
            } else {
                byte[] bArrEncryptKeyData2 = pBESecretKeyEncryptor.encryptKeyData(bArrExtractKeyData, 0, bArrExtractKeyData.length);
                byte[] cipherIV2 = pBESecretKeyEncryptor.getCipherIV();
                s2k = pBESecretKeyEncryptor.getS2K();
                bArr = cipherIV2;
                bArr2 = bArrEncryptKeyData2;
                algorithm = pBESecretKeyEncryptor.getAlgorithm();
                i = i5;
            }
        }
        SecretKeyPacket secretKeyPacket2 = pGPSecretKey.secret;
        if (secretKeyPacket2 instanceof SecretSubkeyPacket) {
            secretKeyPacket = new SecretSubkeyPacket(secretKeyPacket2.getPublicKeyPacket(), algorithm, i, s2k, bArr, bArr2);
        } else {
            secretKeyPacket = new SecretKeyPacket(secretKeyPacket2.getPublicKeyPacket(), algorithm, i, s2k, bArr, bArr2);
        }
        return new PGPSecretKey(secretKeyPacket, pGPSecretKey.pub);
    }

    public static PGPSecretKey replacePublicKey(PGPSecretKey pGPSecretKey, PGPPublicKey pGPPublicKey) {
        if (pGPPublicKey.getKeyID() != pGPSecretKey.getKeyID()) {
            throw new IllegalArgumentException("keyIDs do not match");
        }
        return new PGPSecretKey(pGPSecretKey.secret, pGPPublicKey);
    }

    public static PGPSecretKey parseSecretKeyFromSExpr(InputStream inputStream, PBEProtectionRemoverFactory pBEProtectionRemoverFactory, PGPPublicKey pGPPublicKey) throws PGPException, IOException {
        SXprUtils.skipOpenParenthesis(inputStream);
        if (SXprUtils.readString(inputStream, inputStream.read()).equals("protected-private-key")) {
            SXprUtils.skipOpenParenthesis(inputStream);
            if (SXprUtils.readString(inputStream, inputStream.read()).equals("ecc")) {
                SXprUtils.skipOpenParenthesis(inputStream);
                SXprUtils.readString(inputStream, inputStream.read());
                String string = SXprUtils.readString(inputStream, inputStream.read());
                SXprUtils.skipCloseParenthesis(inputStream);
                SXprUtils.skipOpenParenthesis(inputStream);
                if (SXprUtils.readString(inputStream, inputStream.read()).equals("q")) {
                    SXprUtils.readBytes(inputStream, inputStream.read());
                    SXprUtils.skipCloseParenthesis(inputStream);
                    return new PGPSecretKey(new SecretKeyPacket(pGPPublicKey.getPublicKeyPacket(), 0, null, null, new ECSecretBCPGKey(new BigInteger(1, getDValue(inputStream, pBEProtectionRemoverFactory, string))).getEncoded()), pGPPublicKey);
                }
                throw new PGPException("no q value found");
            }
            throw new PGPException("no curve details found");
        }
        throw new PGPException("unknown key type found");
    }

    public static PGPSecretKey parseSecretKeyFromSExpr(InputStream inputStream, PBEProtectionRemoverFactory pBEProtectionRemoverFactory, KeyFingerPrintCalculator keyFingerPrintCalculator) throws PGPException, IOException {
        SXprUtils.skipOpenParenthesis(inputStream);
        if (SXprUtils.readString(inputStream, inputStream.read()).equals("protected-private-key")) {
            SXprUtils.skipOpenParenthesis(inputStream);
            if (SXprUtils.readString(inputStream, inputStream.read()).equals("ecc")) {
                SXprUtils.skipOpenParenthesis(inputStream);
                SXprUtils.readString(inputStream, inputStream.read());
                String string = SXprUtils.readString(inputStream, inputStream.read());
                if (string.startsWith("NIST ")) {
                    string = string.substring(5);
                }
                SXprUtils.skipCloseParenthesis(inputStream);
                SXprUtils.skipOpenParenthesis(inputStream);
                if (SXprUtils.readString(inputStream, inputStream.read()).equals("q")) {
                    PublicKeyPacket publicKeyPacket = new PublicKeyPacket(19, new Date(), new ECDSAPublicBCPGKey(ECNamedCurveTable.getOID(string), new BigInteger(1, SXprUtils.readBytes(inputStream, inputStream.read()))));
                    SXprUtils.skipCloseParenthesis(inputStream);
                    return new PGPSecretKey(new SecretKeyPacket(publicKeyPacket, 0, null, null, new ECSecretBCPGKey(new BigInteger(1, getDValue(inputStream, pBEProtectionRemoverFactory, string))).getEncoded()), new PGPPublicKey(publicKeyPacket, keyFingerPrintCalculator));
                }
                throw new PGPException("no q value found");
            }
            throw new PGPException("no curve details found");
        }
        throw new PGPException("unknown key type found");
    }

    private static byte[] getDValue(InputStream inputStream, PBEProtectionRemoverFactory pBEProtectionRemoverFactory, String str) throws PGPException, IOException {
        SXprUtils.skipOpenParenthesis(inputStream);
        if (SXprUtils.readString(inputStream, inputStream.read()).equals("protected")) {
            String string = SXprUtils.readString(inputStream, inputStream.read());
            SXprUtils.skipOpenParenthesis(inputStream);
            S2K s2k = SXprUtils.parseS2K(inputStream);
            byte[] bytes = SXprUtils.readBytes(inputStream, inputStream.read());
            SXprUtils.skipCloseParenthesis(inputStream);
            byte[] bytes2 = SXprUtils.readBytes(inputStream, inputStream.read());
            PBESecretKeyDecryptor pBESecretKeyDecryptorCreateDecryptor = pBEProtectionRemoverFactory.createDecryptor(string);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(pBESecretKeyDecryptorCreateDecryptor.recoverKeyData(7, pBESecretKeyDecryptorCreateDecryptor.makeKeyFromPassPhrase(7, s2k), bytes, bytes2, 0, bytes2.length));
            SXprUtils.skipOpenParenthesis(byteArrayInputStream);
            SXprUtils.skipOpenParenthesis(byteArrayInputStream);
            SXprUtils.skipOpenParenthesis(byteArrayInputStream);
            SXprUtils.readString(byteArrayInputStream, byteArrayInputStream.read());
            return SXprUtils.readBytes(byteArrayInputStream, byteArrayInputStream.read());
        }
        throw new PGPException("protected block not found");
    }
}
