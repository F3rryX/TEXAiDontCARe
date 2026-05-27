package at.favre.lib.armadillo;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import at.favre.lib.armadillo.EncryptionProtocol;
import at.favre.lib.armadillo.SimpleRecoveryPolicy;
import at.favre.lib.bytes.Bytes;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public final class SecureSharedPreferences implements ArmadilloSharedPreferences {
    private static final String PASSWORD_VALIDATION_KEY = "at.favre.lib.securepref.PASSWORD_VALIDATION_KEY";
    private static final String PREFERENCES_SALT_KEY = "at.favre.lib.securepref.KEY_RANDOM";
    private static final int PREFERENCES_SALT_LENGTH_BYTES = 32;
    private EncryptionProtocol encryptionProtocol;
    private final EncryptionProtocol.Factory factory;
    private ByteArrayRuntimeObfuscator password;
    private String prefSaltContentKey;
    private byte[] preferencesSalt;
    private final RecoveryPolicy recoveryPolicy;
    private final List<SharedPreferenceChangeListenerWrapper> securePreferenceListeners;
    private final SharedPreferences sharedPreferences;
    private boolean supportVerifyPassword;

    public SecureSharedPreferences(Context context, String str, EncryptionProtocol.Factory factory, char[] cArr, boolean z) {
        this(context, str, factory, new SimpleRecoveryPolicy.Default(false, true), cArr, z);
    }

    public SecureSharedPreferences(Context context, String str, EncryptionProtocol.Factory factory, RecoveryPolicy recoveryPolicy, char[] cArr, boolean z) {
        this(context.getSharedPreferences(factory.getStringMessageDigest().derive(str, "prefName"), 0), factory, recoveryPolicy, cArr, z);
    }

    public SecureSharedPreferences(SharedPreferences sharedPreferences, EncryptionProtocol.Factory factory, RecoveryPolicy recoveryPolicy, char[] cArr, boolean z) {
        this.securePreferenceListeners = new LinkedList();
        Timber.d("create new secure shared preferences", new Object[0]);
        this.sharedPreferences = sharedPreferences;
        this.factory = factory;
        this.recoveryPolicy = recoveryPolicy;
        this.password = factory.obfuscatePassword(cArr);
        this.supportVerifyPassword = z;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void init() {
        byte[] preferencesSalt = getPreferencesSalt(this.factory.getStringMessageDigest(), this.factory.createDataObfuscator(), this.factory.getSecureRandom());
        this.preferencesSalt = preferencesSalt;
        this.encryptionProtocol = this.factory.create(preferencesSalt);
        if (!this.supportVerifyPassword || hasValidationValue()) {
            return;
        }
        storePasswordValidationValue(this.preferencesSalt);
    }

    private byte[] getPreferencesSalt(StringMessageDigest stringMessageDigest, DataObfuscator dataObfuscator, SecureRandom secureRandom) {
        String strDerive = stringMessageDigest.derive(PREFERENCES_SALT_KEY, "prefName");
        this.prefSaltContentKey = strDerive;
        String string = this.sharedPreferences.getString(strDerive, null);
        if (string == null) {
            Timber.v("create new preferences random salt", new Object[0]);
            byte[] bArrArray = Bytes.random(32, secureRandom).array();
            try {
                byte[] bArrArray2 = Bytes.wrap(bArrArray).copy().array();
                dataObfuscator.obfuscate(bArrArray);
                this.sharedPreferences.edit().putString(this.prefSaltContentKey, Bytes.wrap(bArrArray).encodeBase64()).apply();
                return bArrArray2;
            } finally {
                Bytes.wrapNullSafe(bArrArray).mutable().secureWipe();
            }
        }
        byte[] bArrArray3 = Bytes.parseBase64(string).array();
        dataObfuscator.deobfuscate(bArrArray3);
        return bArrArray3;
    }

    private boolean hasValidationValue() {
        return contains(PASSWORD_VALIDATION_KEY);
    }

    private void storePasswordValidationValue(byte[] bArr) {
        edit().putString(PASSWORD_VALIDATION_KEY, Bytes.wrap(bArr).encodeBase64()).apply();
    }

    @Override // android.content.SharedPreferences
    public Map<String, String> getAll() {
        Map<String, ?> all = this.sharedPreferences.getAll();
        HashMap map = new HashMap(all.size());
        for (String str : all.keySet()) {
            if (!str.equals(this.prefSaltContentKey)) {
                map.put(str, "");
            }
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        byte[] bArrDecrypt;
        String strDeriveContentKey = this.encryptionProtocol.deriveContentKey(str);
        String string = this.sharedPreferences.getString(strDeriveContentKey, null);
        return (string == null || (bArrDecrypt = decrypt(strDeriveContentKey, this.password, string)) == null) ? str2 : Bytes.from(bArrDecrypt).encodeUtf8();
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        String strDeriveContentKey = this.encryptionProtocol.deriveContentKey(str);
        Set<String> stringSet = this.sharedPreferences.getStringSet(strDeriveContentKey, null);
        if (stringSet == null) {
            return set;
        }
        HashSet hashSet = new HashSet(stringSet.size());
        Iterator<String> it = stringSet.iterator();
        while (it.hasNext()) {
            byte[] bArrDecrypt = decrypt(strDeriveContentKey, this.password, it.next());
            if (bArrDecrypt == null) {
                return hashSet;
            }
            hashSet.add(Bytes.from(bArrDecrypt).encodeUtf8());
        }
        return hashSet;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        byte[] bArrDecrypt;
        String strDeriveContentKey = this.encryptionProtocol.deriveContentKey(str);
        String string = this.sharedPreferences.getString(strDeriveContentKey, null);
        return (string == null || (bArrDecrypt = decrypt(strDeriveContentKey, this.password, string)) == null) ? i : Bytes.from(bArrDecrypt).toInt();
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        byte[] bArrDecrypt;
        String strDeriveContentKey = this.encryptionProtocol.deriveContentKey(str);
        String string = this.sharedPreferences.getString(strDeriveContentKey, null);
        return (string == null || (bArrDecrypt = decrypt(strDeriveContentKey, this.password, string)) == null) ? j : Bytes.from(bArrDecrypt).toLong();
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        byte[] bArrDecrypt;
        String strDeriveContentKey = this.encryptionProtocol.deriveContentKey(str);
        String string = this.sharedPreferences.getString(strDeriveContentKey, null);
        return (string == null || (bArrDecrypt = decrypt(strDeriveContentKey, this.password, string)) == null) ? f : Bytes.from(bArrDecrypt).toFloat();
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        byte[] bArrDecrypt;
        String strDeriveContentKey = this.encryptionProtocol.deriveContentKey(str);
        String string = this.sharedPreferences.getString(strDeriveContentKey, null);
        return (string == null || (bArrDecrypt = decrypt(strDeriveContentKey, this.password, string)) == null) ? z : bArrDecrypt[0] != 0;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return this.sharedPreferences.contains(this.encryptionProtocol.deriveContentKey(str));
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return new Editor();
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.sharedPreferences.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // at.favre.lib.armadillo.ArmadilloSharedPreferences
    public void registerOnSecurePreferenceChangeListener(OnSecurePreferenceChangeListener onSecurePreferenceChangeListener) {
        synchronized (this.securePreferenceListeners) {
            SharedPreferenceChangeListenerWrapper sharedPreferenceChangeListenerWrapper = new SharedPreferenceChangeListenerWrapper(onSecurePreferenceChangeListener, this.encryptionProtocol, this);
            registerOnSharedPreferenceChangeListener(sharedPreferenceChangeListenerWrapper);
            this.securePreferenceListeners.add(sharedPreferenceChangeListenerWrapper);
        }
    }

    @Override // at.favre.lib.armadillo.ArmadilloSharedPreferences
    public void unregisterOnSecurePreferenceChangeListener(OnSecurePreferenceChangeListener onSecurePreferenceChangeListener) {
        synchronized (this.securePreferenceListeners) {
            ListIterator<SharedPreferenceChangeListenerWrapper> listIterator = this.securePreferenceListeners.listIterator();
            while (listIterator.hasNext()) {
                SharedPreferenceChangeListenerWrapper next = listIterator.next();
                OnSecurePreferenceChangeListener wrapped = next.getWrapped();
                if (wrapped == null || wrapped == onSecurePreferenceChangeListener) {
                    unregisterOnSharedPreferenceChangeListener(next);
                    listIterator.remove();
                }
            }
        }
    }

    @Override // at.favre.lib.armadillo.ArmadilloSharedPreferences
    public void changePassword(char[] cArr) {
        changePassword(cArr, null);
    }

    @Override // at.favre.lib.armadillo.ArmadilloSharedPreferences
    public boolean isValidPassword() {
        StrictMode.noteSlowCall("checking password should only be done in a background thread");
        if (!this.supportVerifyPassword) {
            throw new UnsupportedOperationException("support verify password is not enabled");
        }
        try {
            String string = getString(PASSWORD_VALIDATION_KEY, null);
            if (string != null) {
                return Bytes.parseBase64(string).equalsConstantTime(this.preferencesSalt);
            }
            return false;
        } catch (SecureSharedPreferenceCryptoException unused) {
            return false;
        }
    }

    @Override // at.favre.lib.armadillo.ArmadilloSharedPreferences
    public void changePassword(char[] cArr, KeyStretchingFunction keyStretchingFunction) {
        StrictMode.noteSlowCall("changing password should only be done in a background thread");
        if (cArr == null || cArr.length == 0) {
            cArr = null;
        }
        SharedPreferences.Editor editorEdit = edit();
        KeyStretchingFunction keyStretchingFunction2 = this.encryptionProtocol.getKeyStretchingFunction();
        for (String str : getAll().keySet()) {
            this.encryptionProtocol.setKeyStretchingFunction(keyStretchingFunction2);
            Editor editor = (Editor) editorEdit;
            if (!reencryptStringType(cArr, editor, str, keyStretchingFunction)) {
                reencryptStringSetType(cArr, editor, str, keyStretchingFunction);
            }
        }
        editorEdit.commit();
        if (keyStretchingFunction != null) {
            this.encryptionProtocol.setKeyStretchingFunction(keyStretchingFunction);
        }
        ByteArrayRuntimeObfuscator byteArrayRuntimeObfuscator = this.password;
        if (byteArrayRuntimeObfuscator != null) {
            byteArrayRuntimeObfuscator.wipe();
        }
        this.password = this.encryptionProtocol.obfuscatePassword(cArr);
    }

    private boolean reencryptStringType(char[] cArr, Editor editor, String str, KeyStretchingFunction keyStretchingFunction) {
        try {
            ByteArrayRuntimeObfuscator byteArrayRuntimeObfuscatorObfuscatePassword = this.encryptionProtocol.obfuscatePassword(cArr);
            String string = this.sharedPreferences.getString(str, null);
            if (string == null) {
                return false;
            }
            byte[] bArrDecrypt = decrypt(str, this.password, string);
            if (bArrDecrypt == null) {
                return true;
            }
            if (keyStretchingFunction != null) {
                this.encryptionProtocol.setKeyStretchingFunction(keyStretchingFunction);
            }
            editor.putEncryptedBase64(str, encryptToBase64(str, byteArrayRuntimeObfuscatorObfuscatePassword, bArrDecrypt));
            return true;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    private boolean reencryptStringSetType(char[] cArr, Editor editor, String str, KeyStretchingFunction keyStretchingFunction) {
        ByteArrayRuntimeObfuscator byteArrayRuntimeObfuscatorObfuscatePassword = this.encryptionProtocol.obfuscatePassword(cArr);
        Set<String> stringSet = this.sharedPreferences.getStringSet(str, null);
        if (stringSet == null) {
            return false;
        }
        HashSet hashSet = new HashSet(stringSet.size());
        Iterator<String> it = stringSet.iterator();
        while (it.hasNext()) {
            byte[] bArrDecrypt = decrypt(str, this.password, it.next());
            if (bArrDecrypt != null) {
                hashSet.add(Bytes.from(bArrDecrypt).encodeUtf8());
            }
        }
        if (keyStretchingFunction != null) {
            this.encryptionProtocol.setKeyStretchingFunction(keyStretchingFunction);
        }
        HashSet hashSet2 = new HashSet(hashSet.size());
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            hashSet2.add(encryptToBase64(str, byteArrayRuntimeObfuscatorObfuscatePassword, Bytes.from((String) it2.next()).array()));
        }
        editor.putEncryptedStringSet(str, hashSet2);
        return true;
    }

    @Override // at.favre.lib.armadillo.ArmadilloSharedPreferences
    public void close() {
        ByteArrayRuntimeObfuscator byteArrayRuntimeObfuscator = this.password;
        if (byteArrayRuntimeObfuscator != null) {
            byteArrayRuntimeObfuscator.wipe();
        }
        this.password = null;
        byte[] bArr = this.preferencesSalt;
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
        this.encryptionProtocol.wipeDerivedPasswordCache();
        this.preferencesSalt = null;
        this.prefSaltContentKey = null;
        this.encryptionProtocol = null;
    }

    public final class Editor implements SharedPreferences.Editor {
        private boolean clear;
        private final SharedPreferences.Editor internalEditor;

        private Editor() {
            this.clear = false;
            this.internalEditor = SecureSharedPreferences.this.sharedPreferences.edit();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            String strDeriveContentKey = SecureSharedPreferences.this.encryptionProtocol.deriveContentKey(str);
            if (str2 == null) {
                this.internalEditor.remove(SecureSharedPreferences.this.encryptionProtocol.deriveContentKey(str));
            } else {
                SharedPreferences.Editor editor = this.internalEditor;
                SecureSharedPreferences secureSharedPreferences = SecureSharedPreferences.this;
                editor.putString(strDeriveContentKey, secureSharedPreferences.encryptToBase64(strDeriveContentKey, secureSharedPreferences.password, Bytes.from(str2).array()));
            }
            return this;
        }

        SharedPreferences.Editor putEncryptedBase64(String str, String str2) {
            this.internalEditor.putString(str, str2);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            String strDeriveContentKey = SecureSharedPreferences.this.encryptionProtocol.deriveContentKey(str);
            if (set == null) {
                this.internalEditor.remove(SecureSharedPreferences.this.encryptionProtocol.deriveContentKey(str));
            } else {
                HashSet hashSet = new HashSet(set.size());
                for (String str2 : set) {
                    SecureSharedPreferences secureSharedPreferences = SecureSharedPreferences.this;
                    hashSet.add(secureSharedPreferences.encryptToBase64(strDeriveContentKey, secureSharedPreferences.password, Bytes.from(str2).array()));
                }
                this.internalEditor.putStringSet(strDeriveContentKey, hashSet);
            }
            return this;
        }

        SharedPreferences.Editor putEncryptedStringSet(String str, Set<String> set) {
            this.internalEditor.putStringSet(str, set);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            String strDeriveContentKey = SecureSharedPreferences.this.encryptionProtocol.deriveContentKey(str);
            SharedPreferences.Editor editor = this.internalEditor;
            SecureSharedPreferences secureSharedPreferences = SecureSharedPreferences.this;
            editor.putString(strDeriveContentKey, secureSharedPreferences.encryptToBase64(strDeriveContentKey, secureSharedPreferences.password, Bytes.from(i).array()));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            String strDeriveContentKey = SecureSharedPreferences.this.encryptionProtocol.deriveContentKey(str);
            SharedPreferences.Editor editor = this.internalEditor;
            SecureSharedPreferences secureSharedPreferences = SecureSharedPreferences.this;
            editor.putString(strDeriveContentKey, secureSharedPreferences.encryptToBase64(strDeriveContentKey, secureSharedPreferences.password, Bytes.from(j).array()));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            String strDeriveContentKey = SecureSharedPreferences.this.encryptionProtocol.deriveContentKey(str);
            SharedPreferences.Editor editor = this.internalEditor;
            SecureSharedPreferences secureSharedPreferences = SecureSharedPreferences.this;
            editor.putString(strDeriveContentKey, secureSharedPreferences.encryptToBase64(strDeriveContentKey, secureSharedPreferences.password, Bytes.from(f).array()));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            String strDeriveContentKey = SecureSharedPreferences.this.encryptionProtocol.deriveContentKey(str);
            SharedPreferences.Editor editor = this.internalEditor;
            SecureSharedPreferences secureSharedPreferences = SecureSharedPreferences.this;
            editor.putString(strDeriveContentKey, secureSharedPreferences.encryptToBase64(strDeriveContentKey, secureSharedPreferences.password, Bytes.from(z ? (byte) 1 : (byte) 0).array()));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.internalEditor.remove(SecureSharedPreferences.this.encryptionProtocol.deriveContentKey(str));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.internalEditor.clear();
            this.clear = true;
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            try {
                return this.internalEditor.commit();
            } finally {
                handlePossibleClear();
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            this.internalEditor.apply();
            handlePossibleClear();
        }

        private void handlePossibleClear() {
            if (this.clear) {
                SecureSharedPreferences.this.init();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String encryptToBase64(String str, ByteArrayRuntimeObfuscator byteArrayRuntimeObfuscator, byte[] bArr) {
        try {
            EncryptionProtocol encryptionProtocol = this.encryptionProtocol;
            return Bytes.wrap(encryptionProtocol.encrypt(str, encryptionProtocol.deobfuscatePassword(byteArrayRuntimeObfuscator), bArr)).encodeBase64();
        } catch (EncryptionProtocolException e) {
            throw new IllegalStateException(e);
        }
    }

    private byte[] decrypt(String str, ByteArrayRuntimeObfuscator byteArrayRuntimeObfuscator, String str2) {
        try {
            EncryptionProtocol encryptionProtocol = this.encryptionProtocol;
            return encryptionProtocol.decrypt(str, encryptionProtocol.deobfuscatePassword(byteArrayRuntimeObfuscator), Bytes.parseBase64(str2).array());
        } catch (EncryptionProtocolException e) {
            this.recoveryPolicy.handleBrokenContent(e, str, str2, byteArrayRuntimeObfuscator != null, this);
            return null;
        }
    }
}
