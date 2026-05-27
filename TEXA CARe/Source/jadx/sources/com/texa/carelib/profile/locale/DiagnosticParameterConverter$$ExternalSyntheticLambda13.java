package com.texa.carelib.profile.locale;

import com.texa.carelib.profile.locale.DiagnosticParameterConverter;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class DiagnosticParameterConverter$$ExternalSyntheticLambda13 implements DiagnosticParameterConverter.ConversionFunction {
    public final /* synthetic */ PressureUnit f$0;

    @Override // com.texa.carelib.profile.locale.DiagnosticParameterConverter.ConversionFunction
    public final double convert(double d) {
        return this.f$0.toPSI(d);
    }
}
