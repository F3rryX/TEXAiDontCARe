package lombok.core.runtimeDependencies;

import java.util.List;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/core/runtimeDependencies/RuntimeDependencyInfo.SCL.lombok */
public interface RuntimeDependencyInfo {
    List<String> getRuntimeDependentsDescriptions();

    List<String> getRuntimeDependencies();
}
