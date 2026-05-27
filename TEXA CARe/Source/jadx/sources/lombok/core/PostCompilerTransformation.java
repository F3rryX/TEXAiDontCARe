package lombok.core;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/core/PostCompilerTransformation.SCL.lombok */
public interface PostCompilerTransformation {
    byte[] applyTransformations(byte[] bArr, String str, DiagnosticsReceiver diagnosticsReceiver);
}
