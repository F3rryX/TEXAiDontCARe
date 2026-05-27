package org.spongycastle.openpgp.examples;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.Security;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPCompressedData;
import org.spongycastle.openpgp.PGPEncryptedDataGenerator;
import org.spongycastle.openpgp.PGPEncryptedDataList;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPLiteralData;
import org.spongycastle.openpgp.PGPPBEEncryptedData;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.jcajce.JcaPGPObjectFactory;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPDigestCalculatorProviderBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePBEDataDecryptorFactoryBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePBEKeyEncryptionMethodGenerator;
import org.spongycastle.openpgp.operator.jcajce.JcePGPDataEncryptorBuilder;
import org.spongycastle.util.io.Streams;

/* JADX INFO: loaded from: classes3.dex */
public class PBEFileProcessor {
    private static void decryptFile(String str, char[] cArr) throws PGPException, IOException, NoSuchProviderException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        decryptFile(bufferedInputStream, cArr);
        bufferedInputStream.close();
    }

    private static void decryptFile(InputStream inputStream, char[] cArr) throws PGPException, IOException, NoSuchProviderException {
        PGPEncryptedDataList pGPEncryptedDataList;
        JcaPGPObjectFactory jcaPGPObjectFactory = new JcaPGPObjectFactory(PGPUtil.getDecoderStream(inputStream));
        Object objNextObject = jcaPGPObjectFactory.nextObject();
        if (objNextObject instanceof PGPEncryptedDataList) {
            pGPEncryptedDataList = (PGPEncryptedDataList) objNextObject;
        } else {
            pGPEncryptedDataList = (PGPEncryptedDataList) jcaPGPObjectFactory.nextObject();
        }
        PGPPBEEncryptedData pGPPBEEncryptedData = (PGPPBEEncryptedData) pGPEncryptedDataList.get(0);
        Object objNextObject2 = new JcaPGPObjectFactory(pGPPBEEncryptedData.getDataStream(new JcePBEDataDecryptorFactoryBuilder(new JcaPGPDigestCalculatorProviderBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build()).setProvider(BouncyCastleProvider.PROVIDER_NAME).build(cArr))).nextObject();
        if (objNextObject2 instanceof PGPCompressedData) {
            objNextObject2 = new JcaPGPObjectFactory(((PGPCompressedData) objNextObject2).getDataStream()).nextObject();
        }
        PGPLiteralData pGPLiteralData = (PGPLiteralData) objNextObject2;
        InputStream inputStream2 = pGPLiteralData.getInputStream();
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(pGPLiteralData.getFileName()));
        Streams.pipeAll(inputStream2, bufferedOutputStream);
        bufferedOutputStream.close();
        if (pGPPBEEncryptedData.isIntegrityProtected()) {
            if (!pGPPBEEncryptedData.verify()) {
                System.err.println("message failed integrity check");
                return;
            } else {
                System.err.println("message integrity check passed");
                return;
            }
        }
        System.err.println("no message integrity check");
    }

    private static void encryptFile(String str, String str2, char[] cArr, boolean z, boolean z2) throws IOException, NoSuchProviderException {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
        encryptFile(bufferedOutputStream, str2, cArr, z, z2);
        bufferedOutputStream.close();
    }

    private static void encryptFile(OutputStream outputStream, String str, char[] cArr, boolean z, boolean z2) throws IOException, NoSuchProviderException {
        if (z) {
            outputStream = new ArmoredOutputStream(outputStream);
        }
        try {
            byte[] bArrCompressFile = PGPExampleUtil.compressFile(str, 1);
            PGPEncryptedDataGenerator pGPEncryptedDataGenerator = new PGPEncryptedDataGenerator(new JcePGPDataEncryptorBuilder(3).setWithIntegrityPacket(z2).setSecureRandom(new SecureRandom()).setProvider(BouncyCastleProvider.PROVIDER_NAME));
            pGPEncryptedDataGenerator.addMethod(new JcePBEKeyEncryptionMethodGenerator(cArr).setProvider(BouncyCastleProvider.PROVIDER_NAME));
            OutputStream outputStreamOpen = pGPEncryptedDataGenerator.open(outputStream, bArrCompressFile.length);
            outputStreamOpen.write(bArrCompressFile);
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
        if (strArr[0].equals("-e")) {
            if (strArr[1].equals("-a") || strArr[1].equals("-ai") || strArr[1].equals("-ia")) {
                encryptFile(strArr[2] + ".asc", strArr[2], strArr[3].toCharArray(), true, strArr[1].indexOf(105) > 0);
                return;
            }
            if (strArr[1].equals("-i")) {
                encryptFile(strArr[2] + ".bpg", strArr[2], strArr[3].toCharArray(), false, true);
                return;
            }
            encryptFile(strArr[1] + ".bpg", strArr[1], strArr[2].toCharArray(), false, false);
            return;
        }
        if (strArr[0].equals("-d")) {
            decryptFile(strArr[1], strArr[2].toCharArray());
        } else {
            System.err.println("usage: PBEFileProcessor -e [-ai]|-d file passPhrase");
        }
    }
}
