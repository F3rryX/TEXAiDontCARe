package lombok.core;

import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import com.texa.carelib.webservices.utils.internal.GsonDTCLocaleSerializer;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/core/JavaIdentifiers.SCL.lombok */
public class JavaIdentifiers {
    private static final LombokImmutableList<String> KEYWORDS = LombokImmutableList.of("public", "private", "protected", GsonDTCLocaleSerializer.LOCALE_DEFAULT_PLACEHOLDER, "switch", "case", "for", "do", "goto", "const", "strictfp", "while", "if", "else", "byte", "short", "int", "long", "float", "double", "void", "boolean", "char", "null", "false", "true", "continue", "break", "return", "instanceof", "synchronized", "volatile", "transient", "final", "static", "interface", "class", "extends", "implements", "throws", "throw", "catch", "try", "finally", "abstract", "assert", "enum", "import", "package", "native", AppSettingsData.STATUS_NEW, "super", "this");

    private JavaIdentifiers() {
    }

    public static boolean isValidJavaIdentifier(String identifier) {
        if (identifier == null || identifier.isEmpty() || !Character.isJavaIdentifierStart(identifier.charAt(0))) {
            return false;
        }
        for (int i = 1; i < identifier.length(); i++) {
            if (!Character.isJavaIdentifierPart(identifier.charAt(i))) {
                return false;
            }
        }
        return !isKeyword(identifier);
    }

    public static boolean isKeyword(String keyword) {
        return KEYWORDS.contains(keyword);
    }
}
