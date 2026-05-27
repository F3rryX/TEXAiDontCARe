package com.texa.carelib.profile.locale;

/* JADX INFO: loaded from: classes2.dex */
public enum MassUnit {
    GRAM { // from class: com.texa.carelib.profile.locale.MassUnit.1
        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toGram(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toKilogram(double d) {
            return d / MassUnit.KG;
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toOunce(double d) {
            return d * MassUnit.O;
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toPound(double d) {
            return d * MassUnit.P;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "g";
        }
    },
    KILOGRAM { // from class: com.texa.carelib.profile.locale.MassUnit.2
        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toGram(double d) {
            return d * MassUnit.KG;
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toKilogram(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "kg";
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toOunce(double d) {
            return GRAM.toOunce(toGram(d));
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toPound(double d) {
            return GRAM.toPound(toGram(d));
        }
    },
    OUNCE { // from class: com.texa.carelib.profile.locale.MassUnit.3
        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toGram(double d) {
            return d / MassUnit.O;
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toOunce(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "oz";
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toKilogram(double d) {
            return GRAM.toKilogram(toGram(d));
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toPound(double d) {
            return GRAM.toPound(toGram(d));
        }
    },
    POUND { // from class: com.texa.carelib.profile.locale.MassUnit.4
        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toGram(double d) {
            return d / MassUnit.P;
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toPound(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "lb";
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toKilogram(double d) {
            return GRAM.toKilogram(toGram(d));
        }

        @Override // com.texa.carelib.profile.locale.MassUnit
        public double toOunce(double d) {
            return GRAM.toOunce(toGram(d));
        }
    };

    private static final double KG = 1000.0d;
    private static final double O = 0.03527396194958d;
    private static final double P = 0.002204622621849d;

    public long convert(double d, MassUnit massUnit) {
        throw new AbstractMethodError();
    }

    public double toGram(double d) {
        throw new AbstractMethodError();
    }

    public double toKilogram(double d) {
        throw new AbstractMethodError();
    }

    public double toOunce(double d) {
        throw new AbstractMethodError();
    }

    public double toPound(double d) {
        throw new AbstractMethodError();
    }
}
