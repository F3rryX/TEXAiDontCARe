package com.texa.carelib.care.firmwareupgrade;

import com.texa.carelib.care.firmwareupgrade.events.FirmwareUpgradeCompletedEvent;
import com.texa.carelib.care.firmwareupgrade.events.FirmwareUpgradeProgressChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface FirmwareUpgradeProcedureListener {
    void onFirmwareUpgradeCompleted(FirmwareUpgradeCompletedEvent firmwareUpgradeCompletedEvent);

    void onFirmwareUpgradeProgressChanged(FirmwareUpgradeProgressChangedEvent firmwareUpgradeProgressChangedEvent);
}
