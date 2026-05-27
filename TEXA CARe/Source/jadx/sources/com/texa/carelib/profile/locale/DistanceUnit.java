package com.texa.carelib.profile.locale;

/* JADX INFO: loaded from: classes2.dex */
public enum DistanceUnit {
    METERS { // from class: com.texa.carelib.profile.locale.DistanceUnit.1
        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toCentimeters(double d) {
            return d * DistanceUnit.C2;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toFeets(double d) {
            return d * DistanceUnit.F1;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toInchs(double d) {
            return d * DistanceUnit.I1;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toKilometers(double d) {
            return d / DistanceUnit.C3;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMeters(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMicrometers(double d) {
            return d * DistanceUnit.C6;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMiles(double d) {
            return d * DistanceUnit.M1;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMillimeters(double d) {
            return d * DistanceUnit.C3;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toNanometers(double d) {
            return d * DistanceUnit.C9;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "m";
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toYards(double d) {
            return d * DistanceUnit.L1;
        }
    },
    KILOMETERS { // from class: com.texa.carelib.profile.locale.DistanceUnit.2
        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toKilometers(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMeters(double d) {
            return d * DistanceUnit.C3;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "km";
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toCentimeters(double d) {
            return METERS.toCentimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMillimeters(double d) {
            return METERS.toMillimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMicrometers(double d) {
            return METERS.toMicrometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toNanometers(double d) {
            return METERS.toNanometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMiles(double d) {
            return METERS.toMiles(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toYards(double d) {
            return METERS.toYards(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toFeets(double d) {
            return METERS.toFeets(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toInchs(double d) {
            return METERS.toInchs(toMeters(d));
        }
    },
    CENTIMETERS { // from class: com.texa.carelib.profile.locale.DistanceUnit.3
        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toCentimeters(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMeters(double d) {
            return d / DistanceUnit.C2;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "cm";
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toKilometers(double d) {
            return METERS.toKilometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMillimeters(double d) {
            return METERS.toMillimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMicrometers(double d) {
            return METERS.toMicrometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toNanometers(double d) {
            return METERS.toNanometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMiles(double d) {
            return METERS.toMiles(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toYards(double d) {
            return METERS.toYards(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toFeets(double d) {
            return METERS.toFeets(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toInchs(double d) {
            return METERS.toInchs(toMeters(d));
        }
    },
    MILLIMETERS { // from class: com.texa.carelib.profile.locale.DistanceUnit.4
        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMeters(double d) {
            return d / DistanceUnit.C3;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMillimeters(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "mm";
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toKilometers(double d) {
            return METERS.toKilometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toCentimeters(double d) {
            return METERS.toCentimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMicrometers(double d) {
            return METERS.toMicrometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toNanometers(double d) {
            return METERS.toNanometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMiles(double d) {
            return METERS.toMiles(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toYards(double d) {
            return METERS.toYards(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toFeets(double d) {
            return METERS.toFeets(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toInchs(double d) {
            return METERS.toInchs(toMeters(d));
        }
    },
    MICROMETERS { // from class: com.texa.carelib.profile.locale.DistanceUnit.5
        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMeters(double d) {
            return d / DistanceUnit.C6;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMicrometers(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "μm";
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toKilometers(double d) {
            return METERS.toKilometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toCentimeters(double d) {
            return METERS.toCentimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMillimeters(double d) {
            return METERS.toMillimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toNanometers(double d) {
            return METERS.toNanometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMiles(double d) {
            return METERS.toMiles(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toYards(double d) {
            return METERS.toYards(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toFeets(double d) {
            return METERS.toFeets(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toInchs(double d) {
            return METERS.toInchs(toMeters(d));
        }
    },
    NANOMETERS { // from class: com.texa.carelib.profile.locale.DistanceUnit.6
        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMeters(double d) {
            return d / DistanceUnit.C9;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toNanometers(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "nm";
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toKilometers(double d) {
            return METERS.toKilometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toCentimeters(double d) {
            return METERS.toCentimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMillimeters(double d) {
            return METERS.toMillimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMicrometers(double d) {
            return METERS.toMicrometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMiles(double d) {
            return METERS.toMiles(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toYards(double d) {
            return METERS.toYards(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toFeets(double d) {
            return METERS.toFeets(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toInchs(double d) {
            return METERS.toInchs(toMeters(d));
        }
    },
    MILES { // from class: com.texa.carelib.profile.locale.DistanceUnit.7
        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMeters(double d) {
            return d / DistanceUnit.M1;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMiles(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "mi";
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toKilometers(double d) {
            return METERS.toKilometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toCentimeters(double d) {
            return METERS.toCentimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMillimeters(double d) {
            return METERS.toMillimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMicrometers(double d) {
            return METERS.toMicrometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toNanometers(double d) {
            return METERS.toNanometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toYards(double d) {
            return METERS.toYards(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toFeets(double d) {
            return METERS.toFeets(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toInchs(double d) {
            return METERS.toInchs(toMeters(d));
        }
    },
    YARDS { // from class: com.texa.carelib.profile.locale.DistanceUnit.8
        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMeters(double d) {
            return d / DistanceUnit.L1;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "yd";
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toYards(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toKilometers(double d) {
            return METERS.toKilometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toCentimeters(double d) {
            return METERS.toCentimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMillimeters(double d) {
            return METERS.toMillimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMicrometers(double d) {
            return METERS.toMicrometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toNanometers(double d) {
            return METERS.toNanometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMiles(double d) {
            return METERS.toMiles(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toFeets(double d) {
            return METERS.toFeets(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toInchs(double d) {
            return METERS.toInchs(toMeters(d));
        }
    },
    FEETS { // from class: com.texa.carelib.profile.locale.DistanceUnit.9
        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toFeets(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMeters(double d) {
            return d / DistanceUnit.F1;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "ft";
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toKilometers(double d) {
            return METERS.toKilometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toCentimeters(double d) {
            return METERS.toCentimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMillimeters(double d) {
            return METERS.toMillimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMicrometers(double d) {
            return METERS.toMicrometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toNanometers(double d) {
            return METERS.toNanometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMiles(double d) {
            return METERS.toMiles(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toYards(double d) {
            return METERS.toYards(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toInchs(double d) {
            return METERS.toInchs(toMeters(d));
        }
    },
    INCHS { // from class: com.texa.carelib.profile.locale.DistanceUnit.10
        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toInchs(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMeters(double d) {
            return d / DistanceUnit.I1;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "in";
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toKilometers(double d) {
            return METERS.toKilometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toCentimeters(double d) {
            return METERS.toCentimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMillimeters(double d) {
            return METERS.toMillimeters(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMicrometers(double d) {
            return METERS.toMicrometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toNanometers(double d) {
            return METERS.toNanometers(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toMiles(double d) {
            return METERS.toMiles(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toYards(double d) {
            return METERS.toYards(toMeters(d));
        }

        @Override // com.texa.carelib.profile.locale.DistanceUnit
        public double toFeets(double d) {
            return METERS.toFeets(toMeters(d));
        }
    };

    private static final double C0 = 1.0d;
    private static final double C1 = 10.0d;
    private static final double C2 = 100.0d;
    private static final double C3 = 1000.0d;
    private static final double C4 = 10000.0d;
    private static final double C5 = 100000.0d;
    private static final double C6 = 1000000.0d;
    private static final double C7 = 1.0E7d;
    private static final double C8 = 1.0E8d;
    private static final double C9 = 1.0E9d;
    private static final double F1 = 3.280839895013d;
    private static final double I1 = 39.37007874016d;
    private static final double L1 = 1.093613298338d;
    private static final double M1 = 6.213711922373E-4d;

    public long convert(double d, DistanceUnit distanceUnit) {
        throw new AbstractMethodError();
    }

    public double toMeters(double d) {
        throw new AbstractMethodError();
    }

    public double toKilometers(double d) {
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

    public double toYards(double d) {
        throw new AbstractMethodError();
    }

    public double toFeets(double d) {
        throw new AbstractMethodError();
    }

    public double toInchs(double d) {
        throw new AbstractMethodError();
    }
}
