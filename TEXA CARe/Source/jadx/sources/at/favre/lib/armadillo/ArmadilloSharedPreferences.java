package at.favre.lib.armadillo;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public interface ArmadilloSharedPreferences extends SharedPreferences {
    void changePassword(char[] cArr);

    void changePassword(char[] cArr, KeyStretchingFunction keyStretchingFunction);

    void close();

    boolean isValidPassword();

    void registerOnSecurePreferenceChangeListener(OnSecurePreferenceChangeListener onSecurePreferenceChangeListener);

    void unregisterOnSecurePreferenceChangeListener(OnSecurePreferenceChangeListener onSecurePreferenceChangeListener);
}
