package com.texa.carelib.profile.internal.parser;

import com.texa.carelib.care.accessory.DiagnosticConfigurationType;
import com.texa.carelib.care.accessory.EncryptionLevel;
import com.texa.carelib.communication.Message;

/* JADX INFO: loaded from: classes2.dex */
public class GetSettingsParser {
    public static final String TAG = "GetSettingsParser";

    public static GetSettingsResponse parse(Message message) {
        byte[] data;
        GetSettingsResponse getSettingsResponse = new GetSettingsResponse();
        if (message.getStatus() == 0 && (data = message.getData()) != null && data.length > 0) {
            getSettingsResponse.setDTCEncrypted((data[0] & 1) != 0);
            if ((data[0] & 2) == 0) {
                getSettingsResponse.setDiagnosticConfigurationDownloadMode(DiagnosticConfigurationType.Database);
            } else {
                getSettingsResponse.setDiagnosticConfigurationDownloadMode(DiagnosticConfigurationType.ConfigurationFiles);
            }
            if ((data[0] & 4) == 0) {
                getSettingsResponse.setEncryptionLevel(EncryptionLevel.SingleLevelEncryption);
            } else {
                getSettingsResponse.setEncryptionLevel(EncryptionLevel.DoubleLevelEncryption);
            }
        }
        return getSettingsResponse;
    }

    public static class GetSettingsResponse {
        private DiagnosticConfigurationType mDiagnosticConfigurationType = DiagnosticConfigurationType.ConfigurationFiles;
        private EncryptionLevel mEncryptionLevel = EncryptionLevel.DoubleLevelEncryption;
        private boolean mIsDTCEncrypted = true;

        public boolean isDTCEncrypted() {
            return this.mIsDTCEncrypted;
        }

        public void setDTCEncrypted(boolean z) {
            this.mIsDTCEncrypted = z;
        }

        public DiagnosticConfigurationType getDiagnosticConfigurationDownloadMode() {
            return this.mDiagnosticConfigurationType;
        }

        public void setDiagnosticConfigurationDownloadMode(DiagnosticConfigurationType diagnosticConfigurationType) {
            this.mDiagnosticConfigurationType = diagnosticConfigurationType;
        }

        public EncryptionLevel getEncryptionLevel() {
            return this.mEncryptionLevel;
        }

        public void setEncryptionLevel(EncryptionLevel encryptionLevel) {
            this.mEncryptionLevel = encryptionLevel;
        }
    }
}
