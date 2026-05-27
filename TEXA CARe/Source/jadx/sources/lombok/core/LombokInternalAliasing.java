package lombok.core;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/core/LombokInternalAliasing.SCL.lombok */
public class LombokInternalAliasing {
    public static final Map<String, Collection<String>> IMPLIED_EXTRA_STAR_IMPORTS;
    public static final Map<String, String> ALIASES;

    public static String processAliases(String in) {
        if (in == null) {
            return null;
        }
        String ret = ALIASES.get(in);
        return ret == null ? in : ret;
    }

    static {
        Map<String, Collection<String>> m1 = new HashMap<>();
        m1.put("lombok.experimental", Collections.singleton("lombok"));
        m1.put("lombok", Collections.singleton("lombok.experimental"));
        IMPLIED_EXTRA_STAR_IMPORTS = Collections.unmodifiableMap(m1);
        Map<String, String> m2 = new HashMap<>();
        m2.put("lombok.experimental.Value", "lombok.Value");
        m2.put("lombok.experimental.Builder", "lombok.Builder");
        m2.put("lombok.experimental.var", "lombok.var");
        m2.put("lombok.Delegate", "lombok.experimental.Delegate");
        ALIASES = Collections.unmodifiableMap(m2);
    }
}
