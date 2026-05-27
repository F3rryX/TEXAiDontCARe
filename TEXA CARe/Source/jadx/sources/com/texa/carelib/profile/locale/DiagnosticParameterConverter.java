package com.texa.carelib.profile.locale;

import android.util.LongSparseArray;
import com.texa.carelib.diagresources.MeasurementUnit;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosticParameterConverter {
    private MeasurementSystem mMeasurementSystem;
    private final LongSparseArray<ConversionFunction> mConversionFunctionMap = new LongSparseArray<>();
    private final LongSparseArray<String> mMeasurementUnitMap = new LongSparseArray<>();

    /* JADX INFO: Access modifiers changed from: private */
    interface ConversionFunction {
        double convert(double d);
    }

    public DiagnosticParameterConverter() {
        setMeasurementSystem(MeasurementSystem.getDefault());
    }

    public MeasurementSystem getMeasurementSystem() {
        return this.mMeasurementSystem;
    }

    public synchronized double convert(double d, long j) {
        if (this.mConversionFunctionMap.get(j) == null) {
            return d;
        }
        return (float) r4.convert(d);
    }

    public synchronized String convert(double d, long j, int i) {
        ConversionFunction conversionFunction = this.mConversionFunctionMap.get(j);
        if (conversionFunction != null) {
            d = (float) conversionFunction.convert(d);
        }
        return String.format(Locale.getDefault(), String.format(Locale.US, "%%.%df", Integer.valueOf(i)), Double.valueOf(d));
    }

    public synchronized void convert(double d, long j, ConvertResultCallback convertResultCallback) {
        convertResultCallback.onResult(convert(d, j), getMeasurementUnit(j));
    }

    public synchronized void convert(double d, long j, int i, ConvertResultFormattedCallback convertResultFormattedCallback) {
        convertResultFormattedCallback.onFormattedResult(convert(d, j, i), getMeasurementUnit(j));
    }

    public synchronized String getMeasurementUnit(long j) {
        MeasurementUnit measurementUnitFindById;
        String str = this.mMeasurementUnitMap.get(j);
        return (str != null || (measurementUnitFindById = MeasurementUnit.findById(j)) == null) ? str : measurementUnitFindById.toString();
    }

    public DiagnosticParameterConverter addConversion(long j, String str, ConversionFunction conversionFunction) {
        this.mMeasurementUnitMap.put(j, str);
        this.mConversionFunctionMap.put(j, conversionFunction);
        return this;
    }

    public DiagnosticParameterConverter setMeasurementSystem(MeasurementSystem measurementSystem) {
        this.mMeasurementSystem = measurementSystem;
        this.mConversionFunctionMap.clear();
        this.mMeasurementUnitMap.clear();
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$profile$locale$MeasurementSystem[this.mMeasurementSystem.ordinal()];
        if (i == 1) {
            initConversionFunctionsForUnitedStatesSystem(this.mConversionFunctionMap);
        } else if (i == 2) {
            initConversionFunctionsForImperialSystem(this.mConversionFunctionMap);
        }
        return this;
    }

    /* JADX INFO: renamed from: com.texa.carelib.profile.locale.DiagnosticParameterConverter$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$profile$locale$MeasurementSystem;

        static {
            int[] iArr = new int[MeasurementSystem.values().length];
            $SwitchMap$com$texa$carelib$profile$locale$MeasurementSystem = iArr;
            try {
                iArr[MeasurementSystem.UnitedStates.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$profile$locale$MeasurementSystem[MeasurementSystem.ImperialUK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public abstract class ConvertResultCallback {
        abstract void onResult(double d, String str);

        public ConvertResultCallback() {
        }
    }

    public abstract class ConvertResultFormattedCallback {
        abstract void onFormattedResult(String str, String str2);

        public ConvertResultFormattedCallback() {
        }
    }

    private void initConversionFunctionsForUnitedStatesSystem(LongSparseArray<ConversionFunction> longSparseArray) {
        long id = MeasurementUnit.CELSIUS_DEGREE.getId();
        String string = TemperatureUnit.FAHRENHEIT.toString();
        TemperatureUnit temperatureUnit = TemperatureUnit.CELSIUS;
        temperatureUnit.getClass();
        addConversion(id, string, new DiagnosticParameterConverter$$ExternalSyntheticLambda1(temperatureUnit));
        long id2 = MeasurementUnit.GRAM.getId();
        String string2 = MassUnit.OUNCE.toString();
        MassUnit massUnit = MassUnit.GRAM;
        massUnit.getClass();
        addConversion(id2, string2, new DiagnosticParameterConverter$$ExternalSyntheticLambda11(massUnit));
        long id3 = MeasurementUnit.GRAM_PER_HOUR.getId();
        String string3 = MassFlowRateUnit.OUNCE_PER_HOUR.toString();
        MassFlowRateUnit massFlowRateUnit = MassFlowRateUnit.GRAM_PER_HOUR;
        massFlowRateUnit.getClass();
        addConversion(id3, string3, new DiagnosticParameterConverter$$ExternalSyntheticLambda8(massFlowRateUnit));
        long id4 = MeasurementUnit.GRAM_PER_SECOND.getId();
        String string4 = MassFlowRateUnit.OUNCE_PER_SECOND.toString();
        MassFlowRateUnit massFlowRateUnit2 = MassFlowRateUnit.GRAM_PER_SECOND;
        massFlowRateUnit2.getClass();
        addConversion(id4, string4, new DiagnosticParameterConverter$$ExternalSyntheticLambda9(massFlowRateUnit2));
        long id5 = MeasurementUnit.KILOGRAM.getId();
        String string5 = MassUnit.POUND.toString();
        MassUnit massUnit2 = MassUnit.KILOGRAM;
        massUnit2.getClass();
        addConversion(id5, string5, new DiagnosticParameterConverter$$ExternalSyntheticLambda12(massUnit2));
        long id6 = MeasurementUnit.KILOGRAM_PER_HOUR.getId();
        String string6 = MassFlowRateUnit.POUND_PER_HOUR.toString();
        MassFlowRateUnit massFlowRateUnit3 = MassFlowRateUnit.KILOGRAM_PER_HOUR;
        massFlowRateUnit3.getClass();
        addConversion(id6, string6, new DiagnosticParameterConverter$$ExternalSyntheticLambda10(massFlowRateUnit3));
        long id7 = MeasurementUnit.KILOMETER.getId();
        String string7 = DistanceUnit.MILES.toString();
        DistanceUnit distanceUnit = DistanceUnit.KILOMETERS;
        distanceUnit.getClass();
        addConversion(id7, string7, new DiagnosticParameterConverter$$ExternalSyntheticLambda7(distanceUnit));
        long id8 = MeasurementUnit.KILOMETER_PER_HOUR.getId();
        String string8 = SpeedUnit.MILES_PER_HOUR.toString();
        SpeedUnit speedUnit = SpeedUnit.KILOMETERS_PER_HOUR;
        speedUnit.getClass();
        addConversion(id8, string8, new DiagnosticParameterConverter$$ExternalSyntheticLambda14(speedUnit));
        long id9 = MeasurementUnit.KILOPASCAL.getId();
        String string9 = PressureUnit.PSI.toString();
        PressureUnit pressureUnit = PressureUnit.KILOPASCAL;
        pressureUnit.getClass();
        addConversion(id9, string9, new DiagnosticParameterConverter$$ExternalSyntheticLambda13(pressureUnit));
        long id10 = MeasurementUnit.LITER.getId();
        String string10 = VolumeUnit.GALLON_USA.toString();
        final VolumeUnit volumeUnit = VolumeUnit.LITER;
        volumeUnit.getClass();
        addConversion(id10, string10, new ConversionFunction() { // from class: com.texa.carelib.profile.locale.DiagnosticParameterConverter$$ExternalSyntheticLambda5
            @Override // com.texa.carelib.profile.locale.DiagnosticParameterConverter.ConversionFunction
            public final double convert(double d) {
                return volumeUnit.toGallonUSA(d);
            }
        });
        long id11 = MeasurementUnit.LITER_PER_HOUR.getId();
        String string11 = VolumeFlowRateUnit.GALLON_USA_PER_HOUR.toString();
        final VolumeFlowRateUnit volumeFlowRateUnit = VolumeFlowRateUnit.LITER_PER_HOUR;
        volumeFlowRateUnit.getClass();
        addConversion(id11, string11, new ConversionFunction() { // from class: com.texa.carelib.profile.locale.DiagnosticParameterConverter$$ExternalSyntheticLambda3
            @Override // com.texa.carelib.profile.locale.DiagnosticParameterConverter.ConversionFunction
            public final double convert(double d) {
                return volumeFlowRateUnit.toGallonUSAPerHour(d);
            }
        });
        long id12 = MeasurementUnit.METER_PER_SQUARE_SECOND.getId();
        String string12 = AccelerationUnit.YARDS_PER_SQUARE_SECOND.toString();
        AccelerationUnit accelerationUnit = AccelerationUnit.METER_PER_SQUARE_SECOND;
        accelerationUnit.getClass();
        addConversion(id12, string12, new DiagnosticParameterConverter$$ExternalSyntheticLambda0(accelerationUnit));
        long id13 = MeasurementUnit.MILLIGRAM_PER_CYCLE.getId();
        String string13 = CycleMassFlowRateUnit.GRAIN_PER_CYCLE.toString();
        CycleMassFlowRateUnit cycleMassFlowRateUnit = CycleMassFlowRateUnit.MILLIGRAM_PER_CYCLE;
        cycleMassFlowRateUnit.getClass();
        addConversion(id13, string13, new DiagnosticParameterConverter$$ExternalSyntheticLambda6(cycleMassFlowRateUnit));
    }

    private void initConversionFunctionsForImperialSystem(LongSparseArray<ConversionFunction> longSparseArray) {
        long id = MeasurementUnit.CELSIUS_DEGREE.getId();
        String string = TemperatureUnit.FAHRENHEIT.toString();
        TemperatureUnit temperatureUnit = TemperatureUnit.CELSIUS;
        temperatureUnit.getClass();
        addConversion(id, string, new DiagnosticParameterConverter$$ExternalSyntheticLambda1(temperatureUnit));
        long id2 = MeasurementUnit.GRAM.getId();
        String string2 = MassUnit.OUNCE.toString();
        MassUnit massUnit = MassUnit.GRAM;
        massUnit.getClass();
        addConversion(id2, string2, new DiagnosticParameterConverter$$ExternalSyntheticLambda11(massUnit));
        long id3 = MeasurementUnit.GRAM_PER_HOUR.getId();
        String string3 = MassFlowRateUnit.OUNCE_PER_HOUR.toString();
        MassFlowRateUnit massFlowRateUnit = MassFlowRateUnit.GRAM_PER_HOUR;
        massFlowRateUnit.getClass();
        addConversion(id3, string3, new DiagnosticParameterConverter$$ExternalSyntheticLambda8(massFlowRateUnit));
        long id4 = MeasurementUnit.GRAM_PER_SECOND.getId();
        String string4 = MassFlowRateUnit.OUNCE_PER_SECOND.toString();
        MassFlowRateUnit massFlowRateUnit2 = MassFlowRateUnit.GRAM_PER_SECOND;
        massFlowRateUnit2.getClass();
        addConversion(id4, string4, new DiagnosticParameterConverter$$ExternalSyntheticLambda9(massFlowRateUnit2));
        long id5 = MeasurementUnit.KILOGRAM.getId();
        String string5 = MassUnit.POUND.toString();
        MassUnit massUnit2 = MassUnit.KILOGRAM;
        massUnit2.getClass();
        addConversion(id5, string5, new DiagnosticParameterConverter$$ExternalSyntheticLambda12(massUnit2));
        long id6 = MeasurementUnit.KILOGRAM_PER_HOUR.getId();
        String string6 = MassFlowRateUnit.POUND_PER_HOUR.toString();
        MassFlowRateUnit massFlowRateUnit3 = MassFlowRateUnit.KILOGRAM_PER_HOUR;
        massFlowRateUnit3.getClass();
        addConversion(id6, string6, new DiagnosticParameterConverter$$ExternalSyntheticLambda10(massFlowRateUnit3));
        long id7 = MeasurementUnit.KILOMETER.getId();
        String string7 = DistanceUnit.MILES.toString();
        DistanceUnit distanceUnit = DistanceUnit.KILOMETERS;
        distanceUnit.getClass();
        addConversion(id7, string7, new DiagnosticParameterConverter$$ExternalSyntheticLambda7(distanceUnit));
        long id8 = MeasurementUnit.KILOMETER_PER_HOUR.getId();
        String string8 = SpeedUnit.MILES_PER_HOUR.toString();
        SpeedUnit speedUnit = SpeedUnit.KILOMETERS_PER_HOUR;
        speedUnit.getClass();
        addConversion(id8, string8, new DiagnosticParameterConverter$$ExternalSyntheticLambda14(speedUnit));
        long id9 = MeasurementUnit.KILOPASCAL.getId();
        String string9 = PressureUnit.PSI.toString();
        PressureUnit pressureUnit = PressureUnit.KILOPASCAL;
        pressureUnit.getClass();
        addConversion(id9, string9, new DiagnosticParameterConverter$$ExternalSyntheticLambda13(pressureUnit));
        long id10 = MeasurementUnit.LITER.getId();
        String string10 = VolumeUnit.GALLON_UK.toString();
        final VolumeUnit volumeUnit = VolumeUnit.LITER;
        volumeUnit.getClass();
        addConversion(id10, string10, new ConversionFunction() { // from class: com.texa.carelib.profile.locale.DiagnosticParameterConverter$$ExternalSyntheticLambda4
            @Override // com.texa.carelib.profile.locale.DiagnosticParameterConverter.ConversionFunction
            public final double convert(double d) {
                return volumeUnit.toGallonUK(d);
            }
        });
        long id11 = MeasurementUnit.LITER_PER_HOUR.getId();
        String string11 = VolumeFlowRateUnit.GALLON_UK_PER_HOUR.toString();
        final VolumeFlowRateUnit volumeFlowRateUnit = VolumeFlowRateUnit.LITER_PER_HOUR;
        volumeFlowRateUnit.getClass();
        addConversion(id11, string11, new ConversionFunction() { // from class: com.texa.carelib.profile.locale.DiagnosticParameterConverter$$ExternalSyntheticLambda2
            @Override // com.texa.carelib.profile.locale.DiagnosticParameterConverter.ConversionFunction
            public final double convert(double d) {
                return volumeFlowRateUnit.toGallonUKPerHour(d);
            }
        });
        long id12 = MeasurementUnit.METER_PER_SQUARE_SECOND.getId();
        String string12 = AccelerationUnit.YARDS_PER_SQUARE_SECOND.toString();
        AccelerationUnit accelerationUnit = AccelerationUnit.METER_PER_SQUARE_SECOND;
        accelerationUnit.getClass();
        addConversion(id12, string12, new DiagnosticParameterConverter$$ExternalSyntheticLambda0(accelerationUnit));
        long id13 = MeasurementUnit.MILLIGRAM_PER_CYCLE.getId();
        String string13 = CycleMassFlowRateUnit.GRAIN_PER_CYCLE.toString();
        CycleMassFlowRateUnit cycleMassFlowRateUnit = CycleMassFlowRateUnit.MILLIGRAM_PER_CYCLE;
        cycleMassFlowRateUnit.getClass();
        addConversion(id13, string13, new DiagnosticParameterConverter$$ExternalSyntheticLambda6(cycleMassFlowRateUnit));
    }
}
