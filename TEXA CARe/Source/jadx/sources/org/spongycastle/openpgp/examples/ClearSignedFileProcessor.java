package org.spongycastle.openpgp.examples;

import com.texa.carelib.care.datamanagerconfiguration.DataManagerParameterID;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Security;
import java.security.SignatureException;
import java.util.Iterator;
import org.spongycastle.bcpg.ArmoredInputStream;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKeyRingCollection;
import org.spongycastle.openpgp.PGPSecretKey;
import org.spongycastle.openpgp.PGPSignature;
import org.spongycastle.openpgp.PGPSignatureGenerator;
import org.spongycastle.openpgp.PGPSignatureList;
import org.spongycastle.openpgp.PGPSignatureSubpacketGenerator;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.jcajce.JcaPGPObjectFactory;
import org.spongycastle.openpgp.operator.jcajce.JcaKeyFingerprintCalculator;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPContentVerifierBuilderProvider;
import org.spongycastle.openpgp.operator.jcajce.JcePBESecretKeyDecryptorBuilder;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes3.dex */
public class ClearSignedFileProcessor {
    private static boolean isLineEnding(byte b) {
        return b == 13 || b == 10;
    }

    private static int readInputLine(ByteArrayOutputStream byteArrayOutputStream, InputStream inputStream) throws IOException {
        int i;
        byteArrayOutputStream.reset();
        do {
            i = inputStream.read();
            if (i < 0) {
                return -1;
            }
            byteArrayOutputStream.write(i);
            if (i == 13) {
                break;
            }
        } while (i != 10);
        return readPassedEOL(byteArrayOutputStream, i, inputStream);
    }

    private static int readInputLine(ByteArrayOutputStream byteArrayOutputStream, int i, InputStream inputStream) throws IOException {
        byteArrayOutputStream.reset();
        int i2 = i;
        do {
            byteArrayOutputStream.write(i2);
            if (i2 == 13 || i2 == 10) {
                i = readPassedEOL(byteArrayOutputStream, i2, inputStream);
                break;
            }
            i2 = inputStream.read();
        } while (i2 >= 0);
        if (i2 < 0) {
            return -1;
        }
        return i;
    }

    private static int readPassedEOL(ByteArrayOutputStream byteArrayOutputStream, int i, InputStream inputStream) throws IOException {
        int i2 = inputStream.read();
        if (i != 13 || i2 != 10) {
            return i2;
        }
        byteArrayOutputStream.write(i2);
        return inputStream.read();
    }

    private static void verifyFile(InputStream inputStream, InputStream inputStream2, String str) throws Exception {
        ArmoredInputStream armoredInputStream = new ArmoredInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int inputLine = readInputLine(byteArrayOutputStream, armoredInputStream);
        byte[] lineSeparator = getLineSeparator();
        if (inputLine != -1 && armoredInputStream.isClearText()) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bufferedOutputStream.write(byteArray, 0, getLengthWithoutSeparatorOrTrailingWhitespace(byteArray));
            bufferedOutputStream.write(lineSeparator);
            while (inputLine != -1 && armoredInputStream.isClearText()) {
                inputLine = readInputLine(byteArrayOutputStream, inputLine, armoredInputStream);
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                bufferedOutputStream.write(byteArray2, 0, getLengthWithoutSeparatorOrTrailingWhitespace(byteArray2));
                bufferedOutputStream.write(lineSeparator);
            }
        } else if (inputLine != -1) {
            byte[] byteArray3 = byteArrayOutputStream.toByteArray();
            bufferedOutputStream.write(byteArray3, 0, getLengthWithoutSeparatorOrTrailingWhitespace(byteArray3));
            bufferedOutputStream.write(lineSeparator);
        }
        bufferedOutputStream.close();
        PGPPublicKeyRingCollection pGPPublicKeyRingCollection = new PGPPublicKeyRingCollection(inputStream2, new JcaKeyFingerprintCalculator());
        PGPSignature pGPSignature = ((PGPSignatureList) new JcaPGPObjectFactory(armoredInputStream).nextObject()).get(0);
        pGPSignature.init(new JcaPGPContentVerifierBuilderProvider().setProvider(BouncyCastleProvider.PROVIDER_NAME), pGPPublicKeyRingCollection.getPublicKey(pGPSignature.getKeyID()));
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        int inputLine2 = readInputLine(byteArrayOutputStream, bufferedInputStream);
        processLine(pGPSignature, byteArrayOutputStream.toByteArray());
        if (inputLine2 != -1) {
            do {
                inputLine2 = readInputLine(byteArrayOutputStream, inputLine2, bufferedInputStream);
                pGPSignature.update(DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD);
                pGPSignature.update((byte) 10);
                processLine(pGPSignature, byteArrayOutputStream.toByteArray());
            } while (inputLine2 != -1);
        }
        bufferedInputStream.close();
        if (pGPSignature.verify()) {
            System.out.println("signature verified.");
        } else {
            System.out.println("signature verification failed.");
        }
    }

    private static byte[] getLineSeparator() {
        String strLineSeparator = Strings.lineSeparator();
        int length = strLineSeparator.length();
        byte[] bArr = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr[i] = (byte) strLineSeparator.charAt(i);
        }
        return bArr;
    }

    private static void signFile(String str, InputStream inputStream, OutputStream outputStream, char[] cArr, String str2) throws PGPException, SignatureException, NoSuchAlgorithmException, IOException, NoSuchProviderException {
        int i;
        if (str2.equals("SHA256")) {
            i = 8;
        } else if (str2.equals("SHA384")) {
            i = 9;
        } else if (str2.equals("SHA512")) {
            i = 10;
        } else if (str2.equals("MD5")) {
            i = 1;
        } else {
            i = str2.equals("RIPEMD160") ? 3 : 2;
        }
        PGPSecretKey secretKey = PGPExampleUtil.readSecretKey(inputStream);
        PGPPrivateKey pGPPrivateKeyExtractPrivateKey = secretKey.extractPrivateKey(new JcePBESecretKeyDecryptorBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build(cArr));
        PGPSignatureGenerator pGPSignatureGenerator = new PGPSignatureGenerator(new JcaPGPContentSignerBuilder(secretKey.getPublicKey().getAlgorithm(), i).setProvider(BouncyCastleProvider.PROVIDER_NAME));
        PGPSignatureSubpacketGenerator pGPSignatureSubpacketGenerator = new PGPSignatureSubpacketGenerator();
        pGPSignatureGenerator.init(1, pGPPrivateKeyExtractPrivateKey);
        Iterator userIDs = secretKey.getPublicKey().getUserIDs();
        if (userIDs.hasNext()) {
            pGPSignatureSubpacketGenerator.setSignerUserID(false, (String) userIDs.next());
            pGPSignatureGenerator.setHashedSubpackets(pGPSignatureSubpacketGenerator.generate());
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        ArmoredOutputStream armoredOutputStream = new ArmoredOutputStream(outputStream);
        armoredOutputStream.beginClearText(i);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int inputLine = readInputLine(byteArrayOutputStream, bufferedInputStream);
        processLine(armoredOutputStream, pGPSignatureGenerator, byteArrayOutputStream.toByteArray());
        if (inputLine != -1) {
            do {
                inputLine = readInputLine(byteArrayOutputStream, inputLine, bufferedInputStream);
                pGPSignatureGenerator.update(DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD);
                pGPSignatureGenerator.update((byte) 10);
                processLine(armoredOutputStream, pGPSignatureGenerator, byteArrayOutputStream.toByteArray());
            } while (inputLine != -1);
        }
        bufferedInputStream.close();
        armoredOutputStream.endClearText();
        pGPSignatureGenerator.generate().encode(new BCPGOutputStream(armoredOutputStream));
        armoredOutputStream.close();
    }

    private static void processLine(PGPSignature pGPSignature, byte[] bArr) throws SignatureException, IOException {
        int lengthWithoutWhiteSpace = getLengthWithoutWhiteSpace(bArr);
        if (lengthWithoutWhiteSpace > 0) {
            pGPSignature.update(bArr, 0, lengthWithoutWhiteSpace);
        }
    }

    private static void processLine(OutputStream outputStream, PGPSignatureGenerator pGPSignatureGenerator, byte[] bArr) throws SignatureException, IOException {
        int lengthWithoutWhiteSpace = getLengthWithoutWhiteSpace(bArr);
        if (lengthWithoutWhiteSpace > 0) {
            pGPSignatureGenerator.update(bArr, 0, lengthWithoutWhiteSpace);
        }
        outputStream.write(bArr, 0, bArr.length);
    }

    private static int getLengthWithoutSeparatorOrTrailingWhitespace(byte[] bArr) {
        int length = bArr.length - 1;
        while (length >= 0 && isWhiteSpace(bArr[length])) {
            length--;
        }
        return length + 1;
    }

    private static int getLengthWithoutWhiteSpace(byte[] bArr) {
        int length = bArr.length - 1;
        while (length >= 0 && isWhiteSpace(bArr[length])) {
            length--;
        }
        return length + 1;
    }

    private static boolean isWhiteSpace(byte b) {
        return isLineEnding(b) || b == 9 || b == 32;
    }

    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        if (strArr[0].equals("-s")) {
            InputStream decoderStream = PGPUtil.getDecoderStream(new FileInputStream(strArr[2]));
            FileOutputStream fileOutputStream = new FileOutputStream(strArr[1] + ".asc");
            if (strArr.length == 4) {
                signFile(strArr[1], decoderStream, fileOutputStream, strArr[3].toCharArray(), "SHA1");
                return;
            } else {
                signFile(strArr[1], decoderStream, fileOutputStream, strArr[3].toCharArray(), strArr[4]);
                return;
            }
        }
        if (strArr[0].equals("-v")) {
            if (strArr[1].indexOf(".asc") < 0) {
                System.err.println("file needs to end in \".asc\"");
                System.exit(1);
            }
            verifyFile(new FileInputStream(strArr[1]), PGPUtil.getDecoderStream(new FileInputStream(strArr[2])), strArr[1].substring(0, strArr[1].length() - 4));
            return;
        }
        System.err.println("usage: ClearSignedFileProcessor [-s file keyfile passPhrase]|[-v sigFile keyFile]");
    }
}
