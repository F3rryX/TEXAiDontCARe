package at.favre.lib.armadillo;

import android.content.SharedPreferences;
import at.favre.lib.armadillo.OnSecurePreferenceChangeListener;

/* JADX INFO: loaded from: classes.dex */
final class SharedPreferenceChangeListenerWrapper implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final EncryptionProtocol encryptionProtocol;
    private final SharedPreferences securedPrefs;
    private final OnSecurePreferenceChangeListener wrappedListener;

    private static final class KeyComparisonImpl implements OnSecurePreferenceChangeListener.DerivedKeyComparison {
        private final String derivedContentKey;
        private final EncryptionProtocol encryptionProtocol;

        private KeyComparisonImpl(EncryptionProtocol encryptionProtocol, String str) {
            this.encryptionProtocol = encryptionProtocol;
            this.derivedContentKey = str;
        }

        @Override // at.favre.lib.armadillo.OnSecurePreferenceChangeListener.DerivedKeyComparison
        public boolean isDerivedKeyEqualTo(String str) {
            return this.derivedContentKey.equals(this.encryptionProtocol.deriveContentKey(str));
        }
    }

    SharedPreferenceChangeListenerWrapper(OnSecurePreferenceChangeListener onSecurePreferenceChangeListener, EncryptionProtocol encryptionProtocol, SharedPreferences sharedPreferences) {
        this.wrappedListener = onSecurePreferenceChangeListener;
        this.encryptionProtocol = encryptionProtocol;
        this.securedPrefs = sharedPreferences;
    }

    OnSecurePreferenceChangeListener getWrapped() {
        return this.wrappedListener;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str != null) {
            this.wrappedListener.onSecurePreferenceChanged(this.securedPrefs, new KeyComparisonImpl(this.encryptionProtocol, str));
        }
    }
}
