package com.texa.careapp.app.activationSosServices;

import android.text.TextUtils;
import android.util.Base64;
import com.android.billingclient.api.Purchase;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class SosInAppBillingUtil {
    public static int BILLING_REQUEST_CODE = 2016;
    public static final String SKU_SUBSCRIPTION_1 = "com.texa.care.sosplus.onemonth.1";
    private static final String SKU_SUBSCRIPTION_2 = "com.texa.care.sosplus.onemonth.2";
    private static final String SKU_SUBSCRIPTION_3 = "com.texa.care.sosplus.onemonth.3";
    private static final String SKU_SUBSCRIPTION_4 = "com.texa.care.sosplus.onemonth.4";
    private static final String SKU_SUBSCRIPTION_5 = "com.texa.care.sosplus.onemonth.5";
    public static String SKU_TEST = "android.test.purchased";
    public static String prefix = "TEXA";
    public static String suffix = "Care";

    public static String getApplicationKey() {
        return "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqGdAU+6M5SlS7sWQQN4mTLbzNXHgmLHFYOVMd72w7CUH8bUeWz3Dxr6V7i5yHCyiHA+1DPabn5ZOxi4XpnUKOE3uQBGuGKREade556OqO7X9kr270Bmx1p+2CAhwdp/N+e/PTfAjRwMbu+SUVgam6iK9ZGuXf4CvgmHfWPVz+ZyjFKnbi/uU4WjaxjnDuHnizt/FbEn8RNZGXvpaWhxWZiBzyGDzW4dOtmJqm4GQl2yUUkHJdBQSyJ6XNbnPl6+QE+hLzazYFzjm6BuooGnYUxSOamPmpSurqwT+fPB5rWxMLqy4OsL46a6IzMz25ugxn7lhQ14/l/Oj5xBZKpQE3wIDAQAB";
    }

    public static List<String> getSkus() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(SKU_SUBSCRIPTION_1);
        arrayList.add(SKU_SUBSCRIPTION_2);
        arrayList.add(SKU_SUBSCRIPTION_3);
        arrayList.add(SKU_SUBSCRIPTION_4);
        arrayList.add(SKU_SUBSCRIPTION_5);
        return arrayList;
    }

    public static boolean verifyDeveloperPayload(Purchase purchase) {
        return verifyPurchase(purchase.getOriginalJson(), purchase.getSignature());
    }

    private static boolean verifyPurchase(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            Timber.w("Purchase verification failed: missing data.", new Object[0]);
            return false;
        }
        try {
            return verify(generatePublicKey(getApplicationKey()), str, str2).booleanValue();
        } catch (IOException e) {
            Timber.e(e, "Error generating PublicKey from encoded key", new Object[0]);
            return false;
        }
    }

    private static PublicKey generatePublicKey(String str) throws IOException {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e2) {
            String str2 = "Invalid key specification: " + e2;
            Timber.w(str2, new Object[0]);
            throw new IOException(str2);
        }
    }

    private static Boolean verify(PublicKey publicKey, String str, String str2) {
        try {
            byte[] bArrDecode = Base64.decode(str2, 0);
            try {
                Signature signature = Signature.getInstance("SHA1withRSA");
                signature.initVerify(publicKey);
                signature.update(str.getBytes());
                if (!signature.verify(bArrDecode)) {
                    Timber.w("Signature verification failed...", new Object[0]);
                    return false;
                }
                return true;
            } catch (InvalidKeyException e) {
                Timber.e(e, "Invalid key specification.", new Object[0]);
                return false;
            } catch (NoSuchAlgorithmException e2) {
                throw new RuntimeException(e2);
            } catch (SignatureException e3) {
                Timber.e(e3, "Signature exception.", new Object[0]);
                return false;
            }
        } catch (IllegalArgumentException unused) {
            Timber.w("Base64 decoding failed.", new Object[0]);
            return false;
        }
    }

    private static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }
}
