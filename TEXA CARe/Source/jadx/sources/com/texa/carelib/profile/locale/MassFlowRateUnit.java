package com.texa.carelib.profile.locale;

/* JADX INFO: loaded from: classes2.dex */
public enum MassFlowRateUnit {
    GRAM_PER_SECOND { // from class: com.texa.carelib.profile.locale.MassFlowRateUnit.1
        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerSecond(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerSecond(double d) {
            return d / MassFlowRateUnit.KG;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerSecond(double d) {
            return d * MassFlowRateUnit.O;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerSecond(double d) {
            return d * MassFlowRateUnit.P;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "g/s";
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerHour(double d) {
            return toGramPerSecond(d) * MassFlowRateUnit.SECOND_PER_HOUR;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerHour(double d) {
            return toKilogramPerSecond(d) * MassFlowRateUnit.SECOND_PER_HOUR;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerHour(double d) {
            return toOuncePerSecond(d) * MassFlowRateUnit.SECOND_PER_HOUR;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerHour(double d) {
            return toPoundPerSecond(d) * MassFlowRateUnit.SECOND_PER_HOUR;
        }
    },
    GRAM_PER_HOUR { // from class: com.texa.carelib.profile.locale.MassFlowRateUnit.2
        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerHour(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerSecond(double d) {
            return d / MassFlowRateUnit.SECOND_PER_HOUR;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "g/h";
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerSecond(double d) {
            return GRAM_PER_SECOND.toKilogramPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerHour(double d) {
            return GRAM_PER_SECOND.toKilogramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerSecond(double d) {
            return GRAM_PER_SECOND.toOuncePerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerHour(double d) {
            return GRAM_PER_SECOND.toOuncePerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerSecond(double d) {
            return GRAM_PER_SECOND.toPoundPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerHour(double d) {
            return GRAM_PER_SECOND.toPoundPerHour(toGramPerSecond(d));
        }
    },
    KILOGRAM_PER_SECOND { // from class: com.texa.carelib.profile.locale.MassFlowRateUnit.3
        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerSecond(double d) {
            return d * MassFlowRateUnit.KG;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerSecond(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "kg/s";
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerHour(double d) {
            return GRAM_PER_SECOND.toGramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerHour(double d) {
            return GRAM_PER_SECOND.toKilogramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerSecond(double d) {
            return GRAM_PER_SECOND.toOuncePerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerHour(double d) {
            return GRAM_PER_SECOND.toOuncePerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerSecond(double d) {
            return GRAM_PER_SECOND.toPoundPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerHour(double d) {
            return GRAM_PER_SECOND.toPoundPerHour(toGramPerSecond(d));
        }
    },
    KILOGRAM_PER_HOUR { // from class: com.texa.carelib.profile.locale.MassFlowRateUnit.4
        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerSecond(double d) {
            return (d / MassFlowRateUnit.SECOND_PER_HOUR) * MassFlowRateUnit.KG;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerHour(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "kg/h";
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerHour(double d) {
            return GRAM_PER_SECOND.toGramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerSecond(double d) {
            return GRAM_PER_SECOND.toKilogramPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerSecond(double d) {
            return GRAM_PER_SECOND.toOuncePerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerHour(double d) {
            return GRAM_PER_SECOND.toOuncePerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerSecond(double d) {
            return GRAM_PER_SECOND.toPoundPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerHour(double d) {
            return GRAM_PER_SECOND.toPoundPerHour(toGramPerSecond(d));
        }
    },
    OUNCE_PER_SECOND { // from class: com.texa.carelib.profile.locale.MassFlowRateUnit.5
        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerSecond(double d) {
            return d / MassFlowRateUnit.O;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerSecond(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "oz/s";
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerHour(double d) {
            return GRAM_PER_SECOND.toGramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerSecond(double d) {
            return GRAM_PER_SECOND.toKilogramPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerHour(double d) {
            return GRAM_PER_SECOND.toKilogramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerHour(double d) {
            return GRAM_PER_SECOND.toOuncePerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerSecond(double d) {
            return GRAM_PER_SECOND.toPoundPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerHour(double d) {
            return GRAM_PER_SECOND.toPoundPerHour(toGramPerSecond(d));
        }
    },
    OUNCE_PER_HOUR { // from class: com.texa.carelib.profile.locale.MassFlowRateUnit.6
        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerSecond(double d) {
            return (d / MassFlowRateUnit.O) / MassFlowRateUnit.SECOND_PER_HOUR;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerHour(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "oz/h";
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerHour(double d) {
            return GRAM_PER_SECOND.toGramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerSecond(double d) {
            return GRAM_PER_SECOND.toKilogramPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerHour(double d) {
            return GRAM_PER_SECOND.toKilogramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerSecond(double d) {
            return GRAM_PER_SECOND.toOuncePerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerSecond(double d) {
            return GRAM_PER_SECOND.toPoundPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerHour(double d) {
            return GRAM_PER_SECOND.toPoundPerHour(toGramPerSecond(d));
        }
    },
    POUND_PER_SECOND { // from class: com.texa.carelib.profile.locale.MassFlowRateUnit.7
        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerSecond(double d) {
            return d / MassFlowRateUnit.P;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerSecond(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "lb/s";
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerHour(double d) {
            return GRAM_PER_SECOND.toGramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerSecond(double d) {
            return GRAM_PER_SECOND.toKilogramPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerHour(double d) {
            return GRAM_PER_SECOND.toKilogramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerSecond(double d) {
            return GRAM_PER_SECOND.toOuncePerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerHour(double d) {
            return GRAM_PER_SECOND.toOuncePerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerHour(double d) {
            return GRAM_PER_SECOND.toPoundPerHour(toGramPerSecond(d));
        }
    },
    POUND_PER_HOUR { // from class: com.texa.carelib.profile.locale.MassFlowRateUnit.8
        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerSecond(double d) {
            return (d / MassFlowRateUnit.P) / MassFlowRateUnit.SECOND_PER_HOUR;
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerHour(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "lb/h";
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toGramPerHour(double d) {
            return GRAM_PER_SECOND.toGramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerSecond(double d) {
            return GRAM_PER_SECOND.toKilogramPerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toKilogramPerHour(double d) {
            return GRAM_PER_SECOND.toKilogramPerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerSecond(double d) {
            return GRAM_PER_SECOND.toOuncePerSecond(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toOuncePerHour(double d) {
            return GRAM_PER_SECOND.toOuncePerHour(toGramPerSecond(d));
        }

        @Override // com.texa.carelib.profile.locale.MassFlowRateUnit
        public double toPoundPerSecond(double d) {
            return GRAM_PER_SECOND.toPoundPerSecond(toGramPerSecond(d));
        }
    };

    private static final double KG = 1000.0d;
    private static final double O = 0.03527396194958d;
    private static final double P = 0.002204622621849d;
    private static final double SECOND_PER_HOUR = 3600.0d;

    public long convert(double d, MassFlowRateUnit massFlowRateUnit) {
        throw new AbstractMethodError();
    }

    public double toGramPerSecond(double d) {
        throw new AbstractMethodError();
    }

    public double toGramPerHour(double d) {
        throw new AbstractMethodError();
    }

    public double toKilogramPerSecond(double d) {
        throw new AbstractMethodError();
    }

    public double toKilogramPerHour(double d) {
        throw new AbstractMethodError();
    }

    public double toOuncePerSecond(double d) {
        throw new AbstractMethodError();
    }

    public double toOuncePerHour(double d) {
        throw new AbstractMethodError();
    }

    public double toPoundPerSecond(double d) {
        throw new AbstractMethodError();
    }

    public double toPoundPerHour(double d) {
        throw new AbstractMethodError();
    }
}
