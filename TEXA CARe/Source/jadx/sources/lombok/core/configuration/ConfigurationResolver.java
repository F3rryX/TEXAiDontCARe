package lombok.core.configuration;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/core/configuration/ConfigurationResolver.SCL.lombok */
public interface ConfigurationResolver {
    <T> T resolve(ConfigurationKey<T> configurationKey);
}
