package com.texa.careapp.utils;

import com.texa.careapp.networking.response.VehicleResponse;
import io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class LoginHelperRx$$ExternalSyntheticLambda13 implements Function {
    public final /* synthetic */ VehicleDataManager f$0;

    public /* synthetic */ LoginHelperRx$$ExternalSyntheticLambda13(VehicleDataManager vehicleDataManager) {
        this.f$0 = vehicleDataManager;
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        return this.f$0.insertVehicle((VehicleResponse) obj);
    }
}
