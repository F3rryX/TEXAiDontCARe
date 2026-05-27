package at.favre.lib.crypto.bcrypt;

/* JADX INFO: loaded from: classes.dex */
public class IllegalBCryptFormatException extends Exception {
    public IllegalBCryptFormatException(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return super.getMessage() + " - example of expected hash format: '$2a$06$If6bvum7DFjUnE9p2uDeDu0YHzrHM6tf.iqN8.yx.jNN1ILEf7h0i' which includes 16 bytes salt and 23 bytes hash value encoded in a base64 flavor";
    }
}
