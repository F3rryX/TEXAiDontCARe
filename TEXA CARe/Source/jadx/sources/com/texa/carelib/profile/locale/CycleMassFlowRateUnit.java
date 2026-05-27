package com.texa.carelib.profile.locale;

/* JADX INFO: loaded from: classes2.dex */
public enum CycleMassFlowRateUnit {
    MILLIGRAM_PER_CYCLE { // from class: com.texa.carelib.profile.locale.CycleMassFlowRateUnit.1
        @Override // com.texa.carelib.profile.locale.CycleMassFlowRateUnit
        public double toGrainPerCycle(double d) {
            return d * 0.01543236d;
        }

        @Override // com.texa.carelib.profile.locale.CycleMassFlowRateUnit
        public double toMilligramPerCycle(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "mg/cycle";
        }
    },
    GRAIN_PER_CYCLE { // from class: com.texa.carelib.profile.locale.CycleMassFlowRateUnit.2
        @Override // com.texa.carelib.profile.locale.CycleMassFlowRateUnit
        public double toGrainPerCycle(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.CycleMassFlowRateUnit
        public double toMilligramPerCycle(double d) {
            return d / 0.01543236d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "gr/cycle";
        }
    };

    public long convert(double d, CycleMassFlowRateUnit cycleMassFlowRateUnit) {
        throw new AbstractMethodError();
    }

    public double toMilligramPerCycle(double d) {
        throw new AbstractMethodError();
    }

    public double toGrainPerCycle(double d) {
        throw new AbstractMethodError();
    }
}
