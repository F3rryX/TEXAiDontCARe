package com.texa.carelib.diagresources;

import android.util.LongSparseArray;
import androidx.exifinterface.media.ExifInterface;

/* JADX INFO: loaded from: classes2.dex */
public enum MeasurementUnit {
    NONE(0, ""),
    STATUS(1, "*$*$*$"),
    AMPERE(2, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS),
    CELSIUS_DEGREE(3, "°C"),
    CUBIC_METER_PER_SECOND(4, "m³/s"),
    DAY(5, "Days"),
    DEGREE(6, "°"),
    DEGREE_PER_SECOND(7, "°/s"),
    GRAM(8, "g"),
    GRAM_PER_HOUR(9, "g/h"),
    GRAM_PER_SECOND(10, "g/s"),
    HOUR(11, "h"),
    KILOGRAM(12, "kg"),
    KILOGRAM_PER_100_KILOMETERS(13, "kg/100km"),
    KILOGRAM_PER_HOUR(14, "kg/h"),
    KILOMETER(15, "km"),
    KILOMETER_PER_HOUR(16, "km/h"),
    KILOMETER_PER_LITER(17, "km/l"),
    KILOPASCAL(18, "kPa"),
    LITER(19, "l"),
    LITER_PER_100_KILOMETERS(20, "l/100 Km"),
    LITER_PER_HOUR(21, "l/h"),
    METER_PER_SQUARE_SECOND(22, "m/s²"),
    MILLIAMPERE(23, "mA"),
    MILLIGRAM_PER_CYCLE(24, "mg/cycle"),
    MILLIMETER(25, "mm"),
    NEWTON_PER_METER(26, "Nm"),
    OHM(27, "Ohm"),
    PART_PER_MILLION(28, "ppm"),
    PERCENTAGE(29, "%"),
    REVOLUTION_PER_MINUTE(30, "rpm"),
    REVOLUTION_PER_MINUTE_PER_SECOND(31, "rpm/s"),
    SECOND(32, "s"),
    VOLT(33, "V"),
    GRAVITY_ACCELERATION(34, "g"),
    METER(35, "m"),
    MINUTE(36, "minutes"),
    MILLIGRAM_PER_CUBIC_METER(37, "mg/m³"),
    KILOOHM(38, "kOhm"),
    WATT(39, ExifInterface.LONGITUDE_WEST),
    KILOWATT_PER_HOUR(40, "kW/h"),
    AMPERE_PER_HOUR(41, "A/h"),
    MICROSECOND(42, "µs"),
    MILLISECOND(43, "ms"),
    HECTOPASCAL_PER_CUBIC_METER_PER_HOUR(44, "hPa/(m³/h)");

    private static final LongSparseArray<MeasurementUnit> dataIDMap = new LongSparseArray<>();
    private long mId;
    private String mSymbol;

    static {
        for (MeasurementUnit measurementUnit : values()) {
            dataIDMap.put(measurementUnit.getId(), measurementUnit);
        }
    }

    MeasurementUnit(long j, String str) {
        this.mId = j;
        this.mSymbol = str;
    }

    public long getId() {
        return this.mId;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mSymbol;
    }

    public static MeasurementUnit findById(long j) {
        return dataIDMap.get(j, null);
    }
}
