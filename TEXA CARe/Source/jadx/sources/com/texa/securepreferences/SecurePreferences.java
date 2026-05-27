package com.texa.securepreferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.texa.securepreferences.AesCbcWithIntegrity;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes2.dex */
public class SecurePreferences implements SharedPreferences {
    private static final String TAG = "com.texa.securepreferences.SecurePreferences";
    private static boolean sLoggingEnabled = false;
    private AesCbcWithIntegrity.SecretKeys keys;
    private String sharedPrefFilename;
    private SharedPreferences sharedPreferences;

    public SecurePreferences(Context context) {
        this(context, "", (String) null);
    }

    public SecurePreferences(Context context, String str, String str2) {
        this(context, null, str, str2);
    }

    public SecurePreferences(Context context, AesCbcWithIntegrity.SecretKeys secretKeys, String str) {
        this(context, secretKeys, null, str);
    }

    private SecurePreferences(Context context, AesCbcWithIntegrity.SecretKeys secretKeys, String str, String str2) {
        if (this.sharedPreferences == null) {
            this.sharedPreferences = getSharedPreferenceFile(context, str2);
        }
        if (secretKeys != null) {
            this.keys = secretKeys;
            return;
        }
        if (TextUtils.isEmpty(str)) {
            try {
                String strGenerateAesKeyName = generateAesKeyName(context);
                String string = this.sharedPreferences.getString(strGenerateAesKeyName, null);
                if (string == null) {
                    this.keys = AesCbcWithIntegrity.generateKey();
                    if (!this.sharedPreferences.edit().putString(strGenerateAesKeyName, this.keys.toString()).commit()) {
                        Log.w(TAG, "Key not committed to prefs");
                    }
                } else {
                    this.keys = AesCbcWithIntegrity.keys(string);
                }
                if (this.keys != null) {
                    return;
                } else {
                    throw new GeneralSecurityException("Problem generating Key");
                }
            } catch (GeneralSecurityException e) {
                if (sLoggingEnabled) {
                    Log.e(TAG, "Error init:" + e.getMessage());
                }
                throw new IllegalStateException(e);
            }
        }
        try {
            AesCbcWithIntegrity.SecretKeys secretKeysGenerateKeyFromPassword = AesCbcWithIntegrity.generateKeyFromPassword(str, getDeviceSerialNumber(context));
            this.keys = secretKeysGenerateKeyFromPassword;
            if (secretKeysGenerateKeyFromPassword != null) {
            } else {
                throw new GeneralSecurityException("Problem generating Key From Password");
            }
        } catch (GeneralSecurityException e2) {
            if (sLoggingEnabled) {
                Log.e(TAG, "Error init using user password:" + e2.getMessage());
            }
            throw new IllegalStateException(e2);
        }
    }

    public static String generateAesKeyName(Context context) throws GeneralSecurityException {
        AesCbcWithIntegrity.SecretKeys secretKeysGenerateKeyFromPassword = AesCbcWithIntegrity.generateKeyFromPassword(context.getPackageName(), getDeviceSerialNumber(context).getBytes());
        if (secretKeysGenerateKeyFromPassword == null) {
            throw new GeneralSecurityException("Key not generated");
        }
        return hashPrefKey(secretKeysGenerateKeyFromPassword.toString());
    }

    public static String getDeviceSerialNumber(Context context) {
        String serial;
        try {
            if (Build.VERSION.SDK_INT >= 26 && context.checkSelfPermission("android.permission.READ_PHONE_STATE") == 0) {
                serial = Build.getSerial();
            } else {
                serial = (String) Build.class.getField("SERIAL").get(null);
            }
            return TextUtils.isEmpty(serial) ? Settings.Secure.getString(context.getContentResolver(), "android_id") : serial;
        } catch (Exception unused) {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        }
    }

    public static String hashPrefKey(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA256);
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            return Base64.encodeToString(messageDigest.digest(), 2);
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            if (!sLoggingEnabled) {
                return null;
            }
            Log.w(TAG, "Problem generating hash", e);
            return null;
        }
    }

    public static boolean isLoggingEnabled() {
        return sLoggingEnabled;
    }

    public static void setLoggingEnabled(boolean z) {
        sLoggingEnabled = z;
    }

    private SharedPreferences getSharedPreferenceFile(Context context, String str) {
        this.sharedPrefFilename = this.sharedPrefFilename;
        if (TextUtils.isEmpty(str)) {
            return PreferenceManager.getDefaultSharedPreferences(context);
        }
        return context.getSharedPreferences(str, 0);
    }

    public void destroyKeys() {
        this.keys = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String encrypt(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return AesCbcWithIntegrity.encrypt(str, this.keys).toString();
        } catch (UnsupportedEncodingException e) {
            if (sLoggingEnabled) {
                Log.w(TAG, "encrypt", e);
            }
            return null;
        } catch (GeneralSecurityException e2) {
            if (sLoggingEnabled) {
                Log.w(TAG, "encrypt", e2);
            }
            return null;
        }
    }

    private String decrypt(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return AesCbcWithIntegrity.decryptString(new AesCbcWithIntegrity.CipherTextIvMac(str), this.keys);
        } catch (UnsupportedEncodingException | GeneralSecurityException e) {
            if (!sLoggingEnabled) {
                return null;
            }
            Log.w(TAG, "decrypt", e);
            return null;
        }
    }

    @Override // android.content.SharedPreferences
    public Map<String, String> getAll() {
        Map<String, ?> all = this.sharedPreferences.getAll();
        HashMap map = new HashMap(all.size());
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            try {
                Object value = entry.getValue();
                if (value != null && !value.equals(this.keys.toString())) {
                    map.put(entry.getKey(), decrypt(value.toString()));
                }
            } catch (Exception e) {
                if (sLoggingEnabled) {
                    Log.w(TAG, "error during getAll", e);
                }
                map.put(entry.getKey(), entry.getValue().toString());
            }
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        String string = this.sharedPreferences.getString(hashPrefKey(str), null);
        return string != null ? decrypt(string) : str2;
    }

    public String getUnencryptedString(String str, String str2) {
        String string = this.sharedPreferences.getString(hashPrefKey(str), null);
        return string != null ? string : str2;
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        Set<String> stringSet = this.sharedPreferences.getStringSet(hashPrefKey(str), null);
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
        String string = this.sharedPreferences.getString(hashPrefKey(str), null);
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
        String string = this.sharedPreferences.getString(hashPrefKey(str), null);
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
        String string = this.sharedPreferences.getString(hashPrefKey(str), null);
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
        String string = this.sharedPreferences.getString(hashPrefKey(str), null);
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
        return this.sharedPreferences.contains(hashPrefKey(str));
    }

    public void handlePasswordChange(String str, Context context) throws GeneralSecurityException {
        AesCbcWithIntegrity.SecretKeys secretKeysGenerateKeyFromPassword = AesCbcWithIntegrity.generateKeyFromPassword(str, getDeviceSerialNumber(context));
        Map<String, ?> all = this.sharedPreferences.getAll();
        HashMap map = new HashMap(all.size());
        for (String str2 : all.keySet()) {
            Object obj = all.get(str2);
            if (obj instanceof String) {
                map.put(str2, decrypt((String) obj));
            }
        }
        destroyKeys();
        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
        editorEdit.clear();
        editorEdit.apply();
        this.sharedPreferences = null;
        SharedPreferences sharedPreferenceFile = getSharedPreferenceFile(context, this.sharedPrefFilename);
        this.sharedPreferences = sharedPreferenceFile;
        this.keys = secretKeysGenerateKeyFromPassword;
        SharedPreferences.Editor editorEdit2 = sharedPreferenceFile.edit();
        for (String str3 : map.keySet()) {
            editorEdit2.putString(str3, encrypt((String) map.get(str3)));
        }
        editorEdit2.apply();
    }

    @Override // android.content.SharedPreferences
    public Editor edit() {
        return new Editor();
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener, boolean z) {
        if (z) {
            return;
        }
        registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.sharedPreferences.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public class Editor implements SharedPreferences.Editor {
        private SharedPreferences.Editor mEditor;

        private Editor() {
            this.mEditor = SecurePreferences.this.sharedPreferences.edit();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(str), SecurePreferences.this.encrypt(str2));
            return this;
        }

        public SharedPreferences.Editor putUnencryptedString(String str, String str2) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(str), str2);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            HashSet hashSet = new HashSet(set.size());
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                hashSet.add(SecurePreferences.this.encrypt(it.next()));
            }
            this.mEditor.putStringSet(SecurePreferences.hashPrefKey(str), hashSet);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(str), SecurePreferences.this.encrypt(Integer.toString(i)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(str), SecurePreferences.this.encrypt(Long.toString(j)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(str), SecurePreferences.this.encrypt(Float.toString(f)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.mEditor.putString(SecurePreferences.hashPrefKey(str), SecurePreferences.this.encrypt(Boolean.toString(z)));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.mEditor.remove(SecurePreferences.hashPrefKey(str));
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
