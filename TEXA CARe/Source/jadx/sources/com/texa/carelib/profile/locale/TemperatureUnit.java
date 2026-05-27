package com.texa.carelib.profile.locale;

/* JADX INFO: loaded from: classes2.dex */
public enum TemperatureUnit {
    CELSIUS { // from class: com.texa.carelib.profile.locale.TemperatureUnit.1
        @Override // com.texa.carelib.profile.locale.TemperatureUnit
        public double toCelsius(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.TemperatureUnit
        public double toFahrenheit(double d) {
            return ((d * 9.0d) / 5.0d) + 32.0d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "°C";
        }
    },
    FAHRENHEIT { // from class: com.texa.carelib.profile.locale.TemperatureUnit.2
        @Override // com.texa.carelib.profile.locale.TemperatureUnit
        public double toCelsius(double d) {
            return (d - 32.0d) / 1.8d;
        }

        @Override // com.texa.carelib.profile.locale.TemperatureUnit
        public double toFahrenheit(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "°F";
        }
    };

    public long convert(double d, TemperatureUnit temperatureUnit) {
        throw new AbstractMethodError();
    }

    public double toCelsius(double d) {
        throw new AbstractMethodError();
    }

    public double toFahrenheit(double d) {
        throw new AbstractMethodError();
    }
}
