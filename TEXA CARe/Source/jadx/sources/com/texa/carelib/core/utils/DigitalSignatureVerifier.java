package com.texa.carelib.core.utils;

import android.util.Base64;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.FileUtils;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class DigitalSignatureVerifier {
    private static final String TAG = "DigitalSignatureVerifier";

    public boolean verify(String str, PublicKey publicKey, InputStream inputStream, File file) throws FileNotFoundException {
        return verify(str, publicKey, inputStream, FileUtils.readAllBytes(file));
    }

    public boolean verify(String str, PublicKey publicKey, InputStream inputStream, byte[] bArr) {
        try {
            Signature signature = Signature.getInstance(str);
            signature.initVerify(publicKey);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            byte[] bArr2 = new byte[1024];
            while (bufferedInputStream.available() != 0) {
                signature.update(bArr2, 0, bufferedInputStream.read(bArr2));
            }
            bufferedInputStream.close();
            return signature.verify(bArr);
        } catch (Exception e) {
            CareLog.e(TAG, e, "Digital signature verification has failed.", new Object[0]);
            return false;
        }
    }

    public boolean verify(String str, PublicKey publicKey, byte[] bArr, byte[] bArr2) {
        return verify(str, publicKey, new ByteArrayInputStream(bArr), bArr2);
    }

    public static PrivateKey createPrivateKey(String str, String str2) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return createPrivateKey(str, Base64.decode(str2, 0));
    }

    public static PrivateKey createPrivateKey(String str, byte[] bArr) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return KeyFactory.getInstance(str).generatePrivate(new PKCS8EncodedKeySpec(bArr));
    }

    public static PublicKey createPublicKey(String str, String str2) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return createPublicKey(str, Base64.decode(str2, 0));
    }

    public static PublicKey createPublicKey(String str, byte[] bArr) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(bArr));
    }
}
