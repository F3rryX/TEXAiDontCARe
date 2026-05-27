package com.texa.carelib.profile.locale;

/* JADX INFO: loaded from: classes2.dex */
public enum AccelerationUnit {
    METER_PER_SQUARE_SECOND { // from class: com.texa.carelib.profile.locale.AccelerationUnit.1
        @Override // com.texa.carelib.profile.locale.AccelerationUnit
        public double toMetersPerSquareSecond(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "m/s²";
        }

        @Override // com.texa.carelib.profile.locale.AccelerationUnit
        public double toYardsPerSquareSecond(double d) {
            return d * 1.09361d;
        }
    },
    YARDS_PER_SQUARE_SECOND { // from class: com.texa.carelib.profile.locale.AccelerationUnit.2
        @Override // com.texa.carelib.profile.locale.AccelerationUnit
        public double toMetersPerSquareSecond(double d) {
            return d / 1.09361d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "yd/s²";
        }

        @Override // com.texa.carelib.profile.locale.AccelerationUnit
        public double toYardsPerSquareSecond(double d) {
            return d;
        }
    };

    public long convert(double d, AccelerationUnit accelerationUnit) {
        throw new AbstractMethodError();
    }

    public double toMetersPerSquareSecond(double d) {
        throw new AbstractMethodError();
    }

    public double toYardsPerSquareSecond(double d) {
        throw new AbstractMethodError();
    }
}
