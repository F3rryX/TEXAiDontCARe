package com.texa.carelib.profile.locale;

/* JADX INFO: loaded from: classes2.dex */
public enum SpeedUnit {
    METERS_PER_SECOND { // from class: com.texa.carelib.profile.locale.SpeedUnit.1
        @Override // com.texa.carelib.profile.locale.SpeedUnit
        public double toKilometersPerHour(double d) {
            return d * SpeedUnit.KH;
        }

        @Override // com.texa.carelib.profile.locale.SpeedUnit
        public double toMetersPerSecond(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.SpeedUnit
        public double toMilesPerHour(double d) {
            return d * SpeedUnit.MH;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "m/s";
        }
    },
    KILOMETERS_PER_HOUR { // from class: com.texa.carelib.profile.locale.SpeedUnit.2
        @Override // com.texa.carelib.profile.locale.SpeedUnit
        public double toKilometersPerHour(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.SpeedUnit
        public double toMetersPerSecond(double d) {
            return d / SpeedUnit.KH;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "km/h";
        }

        @Override // com.texa.carelib.profile.locale.SpeedUnit
        public double toMilesPerHour(double d) {
            return METERS_PER_SECOND.toMilesPerHour(toMetersPerSecond(d));
        }
    },
    MILES_PER_HOUR { // from class: com.texa.carelib.profile.locale.SpeedUnit.3
        @Override // com.texa.carelib.profile.locale.SpeedUnit
        public double toMetersPerSecond(double d) {
            return d / SpeedUnit.MH;
        }

        @Override // com.texa.carelib.profile.locale.SpeedUnit
        public double toMilesPerHour(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "mph";
        }

        @Override // com.texa.carelib.profile.locale.SpeedUnit
        public double toKilometersPerHour(double d) {
            return METERS_PER_SECOND.toKilometersPerHour(toMetersPerSecond(d));
        }
    };

    private static final double KH = 3.6d;
    private static final double MH = 2.236936292054d;

    public long convert(double d, SpeedUnit speedUnit) {
        throw new AbstractMethodError();
    }

    public double toMetersPerSecond(double d) {
        throw new AbstractMethodError();
    }

    public double toKilometersPerHour(double d) {
        throw new AbstractMethodError();
    }

    public double toMilesPerHour(double d) {
        throw new AbstractMethodError();
    }
}
