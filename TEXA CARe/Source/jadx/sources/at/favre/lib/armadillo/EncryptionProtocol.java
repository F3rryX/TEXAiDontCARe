package at.favre.lib.armadillo;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
interface EncryptionProtocol {

    public interface Factory {
        EncryptionProtocol create(byte[] bArr);

        DataObfuscator createDataObfuscator();

        SecureRandom getSecureRandom();

        StringMessageDigest getStringMessageDigest();

        ByteArrayRuntimeObfuscator obfuscatePassword(char[] cArr);
    }

    byte[] decrypt(String str, byte[] bArr) throws EncryptionProtocolException;

    byte[] decrypt(String str, char[] cArr, byte[] bArr) throws EncryptionProtocolException;

    char[] deobfuscatePassword(ByteArrayRuntimeObfuscator byteArrayRuntimeObfuscator);

    String deriveContentKey(String str);

    byte[] encrypt(String str, byte[] bArr) throws EncryptionProtocolException;

    byte[] encrypt(String str, char[] cArr, byte[] bArr) throws EncryptionProtocolException;

    KeyStretchingFunction getKeyStretchingFunction();

    ByteArrayRuntimeObfuscator obfuscatePassword(char[] cArr);

    void setKeyStretchingFunction(KeyStretchingFunction keyStretchingFunction);

    void wipeDerivedPasswordCache();
}
