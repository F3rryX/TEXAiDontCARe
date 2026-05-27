package org.spongycastle.openpgp.examples;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.Security;
import java.util.Iterator;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPCompressedData;
import org.spongycastle.openpgp.PGPCompressedDataGenerator;
import org.spongycastle.openpgp.PGPEncryptedDataGenerator;
import org.spongycastle.openpgp.PGPEncryptedDataList;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPLiteralData;
import org.spongycastle.openpgp.PGPOnePassSignatureList;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.PGPPublicKeyEncryptedData;
import org.spongycastle.openpgp.PGPSecretKeyRingCollection;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.jcajce.JcaPGPObjectFactory;
import org.spongycastle.openpgp.operator.jcajce.JcaKeyFingerprintCalculator;
import org.spongycastle.openpgp.operator.jcajce.JcePGPDataEncryptorBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePublicKeyDataDecryptorFactoryBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePublicKeyKeyEncryptionMethodGenerator;
import org.spongycastle.util.io.Streams;

/* JADX INFO: loaded from: classes3.dex */
public class KeyBasedLargeFileProcessor {
    private static void decryptFile(String str, String str2, char[] cArr, String str3) throws IOException, NoSuchProviderException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(str2));
        decryptFile(bufferedInputStream, bufferedInputStream2, cArr, str3);
        bufferedInputStream2.close();
        bufferedInputStream.close();
    }

    private static void decryptFile(InputStream inputStream, InputStream inputStream2, char[] cArr, String str) throws IOException, NoSuchProviderException {
        PGPEncryptedDataList pGPEncryptedDataList;
        try {
            JcaPGPObjectFactory jcaPGPObjectFactory = new JcaPGPObjectFactory(PGPUtil.getDecoderStream(inputStream));
            Object objNextObject = jcaPGPObjectFactory.nextObject();
            if (objNextObject instanceof PGPEncryptedDataList) {
                pGPEncryptedDataList = (PGPEncryptedDataList) objNextObject;
            } else {
                pGPEncryptedDataList = (PGPEncryptedDataList) jcaPGPObjectFactory.nextObject();
            }
            Iterator encryptedDataObjects = pGPEncryptedDataList.getEncryptedDataObjects();
            PGPSecretKeyRingCollection pGPSecretKeyRingCollection = new PGPSecretKeyRingCollection(PGPUtil.getDecoderStream(inputStream2), new JcaKeyFingerprintCalculator());
            PGPPrivateKey pGPPrivateKeyFindSecretKey = null;
            PGPPublicKeyEncryptedData pGPPublicKeyEncryptedData = null;
            while (pGPPrivateKeyFindSecretKey == null && encryptedDataObjects.hasNext()) {
                pGPPublicKeyEncryptedData = (PGPPublicKeyEncryptedData) encryptedDataObjects.next();
                pGPPrivateKeyFindSecretKey = PGPExampleUtil.findSecretKey(pGPSecretKeyRingCollection, pGPPublicKeyEncryptedData.getKeyID(), cArr);
            }
            if (pGPPrivateKeyFindSecretKey == null) {
                throw new IllegalArgumentException("secret key for message not found.");
            }
            Object objNextObject2 = new JcaPGPObjectFactory(new BufferedInputStream(((PGPCompressedData) new JcaPGPObjectFactory(pGPPublicKeyEncryptedData.getDataStream(new JcePublicKeyDataDecryptorFactoryBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build(pGPPrivateKeyFindSecretKey))).nextObject()).getDataStream())).nextObject();
            if (objNextObject2 instanceof PGPLiteralData) {
                PGPLiteralData pGPLiteralData = (PGPLiteralData) objNextObject2;
                String fileName = pGPLiteralData.getFileName();
                if (fileName.length() != 0) {
                    str = fileName;
                }
                InputStream inputStream3 = pGPLiteralData.getInputStream();
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
                Streams.pipeAll(inputStream3, bufferedOutputStream);
                bufferedOutputStream.close();
                if (pGPPublicKeyEncryptedData.isIntegrityProtected()) {
                    if (!pGPPublicKeyEncryptedData.verify()) {
                        System.err.println("message failed integrity check");
                        return;
                    } else {
                        System.err.println("message integrity check passed");
                        return;
                    }
                }
                System.err.println("no message integrity check");
                return;
            }
            if (objNextObject2 instanceof PGPOnePassSignatureList) {
                throw new PGPException("encrypted message contains a signed message - not literal data.");
            }
            throw new PGPException("message is not a simple encrypted file - type unknown.");
        } catch (PGPException e) {
            System.err.println(e);
            if (e.getUnderlyingException() != null) {
                e.getUnderlyingException().printStackTrace();
            }
        }
    }

    private static void encryptFile(String str, String str2, String str3, boolean z, boolean z2) throws PGPException, IOException, NoSuchProviderException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
        encryptFile(bufferedOutputStream, str2, PGPExampleUtil.readPublicKey(str3), z, z2);
        bufferedOutputStream.close();
    }

    private static void encryptFile(OutputStream outputStream, String str, PGPPublicKey pGPPublicKey, boolean z, boolean z2) throws IOException, NoSuchProviderException {
        if (z) {
            outputStream = new ArmoredOutputStream(outputStream);
        }
        try {
            PGPEncryptedDataGenerator pGPEncryptedDataGenerator = new PGPEncryptedDataGenerator(new JcePGPDataEncryptorBuilder(3).setWithIntegrityPacket(z2).setSecureRandom(new SecureRandom()).setProvider(BouncyCastleProvider.PROVIDER_NAME));
            pGPEncryptedDataGenerator.addMethod(new JcePublicKeyKeyEncryptionMethodGenerator(pGPPublicKey).setProvider(BouncyCastleProvider.PROVIDER_NAME));
            OutputStream outputStreamOpen = pGPEncryptedDataGenerator.open(outputStream, new byte[65536]);
            PGPCompressedDataGenerator pGPCompressedDataGenerator = new PGPCompressedDataGenerator(1);
            PGPUtil.writeFileToLiteralData(pGPCompressedDataGenerator.open(outputStreamOpen), 'b', new File(str), new byte[65536]);
            pGPCompressedDataGenerator.close();
            outputStreamOpen.close();
            if (z) {
                outputStream.close();
            }
        } catch (PGPException e) {
            System.err.println(e);
            if (e.getUnderlyingException() != null) {
                e.getUnderlyingException().printStackTrace();
            }
        }
    }

    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        if (strArr.length == 0) {
            System.err.println("usage: KeyBasedLargeFileProcessor -e|-d [-a|ai] file [secretKeyFile passPhrase|pubKeyFile]");
            return;
        }
        if (strArr[0].equals("-e")) {
            if (strArr[1].equals("-a") || strArr[1].equals("-ai") || strArr[1].equals("-ia")) {
                encryptFile(strArr[2] + ".asc", strArr[2], strArr[3], true, strArr[1].indexOf(105) > 0);
                return;
            }
            if (strArr[1].equals("-i")) {
                encryptFile(strArr[2] + ".bpg", strArr[2], strArr[3], false, true);
                return;
            }
            encryptFile(strArr[1] + ".bpg", strArr[1], strArr[2], false, false);
            return;
        }
        if (strArr[0].equals("-d")) {
            decryptFile(strArr[1], strArr[2], strArr[3].toCharArray(), new File(strArr[1]).getName() + ".out");
            return;
        }
        System.err.println("usage: KeyBasedLargeFileProcessor -d|-e [-a|ai] file [secretKeyFile passPhrase|pubKeyFile]");
    }
}
