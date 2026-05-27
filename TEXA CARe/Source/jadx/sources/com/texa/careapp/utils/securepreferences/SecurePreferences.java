package com.texa.careapp.utils.securepreferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class SecurePreferences implements SharedPreferences {
    private static final String AES_KEY_ALG = "AES";
    private static final String BACKUP_PBE_KEY_ALG = "PBEWithMD5AndDES";
    private static final int ITERATIONS = 2000;
    private static final int KEY_SIZE = 256;
    private static final String PRIMARY_PBE_KEY_ALG = "PBKDF2WithHmacSHA1";
    private static final String PROVIDER = "BC";
    private static final String TAG = "com.texa.careapp.utils.securepreferences.SecurePreferences";
    private static SharedPreferences sFile = null;
    private static byte[] sKey = null;
    private static boolean sLoggingEnabled = false;
    private static HashMap<SharedPreferences.OnSharedPreferenceChangeListener, SharedPreferences.OnSharedPreferenceChangeListener> sOnSharedPreferenceChangeListeners;

    public SecurePreferences(Context context) {
        if (sFile == null) {
            sFile = PreferenceManager.getDefaultSharedPreferences(context);
        }
        try {
            String strGenerateAesKeyName = generateAesKeyName(context);
            String string = sFile.getString(strGenerateAesKeyName, null);
            if (string == null) {
                string = generateAesKeyValue();
                sFile.edit().putString(strGenerateAesKeyName, string).apply();
            }
            sKey = decode(string);
            sOnSharedPreferenceChangeListeners = new HashMap<>(10);
        } catch (Exception e) {
            if (sLoggingEnabled) {
                Log.e(TAG, "Error init:" + e.getMessage());
            }
            throw new IllegalStateException(e);
        }
    }

    private static String encode(byte[] bArr) {
        return Base64.encodeToString(bArr, 3);
    }

    private static byte[] decode(String str) {
        return Base64.decode(str, 3);
    }

    private static String generateAesKeyName(Context context) throws InvalidKeySpecException, NoSuchAlgorithmException, NoSuchProviderException {
        SecretKey secretKeyGeneratePBEKey;
        char[] charArray = context.getPackageName().toCharArray();
        byte[] bytes = getDeviceSerialNumber(context).getBytes();
        try {
            secretKeyGeneratePBEKey = generatePBEKey(charArray, bytes, PRIMARY_PBE_KEY_ALG, 2000, 256);
        } catch (NoSuchAlgorithmException unused) {
            secretKeyGeneratePBEKey = generatePBEKey(charArray, bytes, BACKUP_PBE_KEY_ALG, 2000, 256);
        }
        return encode(secretKeyGeneratePBEKey.getEncoded());
    }

    private static SecretKey generatePBEKey(char[] cArr, byte[] bArr, String str, int i, int i2) throws InvalidKeySpecException, NoSuchAlgorithmException, NoSuchProviderException {
        if (i == 0) {
            i = 1000;
        }
        return SecretKeyFactory.getInstance(str, PROVIDER).generateSecret(new PBEKeySpec(cArr, bArr, i, i2));
    }

    private static String getDeviceSerialNumber(Context context) {
        try {
            String str = (String) Build.class.getField("SERIAL").get(null);
            return TextUtils.isEmpty(str) ? Settings.Secure.getString(context.getContentResolver(), "android_id") : str;
        } catch (Exception unused) {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        }
    }

    private static String generateAesKeyValue() throws NoSuchAlgorithmException {
        SecureRandom secureRandom = new SecureRandom();
        KeyGenerator keyGenerator = KeyGenerator.getInstance(AES_KEY_ALG);
        try {
            keyGenerator.init(256, secureRandom);
        } catch (Exception unused) {
            try {
                keyGenerator.init(192, secureRandom);
            } catch (Exception unused2) {
                keyGenerator.init(128, secureRandom);
            }
        }
        return encode(keyGenerator.generateKey().getEncoded());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String encrypt(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        try {
            Cipher cipher = Cipher.getInstance(AES_KEY_ALG, PROVIDER);
            cipher.init(1, new SecretKeySpec(sKey, AES_KEY_ALG));
            return encode(cipher.doFinal(str.getBytes("UTF-8")));
        } catch (Exception e) {
            if (sLoggingEnabled) {
                Log.w(TAG, "encrypt", e);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String decrypt(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        try {
            Cipher cipher = Cipher.getInstance(AES_KEY_ALG, PROVIDER);
            cipher.init(2, new SecretKeySpec(sKey, AES_KEY_ALG));
            return new String(cipher.doFinal(decode(str)), "UTF-8");
        } catch (Exception e) {
            if (sLoggingEnabled) {
                Log.w(TAG, "decrypt", e);
            }
            return null;
        }
    }

    public static boolean isLoggingEnabled() {
        return sLoggingEnabled;
    }

    public static void setLoggingEnabled(boolean z) {
        sLoggingEnabled = z;
    }

    @Override // android.content.SharedPreferences
    public Map<String, String> getAll() {
        Map<String, ?> all = sFile.getAll();
        HashMap map = new HashMap(all.size());
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            try {
                map.put(decrypt(entry.getKey()), decrypt(entry.getValue().toString()));
            } catch (Exception unused) {
            }
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        String string = sFile.getString(encrypt(str), null);
        return string != null ? decrypt(string) : str2;
    }

    public String getStringUnencrypted(String str, String str2) {
        String string = sFile.getString(encrypt(str), null);
        return string != null ? string : str2;
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        Set<String> stringSet = sFile.getStringSet(encrypt(str), null);
        if (stringSet == null) {
            return set;
        }
        HashSet hashSet = new HashSet(stringSet.size());
        Iterator<String> it = stringSet.iterator();
        while (it.hasNext()) {
            hashSet.add(decrypt(it.next()));
        }
        return hashSet;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        String string = sFile.getString(encrypt(str), null);
        if (string == null) {
            return i;
        }
        try {
            return Integer.parseInt(decrypt(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        String string = sFile.getString(encrypt(str), null);
        if (string == null) {
            return j;
        }
        try {
            return Long.parseLong(decrypt(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        String string = sFile.getString(encrypt(str), null);
        if (string == null) {
            return f;
        }
        try {
            return Float.parseFloat(decrypt(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        String string = sFile.getString(encrypt(str), null);
        if (string == null) {
            return z;
        }
        try {
            return Boolean.parseBoolean(decrypt(string));
        } catch (NumberFormatException e) {
            throw new ClassCastException(e.getMessage());
        }
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return sFile.contains(encrypt(str));
    }

    @Override // android.content.SharedPreferences
    public Editor edit() {
        return new Editor();
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        sFile.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener, boolean z) {
        if (!z) {
            registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
            return;
        }
        SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener2 = new SharedPreferences.OnSharedPreferenceChangeListener(onSharedPreferenceChangeListener) { // from class: com.texa.careapp.utils.securepreferences.SecurePreferences.1
            private SharedPreferences.OnSharedPreferenceChangeListener mInsecureListener;
            final /* synthetic */ SharedPreferences.OnSharedPreferenceChangeListener val$listener;

            {
                this.val$listener = onSharedPreferenceChangeListener;
                this.mInsecureListener = onSharedPreferenceChangeListener;
            }

            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                try {
                    String strDecrypt = SecurePreferences.decrypt(str);
                    if (strDecrypt != null) {
                        this.mInsecureListener.onSharedPreferenceChanged(sharedPreferences, strDecrypt);
                    }
                } catch (Exception unused) {
                    Log.w(SecurePreferences.TAG, "Unable to decrypt key: " + str);
                }
            }
        };
        sOnSharedPreferenceChangeListeners.put(onSharedPreferenceChangeListener, onSharedPreferenceChangeListener2);
        sFile.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener2);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        if (sOnSharedPreferenceChangeListeners.containsKey(onSharedPreferenceChangeListener)) {
            sFile.unregisterOnSharedPreferenceChangeListener(sOnSharedPreferenceChangeListeners.remove(onSharedPreferenceChangeListener));
        } else {
            sFile.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        }
    }

    public static class Editor implements SharedPreferences.Editor {
        private SharedPreferences.Editor mEditor;

        private Editor() {
            this.mEditor = SecurePreferences.sFile.edit();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            this.mEditor.putString(SecurePreferences.encrypt(str), SecurePreferences.encrypt(str2));
            return this;
        }

        public SharedPreferences.Editor putStringNoEncrypted(String str, String str2) {
            this.mEditor.putString(SecurePreferences.encrypt(str), str2);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            HashSet hashSet = new HashSet(set.size());
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                hashSet.add(SecurePreferences.encrypt(it.next()));
            }
            this.mEditor.putStringSet(SecurePreferences.encrypt(str), hashSet);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            this.mEditor.putString(SecurePreferences.encrypt(str), SecurePreferences.encrypt(Integer.toString(i)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            this.mEditor.putString(SecurePreferences.encrypt(str), SecurePreferences.encrypt(Long.toString(j)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            this.mEditor.putString(SecurePreferences.encrypt(str), SecurePreferences.encrypt(Float.toString(f)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.mEditor.putString(SecurePreferences.encrypt(str), SecurePreferences.encrypt(Boolean.toString(z)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.mEditor.remove(SecurePreferences.encrypt(str));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.mEditor.clear();
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return this.mEditor.commit();
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            this.mEditor.apply();
        }
    }
}
