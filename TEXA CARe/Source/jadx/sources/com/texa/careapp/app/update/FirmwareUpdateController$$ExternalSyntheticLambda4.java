package com.texa.careapp.app.update;

import com.texa.careapp.app.update.FirmwareUpdateController;
import com.texa.carelib.core.utils.FirmwareVersion;
import io.reactivex.functions.Function5;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class FirmwareUpdateController$$ExternalSyntheticLambda4 implements Function5 {
    public static final /* synthetic */ FirmwareUpdateController$$ExternalSyntheticLambda4 INSTANCE = new FirmwareUpdateController$$ExternalSyntheticLambda4();

    private /* synthetic */ FirmwareUpdateController$$ExternalSyntheticLambda4() {
    }

    @Override // io.reactivex.functions.Function5
    public final Object apply(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return new FirmwareUpdateController.FwUpdateInfos((String) obj, (FirmwareVersion) obj2, (FirmwareVersion) obj3, (FirmwareVersion) obj4, (FirmwareVersion) obj5);
    }
}
