package com.texa.carelib.tools.integrator;

import com.texa.carelib.tools.integrator.events.ConfigurationAllInOneIntegratorCompletedEvent;
import com.texa.carelib.tools.integrator.events.ConfigurationAllInOneIntegratorConfirmationRequiredEvent;
import com.texa.carelib.tools.integrator.events.ConfigurationAllInOneIntegratorProgressChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ConfigurationAllInOneIntegratorListener {
    public abstract void onConfigurationCompleted(ConfigurationAllInOneIntegratorCompletedEvent configurationAllInOneIntegratorCompletedEvent);

    public abstract void onConfirmationNeeded(ConfigurationAllInOneIntegratorConfirmationRequiredEvent configurationAllInOneIntegratorConfirmationRequiredEvent);

    public void onProgressChanged(ConfigurationAllInOneIntegratorProgressChangedEvent configurationAllInOneIntegratorProgressChangedEvent) {
    }
}
