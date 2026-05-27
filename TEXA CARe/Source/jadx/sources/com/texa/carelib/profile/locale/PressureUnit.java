package com.texa.carelib.profile.locale;

/* JADX INFO: loaded from: classes2.dex */
public enum PressureUnit {
    KILOPASCAL { // from class: com.texa.carelib.profile.locale.PressureUnit.1
        @Override // com.texa.carelib.profile.locale.PressureUnit
        public double toKiloPascal(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.PressureUnit
        public double toPSI(double d) {
            return d * PressureUnit.P;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "kPa";
        }
    },
    PSI { // from class: com.texa.carelib.profile.locale.PressureUnit.2
        @Override // com.texa.carelib.profile.locale.PressureUnit
        public double toKiloPascal(double d) {
            return d / PressureUnit.P;
        }

        @Override // com.texa.carelib.profile.locale.PressureUnit
        public double toPSI(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "psi";
        }
    };

    private static final double P = 0.14503773773d;

    public long convert(double d, PressureUnit pressureUnit) {
        throw new AbstractMethodError();
    }

    public double toKiloPascal(double d) {
        throw new AbstractMethodError();
    }

    public double toPSI(double d) {
        throw new AbstractMethodError();
    }

    public double toCentimeters(double d) {
        throw new AbstractMethodError();
    }

    public double toMillimeters(double d) {
        throw new AbstractMethodError();
    }

    public double toMicrometers(double d) {
        throw new AbstractMethodError();
    }

    public double toNanometers(double d) {
        throw new AbstractMethodError();
    }

    public double toMiles(double d) {
        throw new AbstractMethodError();
    }

    public double toLardas(double d) {
        throw new AbstractMethodError();
    }

    public double toFeets(double d) {
        throw new AbstractMethodError();
    }

    public double toInchs(double d) {
        throw new AbstractMethodError();
    }
}
