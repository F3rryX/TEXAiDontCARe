package at.favre.lib.armadillo;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public interface OnSecurePreferenceChangeListener {

    public interface DerivedKeyComparison {
        boolean isDerivedKeyEqualTo(String str);
    }

    void onSecurePreferenceChanged(SharedPreferences sharedPreferences, DerivedKeyComparison derivedKeyComparison);
}
