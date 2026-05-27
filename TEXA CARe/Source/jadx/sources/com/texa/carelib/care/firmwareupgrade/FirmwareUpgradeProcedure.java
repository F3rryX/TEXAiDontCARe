package com.texa.carelib.care.firmwareupgrade;

import com.texa.carelib.core.CareLibException;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public interface FirmwareUpgradeProcedure {
    boolean isUpdatingMainApp();

    boolean isUpdatingServiceApp();

    void rebootToMainApp() throws CareLibException;

    void rebootToMainApp(int i) throws CareLibException;

    void rebootToServiceApp() throws CareLibException;

    void rebootToServiceApp(int i) throws CareLibException;

    void updateMainApp(File file, FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener) throws CareLibException;

    void updateServiceApp(File file, FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener) throws CareLibException;
}
