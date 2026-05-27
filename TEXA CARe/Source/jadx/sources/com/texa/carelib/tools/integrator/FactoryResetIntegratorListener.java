package com.texa.carelib.tools.integrator;

import com.texa.carelib.core.CareError;

/* JADX INFO: loaded from: classes2.dex */
public interface FactoryResetIntegratorListener {
    void onFactoryResetCompleted(FactoryResetIntegrator factoryResetIntegrator);

    void onFactoryResetError(FactoryResetIntegrator factoryResetIntegrator, CareError careError);
}
