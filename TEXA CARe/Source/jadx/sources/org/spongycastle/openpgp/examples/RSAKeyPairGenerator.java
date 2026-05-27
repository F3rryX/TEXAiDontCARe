package org.spongycastle.openpgp.examples;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchProviderException;
import java.security.Security;
import java.security.SignatureException;
import java.util.Date;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPSecretKey;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPDigestCalculatorProviderBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPKeyPair;
import org.spongycastle.openpgp.operator.jcajce.JcePBESecretKeyEncryptorBuilder;

/* JADX INFO: loaded from: classes3.dex */
public class RSAKeyPairGenerator {
    private static void exportKeyPair(OutputStream outputStream, OutputStream outputStream2, KeyPair keyPair, String str, char[] cArr, boolean z) throws PGPException, SignatureException, IOException, InvalidKeyException, NoSuchProviderException {
        OutputStream armoredOutputStream = z ? new ArmoredOutputStream(outputStream) : outputStream;
        PGPDigestCalculator pGPDigestCalculator = new JcaPGPDigestCalculatorProviderBuilder().build().get(2);
        JcaPGPKeyPair jcaPGPKeyPair = new JcaPGPKeyPair(1, keyPair, new Date());
        PGPSecretKey pGPSecretKey = new PGPSecretKey(16, jcaPGPKeyPair, str, pGPDigestCalculator, null, null, new JcaPGPContentSignerBuilder(jcaPGPKeyPair.getPublicKey().getAlgorithm(), 2), new JcePBESecretKeyEncryptorBuilder(3, pGPDigestCalculator).setProvider(BouncyCastleProvider.PROVIDER_NAME).build(cArr));
        pGPSecretKey.encode(armoredOutputStream);
        armoredOutputStream.close();
        OutputStream armoredOutputStream2 = z ? new ArmoredOutputStream(outputStream2) : outputStream2;
        pGPSecretKey.getPublicKey().encode(armoredOutputStream2);
        armoredOutputStream2.close();
    }

    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", BouncyCastleProvider.PROVIDER_NAME);
        keyPairGenerator.initialize(1024);
        KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
        if (strArr.length < 2) {
            System.out.println("RSAKeyPairGenerator [-a] identity passPhrase");
            System.exit(0);
        }
        if (strArr[0].equals("-a")) {
            if (strArr.length < 3) {
                System.out.println("RSAKeyPairGenerator [-a] identity passPhrase");
                System.exit(0);
            }
            exportKeyPair(new FileOutputStream("secret.asc"), new FileOutputStream("pub.asc"), keyPairGenerateKeyPair, strArr[1], strArr[2].toCharArray(), true);
            return;
        }
        exportKeyPair(new FileOutputStream("secret.bpg"), new FileOutputStream("pub.bpg"), keyPairGenerateKeyPair, strArr[0], strArr[1].toCharArray(), false);
    }
}
