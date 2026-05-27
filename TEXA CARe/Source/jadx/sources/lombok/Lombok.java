package lombok;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class Lombok {
    public static <T> T preventNullAnalysis(T t) {
        return t;
    }

    public static RuntimeException sneakyThrow(Throwable th) {
        Objects.requireNonNull(th, "t");
        return (RuntimeException) sneakyThrow0(th);
    }

    private static <T extends Throwable> T sneakyThrow0(Throwable th) throws Throwable {
        throw th;
    }

    public static <T> T checkNotNull(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }
}
