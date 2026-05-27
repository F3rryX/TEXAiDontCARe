package com.texa.carelib.profile.locale;

/* JADX INFO: loaded from: classes2.dex */
public enum VolumeFlowRateUnit {
    LITER_PER_HOUR { // from class: com.texa.carelib.profile.locale.VolumeFlowRateUnit.1
        @Override // com.texa.carelib.profile.locale.VolumeFlowRateUnit
        public double toGallonUKPerHour(double d) {
            return d * VolumeFlowRateUnit.G_UK;
        }

        @Override // com.texa.carelib.profile.locale.VolumeFlowRateUnit
        public double toGallonUSAPerHour(double d) {
            return d * VolumeFlowRateUnit.G_US;
        }

        @Override // com.texa.carelib.profile.locale.VolumeFlowRateUnit
        public double toLiterPerHour(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "l/h";
        }
    },
    GALLON_UK_PER_HOUR { // from class: com.texa.carelib.profile.locale.VolumeFlowRateUnit.2
        @Override // com.texa.carelib.profile.locale.VolumeFlowRateUnit
        public double toGallonUKPerHour(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.VolumeFlowRateUnit
        public double toLiterPerHour(double d) {
            return d / VolumeFlowRateUnit.G_UK;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "galUK/h";
        }

        @Override // com.texa.carelib.profile.locale.VolumeFlowRateUnit
        public double toGallonUSAPerHour(double d) {
            return LITER_PER_HOUR.toGallonUSAPerHour(toLiterPerHour(d));
        }
    },
    GALLON_USA_PER_HOUR { // from class: com.texa.carelib.profile.locale.VolumeFlowRateUnit.3
        @Override // com.texa.carelib.profile.locale.VolumeFlowRateUnit
        public double toGallonUSAPerHour(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.VolumeFlowRateUnit
        public double toLiterPerHour(double d) {
            return d / VolumeFlowRateUnit.G_US;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "galUS/h";
        }

        @Override // com.texa.carelib.profile.locale.VolumeFlowRateUnit
        public double toGallonUKPerHour(double d) {
            return LITER_PER_HOUR.toGallonUKPerHour(toLiterPerHour(d));
        }
    };

    private static final double G_UK = 0.219969248299d;
    private static final double G_US = 0.2641720523581d;

    public long convert(double d, VolumeFlowRateUnit volumeFlowRateUnit) {
        throw new AbstractMethodError();
    }

    public double toLiterPerHour(double d) {
        throw new AbstractMethodError();
    }

    public double toGallonUKPerHour(double d) {
        throw new AbstractMethodError();
    }

    public double toGallonUSAPerHour(double d) {
        throw new AbstractMethodError();
    }
}
