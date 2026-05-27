package at.favre.lib.crypto.bcrypt;

import at.favre.lib.crypto.bcrypt.BCrypt;
import at.favre.lib.crypto.bcrypt.LongPasswordStrategy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class LongPasswordStrategies {
    private LongPasswordStrategies() {
    }

    public static LongPasswordStrategy truncate(BCrypt.Version version) {
        Objects.requireNonNull(version);
        return new LongPasswordStrategy.TruncateStrategy(version.allowedMaxPwLength);
    }

    public static LongPasswordStrategy hashSha512(BCrypt.Version version) {
        Objects.requireNonNull(version);
        return new LongPasswordStrategy.Sha512DerivationStrategy(version.allowedMaxPwLength);
    }

    public static LongPasswordStrategy strict(BCrypt.Version version) {
        Objects.requireNonNull(version);
        return new LongPasswordStrategy.StrictMaxPasswordLengthStrategy(version.allowedMaxPwLength);
    }

    public static LongPasswordStrategy none() {
        return new LongPasswordStrategy.PassThroughStrategy();
    }
}
