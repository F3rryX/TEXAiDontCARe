package at.favre.lib.armadillo;

/* JADX INFO: loaded from: classes.dex */
public interface RecoveryPolicy {
    void handleBrokenContent(EncryptionProtocolException encryptionProtocolException, String str, String str2, boolean z, ArmadilloSharedPreferences armadilloSharedPreferences) throws SecureSharedPreferenceCryptoException;
}
