package com.texa.carelib.profile.locale;

/* JADX INFO: loaded from: classes2.dex */
public enum VolumeUnit {
    LITER { // from class: com.texa.carelib.profile.locale.VolumeUnit.1
        @Override // com.texa.carelib.profile.locale.VolumeUnit
        public double toGallonUK(double d) {
            return d * VolumeUnit.G_UK;
        }

        @Override // com.texa.carelib.profile.locale.VolumeUnit
        public double toGallonUSA(double d) {
            return d * VolumeUnit.G_US;
        }

        @Override // com.texa.carelib.profile.locale.VolumeUnit
        public double toLiter(double d) {
            return d;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "l";
        }
    },
    GALLON_UK { // from class: com.texa.carelib.profile.locale.VolumeUnit.2
        @Override // com.texa.carelib.profile.locale.VolumeUnit
        public double toGallonUK(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.VolumeUnit
        public double toLiter(double d) {
            return d / VolumeUnit.G_UK;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "galUK";
        }

        @Override // com.texa.carelib.profile.locale.VolumeUnit
        public double toGallonUSA(double d) {
            return LITER.toGallonUSA(toLiter(d));
        }
    },
    GALLON_USA { // from class: com.texa.carelib.profile.locale.VolumeUnit.3
        @Override // com.texa.carelib.profile.locale.VolumeUnit
        public double toGallonUSA(double d) {
            return d;
        }

        @Override // com.texa.carelib.profile.locale.VolumeUnit
        public double toLiter(double d) {
            return d / VolumeUnit.G_US;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "galUS";
        }

        @Override // com.texa.carelib.profile.locale.VolumeUnit
        public double toGallonUK(double d) {
            return LITER.toGallonUK(toLiter(d));
        }
    };

    private static final double G_UK = 0.219969248299d;
    private static final double G_US = 0.2641720523581d;

    public long convert(double d, VolumeUnit volumeUnit) {
        throw new AbstractMethodError();
    }

    public double toLiter(double d) {
        throw new AbstractMethodError();
    }

    public double toGallonUK(double d) {
        throw new AbstractMethodError();
    }

    public double toGallonUSA(double d) {
        throw new AbstractMethodError();
    }
}
