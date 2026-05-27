package com.texa.careapp.utils.activeandroid;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.texa.careapp.Constants;
import com.texa.careapp.model.VehicleParam;
import com.texa.careapp.utils.MeasureUnit;
import com.texa.carelib.care.vehicle.ValueDataType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleParamSerializer implements JsonSerializer<VehicleParam> {
    public static final String PROPERTY_TYPE = "type";
    public static final String PROPERTY_UNIT = "unit";
    public static final String PROPERTY_VALUE = "value";
    public static final String UNIT_STATE = "STATE";

    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(VehicleParam vehicleParam, Type type, JsonSerializationContext jsonSerializationContext) {
        JsonObject jsonObject = new JsonObject();
        ValueDataType valueDataType = vehicleParam.getValueDataType();
        MeasureUnit unit = vehicleParam.getUnit();
        if (unit != null) {
            jsonObject.addProperty(PROPERTY_UNIT, unit.getServerCode());
        }
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[valueDataType.ordinal()];
        if (i == 1) {
            jsonObject.addProperty("value", String.valueOf(vehicleParam.getValueNumeric()));
            jsonObject.addProperty("type", Constants.VEHICLE_PARAM_TYPE_NUMERIC);
        } else if (i == 2) {
            jsonObject.addProperty("value", Constants.STATUS_CONVERSION_MAP.get(vehicleParam.getValueStatus()));
            jsonObject.addProperty("type", "STATE");
            jsonObject.addProperty(PROPERTY_UNIT, "STATE");
        } else if (i == 3) {
            jsonObject.addProperty("value", vehicleParam.getValueString());
            jsonObject.addProperty("type", Constants.VEHICLE_PARAM_TYPE_STRING);
        }
        return jsonObject;
    }

    /* JADX INFO: renamed from: com.texa.careapp.utils.activeandroid.VehicleParamSerializer$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType;

        static {
            int[] iArr = new int[ValueDataType.values().length];
            $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType = iArr;
            try {
                iArr[ValueDataType.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[ValueDataType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$vehicle$ValueDataType[ValueDataType.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
