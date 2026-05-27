package com.texa.carelib.diagresources;

import android.util.LongSparseArray;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.view.InputDeviceCompat;
import com.caverock.androidsvg.SVG;
import com.texa.careapp.Constants;
import com.texa.careapp.fcm.FcmConstants;
import com.texa.carelib.care.trips.internal.TripStatisticsInfoParserV3;
import com.texa.carelib.care.vehicle.internal.MockDataID;
import com.texa.carelib.communication.Commands;
import okhttp3.internal.http.StatusLine;
import org.objectweb.asm.Opcodes;
import org.spongycastle.apache.bzip2.BZip2Constants;
import org.spongycastle.bcpg.SecretKeyPacket;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes2.dex */
public final class DataID {

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'VEHICLE_SPEED' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class Parameter {
        private static final /* synthetic */ Parameter[] $VALUES;
        public static final Parameter ABSOLUTE_INDUCEMENT_TIME;
        public static final Parameter ABSOLUTE_REAGENT_TANK_LEV;
        public static final Parameter ABSOLUTE_REAGENT_TANK_LEV_2;
        public static final Parameter ABSORB_OIL_PRESSURE_VALVE;
        public static final Parameter ABSORB_RETARDER_VALVE;
        public static final Parameter ABS_ADBLUE_PRESS;
        public static final Parameter ABS_ADBLUE_PRESS_2;
        public static final Parameter ABS_AIR_PRESS_UPSTREAM;
        public static final Parameter ABS_CNG_LEVEL;
        public static final Parameter ABS_DPF_SATURATION_VALUE;
        public static final Parameter ABS_ENGINE_LOAD;
        public static final Parameter ABS_LPG_LEVEL;
        public static final Parameter ABS_TROTTLE_POSITION;
        public static final Parameter ACCELERATION;
        public static final Parameter ACCEL_X_AXIS;
        public static final Parameter ACCEL_Y_AXIS;
        public static final Parameter ACCEL_Z_AXIS;
        public static final Parameter ACC_PEDAL_VOLT;
        public static final Parameter ACTIVE_OPERATION_MODE;
        public static final Parameter ACTUAL_ABS_ENGINE_CLUTCH_TORQUE;
        public static final Parameter ACTUAL_ABS_ENGINE_TORQUE;
        public static final Parameter ACTUAL_CATALYST_EFFICIENCY;
        public static final Parameter ACTUAL_ENGINE_POWER;
        public static final Parameter ACTUAL_REL_ENGINE_TORQUE;
        public static final Parameter ACT_BOOST_PRESSURE_1;
        public static final Parameter ACT_EGR_POSITION;
        public static final Parameter ADAPTIVE_CORRECTION_FACTOR_FOR_AF;
        public static final Parameter ADBLUE_LEVEL_ABS;
        public static final Parameter ADBLUE_LEVEL_REL;
        public static final Parameter ADBLUE_PUMP_POS;
        public static final Parameter ADBLUE_PUMP_RPM;
        public static final Parameter ADBLUE_QUALITY;
        public static final Parameter ADBLUE_QUANTITY;
        public static final Parameter ADBLUE_QUANTITY_REQ;
        public static final Parameter ADBLUE_QUANT_CONS;
        public static final Parameter ADBLUE_TANK_TEMP;
        public static final Parameter ADBLUE_TEMP;
        public static final Parameter AFTER_FUEL_PRESS;
        public static final Parameter AFTER_FUEL_VALVE;
        public static final Parameter AIR_COOLER_TEMP_1;
        public static final Parameter AIR_COOLER_TEMP_2;
        public static final Parameter AIR_FUEL_LAMBDA_CONTROLLER;
        public static final Parameter AIR_PRESSURE_SUPPLY;
        public static final Parameter AIR_PRESS_CIRC1;
        public static final Parameter AIR_PRESS_CIRC2;
        public static final Parameter AIR_PRESS_FRONT;
        public static final Parameter AIR_PRESS_REAR;
        public static final Parameter AIR_PRESS_SUSP;
        public static final Parameter AIR_PRESS_TRAILER;
        public static final Parameter AIR_PRESS_TRANSM;
        public static final Parameter ALL_PCS_VALVE_1;
        public static final Parameter ALL_PCS_VALVE_2;
        public static final Parameter ALL_PCS_VALVE_3;
        public static final Parameter ALL_PCS_VALVE_4;
        public static final Parameter ALL_PCS_VALVE_5;
        public static final Parameter ALL_PCS_VALVE_6;
        public static final Parameter AUX_BATTERY_VOLT;
        public static final Parameter AVERAGE_CNG_RATE;
        public static final Parameter AVERAGE_CNG_RATE_DISTANCE;
        public static final Parameter AVERAGE_FUEL_CONSUMPTION;
        public static final Parameter AVERAGE_FUEL_RATE;
        public static final Parameter AVERAGE_FUEL_RATE_DISTANCE;
        public static final Parameter AVERAGE_LPG_RATE;
        public static final Parameter AVERAGE_LPG_RATE_DISTANCE;
        public static final Parameter BAROMETRIC_PRESS;
        public static final Parameter BATTERY_CHARGE_LEVEL;
        public static final Parameter BATTERY_VOLT;
        public static final Parameter BOOST_PRESS;
        public static final Parameter BOOST_SPEED_1;
        public static final Parameter BOOST_SPEED_2;
        public static final Parameter BOOST_TEMP;
        public static final Parameter BRAKE_PEDAL_POSITION;
        public static final Parameter BRAKE_PRESS;
        public static final Parameter BRAKE_PRESS_VOLT;
        public static final Parameter CALCULATED_FILTERED_CATALYST_EFFICIENCY;
        public static final Parameter CALC_ENGINE_LOAD;
        public static final Parameter CAMSHAFT_SPEED;
        public static final Parameter CATLYST_TEMP_1;
        public static final Parameter CATLYST_TEMP_2;
        public static final Parameter CLR_DTC_DIST;
        public static final Parameter CLUTCH_ENGAGE_POINT_MM;
        public static final Parameter CLUTCH_ENGAGE_POINT_PERC;
        public static final Parameter CLUTCH_PRESS_DISENG;
        public static final Parameter CLUTCH_PRESS_ENG;
        public static final Parameter CMD_EGR_POSITION;
        public static final Parameter CMD_INTAKE_AIR_FLOW;
        public static final Parameter CNG_RATE;
        public static final Parameter CNG_RATE_DISTANCE;
        public static final Parameter CONTROL_UNIT_TEMP;
        public static final Parameter CONV_CLUTCH_PRESS;
        public static final Parameter CONV_TEMP;
        public static final Parameter CONV_TURBINE_RPM;
        public static final Parameter COOLANT_PRESS;
        public static final Parameter COOLANT_TEMPERATURE_DERATE;
        public static final Parameter CRANKSHAFT_SPEED;
        public static final Parameter CRUISING_RANGE;
        public static final Parameter CRUISING_RANGE_EV;
        public static final Parameter CRUISING_RANGE_GAS;
        public static final Parameter CURRENT_TORQUE_LIMIT;
        public static final Parameter DAYS_LAST_OIL_CHANGE;
        public static final Parameter DAYS_LAST_SERVICE;
        public static final Parameter DAYS_NEXT_OIL_CHANGE;
        public static final Parameter DAYS_NEXT_SERVICE;
        public static final Parameter DECELERATION;
        public static final Parameter DESIRED_CATALYST_EFFICIENCY;
        public static final Parameter DISTANCE_AT_NEXT_ADD_AXLE_BRAKES_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_ADD_TRACTION_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_AIR_FILTER_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_BRAKES_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_CARTRIDGE_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_CLUTCH_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_COOLANT_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_DIFFERENTIAL_2_OIL_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_DIFFERENTIAL_FRONT_OIL_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_DIFFERENTIAL_OIL_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_DPF_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_FIRST_SERVICE;
        public static final Parameter DISTANCE_AT_NEXT_FRONT_AXLE_1_BRAKES_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_FRONT_AXLE_2_BRAKES_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_FRONT_AXLE_SERVICE;
        public static final Parameter DISTANCE_AT_NEXT_FRONT_AXLE_STEERING_OIL_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_GEARBOX_OIL_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_OIL_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_PTO1_SERVICE;
        public static final Parameter DISTANCE_AT_NEXT_PTO2_SERVICE;
        public static final Parameter DISTANCE_AT_NEXT_PTO3_SERVICE;
        public static final Parameter DISTANCE_AT_NEXT_REAR_AXLE_1_BRAKES_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_REAR_AXLE_2_BRAKES_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_REAR_AXLE_STEERING_OIL_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_RETARDER_SERV;
        public static final Parameter DISTANCE_AT_NEXT_S6_SERVICE;
        public static final Parameter DISTANCE_AT_NEXT_SERVICE;
        public static final Parameter DISTANCE_AT_NEXT_TRANS_CASE_OIL_CHANGE;
        public static final Parameter DISTANCE_AT_NEXT_UNIV_SERVICE;
        public static final Parameter DISTANCE_AT_NEXT_VALVE_SERVICE;
        public static final Parameter DISTANCE_LAST_OIL_CHANGE;
        public static final Parameter DISTANCE_LAST_SERVICE;
        public static final Parameter DISTANCE_NEXT_ACFILTER_CHANGE;
        public static final Parameter DISTANCE_NEXT_ADD_AXLE_BRAKES_CHANGE;
        public static final Parameter DISTANCE_NEXT_ADD_TRACTION_CHANGE;
        public static final Parameter DISTANCE_NEXT_ADPF_CHANGE;
        public static final Parameter DISTANCE_NEXT_AIR_FILTER_CHANGE;
        public static final Parameter DISTANCE_NEXT_BRAKES_CHANGE;
        public static final Parameter DISTANCE_NEXT_CARTRIDGE_CHANGE;
        public static final Parameter DISTANCE_NEXT_CHECK;
        public static final Parameter DISTANCE_NEXT_CLUTCH_CHANGE;
        public static final Parameter DISTANCE_NEXT_COOLANT_CHANGE;
        public static final Parameter DISTANCE_NEXT_DIFFERENTIAL_2_OIL_CHANGE;
        public static final Parameter DISTANCE_NEXT_DIFFERENTIAL_FRONT_OIL_CHANGE;
        public static final Parameter DISTANCE_NEXT_DIFFERENTIAL_OIL_CHANGE;
        public static final Parameter DISTANCE_NEXT_DPF_CHANGE;
        public static final Parameter DISTANCE_NEXT_DPF_SERVICE;
        public static final Parameter DISTANCE_NEXT_FIRST_SERVICE;
        public static final Parameter DISTANCE_NEXT_FNTPAD_CHANGE;
        public static final Parameter DISTANCE_NEXT_FRONT_AXLE_1_BRAKES_CHANGE;
        public static final Parameter DISTANCE_NEXT_FRONT_AXLE_2_BRAKES_CHANGE;
        public static final Parameter DISTANCE_NEXT_FRONT_AXLE_SERVICE;
        public static final Parameter DISTANCE_NEXT_FRONT_AXLE_STEERING_OIL_CHANGE;
        public static final Parameter DISTANCE_NEXT_GEARBOX_OIL_CHANGE;
        public static final Parameter DISTANCE_NEXT_OIL_CHANGE;
        public static final Parameter DISTANCE_NEXT_PTO1_SERVICE;
        public static final Parameter DISTANCE_NEXT_PTO2_SERVICE;
        public static final Parameter DISTANCE_NEXT_PTO3_SERVICE;
        public static final Parameter DISTANCE_NEXT_REAR_AXLE_1_BRAKES_CHANGE;
        public static final Parameter DISTANCE_NEXT_REAR_AXLE_2_BRAKES_CHANGE;
        public static final Parameter DISTANCE_NEXT_REAR_AXLE_STEERING_OIL_CHANGE;
        public static final Parameter DISTANCE_NEXT_RETARDER_SERV;
        public static final Parameter DISTANCE_NEXT_RRPAD_CHANGE;
        public static final Parameter DISTANCE_NEXT_S6_SERVICE;
        public static final Parameter DISTANCE_NEXT_SERVICE;
        public static final Parameter DISTANCE_NEXT_SPARKPLUGS_CHANGE;
        public static final Parameter DISTANCE_NEXT_TRANS_CASE_OIL_CHANGE;
        public static final Parameter DISTANCE_NEXT_UNIV_SERVICE;
        public static final Parameter DISTANCE_NEXT_VALVE_SERVICE;
        public static final Parameter DISTANCE_WITH_MIL_ON;
        public static final Parameter DIST_LAST_REGEN;
        public static final Parameter DOC_IN_PRESS;
        public static final Parameter DOC_IN_TEMP;
        public static final Parameter DOC_OUT_TEMP;
        public static final Parameter DOSER_VALVE_DUTY;
        public static final Parameter DOSING_CORRECTION_FACTOR;
        public static final Parameter DOWNSTREAM_CAT_NOX;
        public static final Parameter DOWNSTREAM_CAT_NOX_CALCULATED;
        public static final Parameter DPF_ASH_LOAD;
        public static final Parameter DPF_DIFF_PRESSURE;
        public static final Parameter DPF_FLOW_RESISTANCE;
        public static final Parameter DPF_IN_PRESS;
        public static final Parameter DPF_IN_TEMP;
        public static final Parameter DPF_IN_TEMP_2;
        public static final Parameter DPF_OBSTRUCT_DEGREE;
        public static final Parameter DPF_OUT_PRESS;
        public static final Parameter DPF_OUT_TEMP;
        public static final Parameter DPF_OUT_TEMP_2;
        public static final Parameter DPF_SOOT_LOAD;
        public static final Parameter DPF_TEMP_DOWNSTREAM;
        public static final Parameter DPF_TEMP_UPSTREAM;
        public static final Parameter DRIVER_1_CDDT;
        public static final Parameter DRIVER_1_NOT9HDDTE;
        public static final Parameter DRIVER_1_NOURDRP;
        public static final Parameter DRIVER_2WEEK_DRIVING_1;
        public static final Parameter DRIVER_2WEEK_DRIVING_2;
        public static final Parameter DRIVER_ACT_ACTIVITY_1;
        public static final Parameter DRIVER_ACT_ACTIVITY_2;
        public static final Parameter DRIVER_ACT_BREAK_1;
        public static final Parameter DRIVER_ACT_BREAK_2;
        public static final Parameter DRIVER_ACT_DRIVING_1;
        public static final Parameter DRIVER_ACT_DRIVING_2;
        public static final Parameter DSOCKET_BATTERY_VOLT;
        public static final Parameter DTC_CNT;
        public static final Parameter EGR_DIFF_PRESS;
        public static final Parameter EGR_PRESS;
        public static final Parameter EGR_TEMP;
        public static final Parameter EGR_TEMP_1;
        public static final Parameter EGR_TEMP_2;
        public static final Parameter EGR_TEMP_3;
        public static final Parameter ENGINE_BRAKE_VALVE;
        public static final Parameter ENGINE_CMU_PERC_REQ_DEF;
        public static final Parameter ENGINE_COOLANT_LEV;
        public static final Parameter ENGINE_CORRECTION_FACTOR;
        public static final Parameter ENGINE_CRANKCASE_PRESSURE;
        public static final Parameter ENGINE_EXTENDED_CRANKCASE_PRESSURE;
        public static final Parameter ENGINE_HOURS;
        public static final Parameter ENGINE_IDLE_SETPOINT_LOW_RPM;
        public static final Parameter ENGINE_OIL_LEV;
        public static final Parameter ENGINE_OIL_TEMP;
        public static final Parameter ENGINE_PERC_CMU_IST_ABS_REAL;
        public static final Parameter ENGINE_REFERENCE_TORQUE_REL;
        public static final Parameter ENGINE_RPM;
        public static final Parameter ENGINE_RUN_TIME;
        public static final Parameter ENGINE_RUN_TIME_WITH_MIL_ON;
        public static final Parameter ENGINE_SPEED_DERIVATE;
        public static final Parameter ENGINE_TEMP;
        public static final Parameter ENGINE_TEMP_2;
        public static final Parameter ENGINE_TORQUE_REQ;
        public static final Parameter ENGINE_TRIP_FUEL;
        public static final Parameter EPICYCLOIDAL_UNIT_POS;
        public static final Parameter EPICYCLOIDAL_UNIT_POS_PC;
        public static final Parameter ERR_EGR_POSITION;
        public static final Parameter EXHAUST_FLOW;
        public static final Parameter EXHAUST_FLOW_M3;
        public static final Parameter EXHAUST_FLOW_REQ;
        public static final Parameter EXHAUST_TEMP;
        public static final Parameter EXHAUST_TEMP_2;
        public static final Parameter EXH_GAS_COUNTERPR;
        public static final Parameter FAN_SPEED_PERC;
        public static final Parameter FAN_SPEED_RPM;
        public static final Parameter FIFTHL_AXLE_BRAKE_PRESSURE;
        public static final Parameter FIFTHL_WHEEL_PAD_WEAR;
        public static final Parameter FIFTHL_WHEEL_SPEED;
        public static final Parameter FIFTHL_WHEEL_VOLT;
        public static final Parameter FIFTHR_AXLE_BRAKE_PRESSURE;
        public static final Parameter FIFTHR_WHEEL_PAD_WEAR;
        public static final Parameter FIFTHR_WHEEL_SPEED;
        public static final Parameter FIFTHR_WHEEL_VOLT;
        public static final Parameter FIFTH_AXLE_LEFT_INNER_TIRE_PRESSURE;
        public static final Parameter FIFTH_AXLE_LEFT_OUTER_TIRE_PRESSURE;
        public static final Parameter FIFTH_AXLE_RIGHT_INNER_TIRE_PRESSURE;
        public static final Parameter FIFTH_AXLE_RIGHT_OUTER_TIRE_PRESSURE;
        public static final Parameter FIRSTL_AXLE_BRAKE_PRESSURE;
        public static final Parameter FIRSTL_AXLE_VOLT;
        public static final Parameter FIRSTL_WHEEL_PAD_WEAR;
        public static final Parameter FIRSTL_WHEEL_SPEED;
        public static final Parameter FIRSTR_AXLE_BRAKE_PRESSURE;
        public static final Parameter FIRSTR_AXLE_VOLT;
        public static final Parameter FIRSTR_WHEEL_PAD_WEAR;
        public static final Parameter FIRSTR_WHEEL_SPEED;
        public static final Parameter FIRST_AXLE_LEFT_TIRE_PRESSURE;
        public static final Parameter FIRST_AXLE_RIGHT_TIRE_PRESSURE;
        public static final Parameter FL1_WHEEL_PAD_WEAR;
        public static final Parameter FL2_WHEEL_PAD_WEAR;
        public static final Parameter FL_AXLE_BRAKE_PRESSURE;
        public static final Parameter FL_WHEEL_PAD_WEAR;
        public static final Parameter FL_WHEEL_SPEED;
        public static final Parameter FL_WHEEL_VOLT;
        public static final Parameter FOURTHL_AXLE_BRAKE_PRESSURE;
        public static final Parameter FOURTHL_WHEEL_PAD_WEAR;
        public static final Parameter FOURTHL_WHEEL_SPEED;
        public static final Parameter FOURTHL_WHEEL_VOLT;
        public static final Parameter FOURTHR_AXLE_BRAKE_PRESSURE;
        public static final Parameter FOURTHR_WHEEL_PAD_WEAR;
        public static final Parameter FOURTHR_WHEEL_SPEED;
        public static final Parameter FOURTHR_WHEEL_VOLT;
        public static final Parameter FOURTH_AXLE_LEFT_INNER_TIRE_PRESSURE;
        public static final Parameter FOURTH_AXLE_LEFT_OUTER_TIRE_PRESSURE;
        public static final Parameter FOURTH_AXLE_RIGHT_INNER_TIRE_PRESSURE;
        public static final Parameter FOURTH_AXLE_RIGHT_OUTER_TIRE_PRESSURE;
        public static final Parameter FR1_WHEEL_PAD_WEAR;
        public static final Parameter FR2_WHEEL_PAD_WEAR;
        public static final Parameter FRONT_LEFT_TIRE_PRESSURE;
        public static final Parameter FRONT_RIGHT_TIRE_PRESSURE;
        public static final Parameter FRONT_WHEEL_SPEED;
        public static final Parameter FR_AXLE_BRAKE_PRESSURE;
        public static final Parameter FR_WHEEL_PAD_WEAR;
        public static final Parameter FR_WHEEL_SPEED;
        public static final Parameter FR_WHEEL_VOLT;
        public static final Parameter FUEL_DELIVERY_PRESS;
        public static final Parameter FUEL_FILT_DIFF_PRESS;
        public static final Parameter FUEL_FLOW;
        public static final Parameter FUEL_LEVEL_ABS;
        public static final Parameter FUEL_LEVEL_REL;
        public static final Parameter FUEL_LEVEL_REL_1;
        public static final Parameter FUEL_LEVEL_REL_2;
        public static final Parameter FUEL_LOW_PRESS_ACTUAL;
        public static final Parameter FUEL_LOW_PRESS_TARGET;
        public static final Parameter FUEL_PUMP_ABSORB;
        public static final Parameter FUEL_PUMP_DUTY;
        public static final Parameter FUEL_RAIL_PRESS;
        public static final Parameter FUEL_RAIL_TEMP;
        public static final Parameter FUEL_RAIL_VALVE_ABSORB;
        public static final Parameter FUEL_RAIL_VALVE_DUTY;
        public static final Parameter FUEL_RAIL_VALVE_POS;
        public static final Parameter FUEL_RATE;
        public static final Parameter FUEL_RATE_DISTANCE;
        public static final Parameter FUEL_TEMP;
        public static final Parameter F_AXLE_BRAKE_PRESSURE;
        public static final Parameter F_AXLE_BRAKE_PRESS_REQ;
        public static final Parameter GAS_FLOW;
        public static final Parameter GAS_PRES_SUPPLY;
        public static final Parameter GEAR_ENGAGE_POS;
        public static final Parameter GEAR_ENGAGE_POS_PC;
        public static final Parameter GEAR_SELECTOR_POS;
        public static final Parameter GEAR_SELECTOR_POS_PC;
        public static final Parameter GPS_ALTITUDE;
        public static final Parameter GPS_DIRECTION;
        public static final Parameter GPS_LATITUDE;
        public static final Parameter GPS_LONGITUDE;
        public static final Parameter HIGH_VOLTAGE_BATTERY_STATE_OF_CHARGE;
        public static final Parameter HIGH_VOLTAGE_BATTERY_STATE_OF_HEALTH;
        public static final Parameter HIGH_VOLTAGE_BATTERY_VOLTAGE;
        public static final Parameter HUM_RELAT;
        public static final Parameter INDEX_LAST_STABILIZED_PERIOD;
        public static final Parameter INERTIA_BRAKE_DEC;
        public static final Parameter INJECTED_AIR_QUANTITY;
        public static final Parameter INJECTED_FUEL_QUANTITY;
        public static final Parameter INJECTED_FUEL_QUANTITY_1;
        public static final Parameter INJECTED_FUEL_QUANTITY_2;
        public static final Parameter INJECTED_FUEL_QUANTITY_3;
        public static final Parameter INJECTED_FUEL_QUANTITY_4;
        public static final Parameter INJECTED_FUEL_QUANTITY_5;
        public static final Parameter INJECTED_FUEL_QUANTITY_6;
        public static final Parameter INJECTED_FUEL_QUANTITY_7;
        public static final Parameter INJECTED_FUEL_QUANTITY_8;
        public static final Parameter INJECTION_TIME;
        public static final Parameter INJECTION_TIME_DERATE;
        public static final Parameter INJECTOR_PRESS;
        public static final Parameter INJ_ADVANCE;
        public static final Parameter INJ_BASE_ADVANCE;
        public static final Parameter INSTANT_FUEL_CONSUMPTION;
        public static final Parameter INTAKE_AIR_PRESS;
        public static final Parameter INTAKE_AIR_PRESS_2;
        public static final Parameter INTAKE_AIR_TEMP;
        public static final Parameter INTAKE_MANIFOLD_ABS_PRESS;
        public static final Parameter INTAKE_MANIFOLD_TEMPERATURE;
        public static final Parameter IN_THROTTLE_ACT_POS;
        public static final Parameter ITEM_STATUS;
        public static final Parameter LAMBDA;
        public static final Parameter LAMBDA_VOLT_1;
        public static final Parameter LAMBDA_VOLT_2;
        public static final Parameter LATERAL_ACCEL;
        public static final Parameter LEAN_ANGLE;
        public static final Parameter LOW_IDLE_INTEGRAL_VALUE;
        public static final Parameter LPG_RATE;
        public static final Parameter LPG_RATE_DISTANCE;
        public static final Parameter MAP_SENSOR;
        public static final Parameter MASS_AIR_FLOW;
        public static final Parameter MASS_AIR_FLOW_DESIRED;
        public static final Parameter MAXIMUM_TORQUE_CURVE;
        public static final Parameter MEASURED_FILTERED_CATALYST_EFFICIENCY;
        public static final Parameter MISFIRE_CYLINDER_1;
        public static final Parameter MISFIRE_CYLINDER_2;
        public static final Parameter MISFIRE_CYLINDER_3;
        public static final Parameter MISFIRE_CYLINDER_4;
        public static final Parameter MISFIRE_CYLINDER_5;
        public static final Parameter MISFIRE_CYLINDER_6;
        public static final Parameter MPROP_VALVE;
        public static final Parameter NH3_CONCENTRATION;
        public static final Parameter NOMINAL_FRICTION_PERCENT_TORQUE;
        public static final Parameter NOMINAL_TORQUE_LIMIT_VIA_CAN;
        public static final Parameter NOX_FLOW;
        public static final Parameter O2_SENSOR;
        public static final Parameter ODOMETER_KM;
        public static final Parameter OIL_LEVEL_ABS;
        public static final Parameter OIL_LEVEL_REL;
        public static final Parameter OIL_PRESSURE;
        public static final Parameter OIL_PRESSURE_BRAKE_D;
        public static final Parameter OIL_PRESSURE_BRAKE_E;
        public static final Parameter OIL_PRESSURE_BRAKE_F;
        public static final Parameter OIL_PRESSURE_CLUTCH_A;
        public static final Parameter OIL_PRESSURE_CLUTCH_B;
        public static final Parameter OIL_PRESSURE_CLUTCH_WK;
        public static final Parameter OIL_PRESSURE_SUPPLY;
        public static final Parameter OIL_QUALITY_VAL;
        public static final Parameter OPEN_LOOP_TORQUE_REQUESTED_BY_SPEED_CONTROL;
        public static final Parameter OUTSIDE_TEMPERATURE;
        public static final Parameter OVERSPEED_CNT;
        public static final Parameter PARAMETER_SET_SELECTED_BY_MACHINE;
        public static final Parameter PITCH_ANGLE;
        public static final Parameter PITCH_RATE;
        public static final Parameter PM_FLOW;
        public static final Parameter PM_SENSOR_MASS_1_VALUE;
        public static final Parameter PM_SENSOR_MASS_2_VALUE;
        public static final Parameter POS_ACC_PEDAL_A;
        public static final Parameter POS_ACC_PEDAL_B;
        public static final Parameter POS_ACC_PEDAL_D;
        public static final Parameter POS_ACC_PEDAL_E;
        public static final Parameter POS_CLUTCH_DEGREE_ACT;
        public static final Parameter POS_CLUTCH_DEGREE_REQ;
        public static final Parameter POS_CLUTCH_PEDAL_ABS;
        public static final Parameter POS_CLUTCH_PEDAL_REL;
        public static final Parameter POS_CLUTCH_PEDAL_REL_REQ;
        public static final Parameter POTASSIUM_SUPEROXIDE_ADAPTATION;
        public static final Parameter PRIMARY_SHAFT_SPEED;
        public static final Parameter RAIL_PRESS_TARGET;
        public static final Parameter RAIL_TEMPERATURE_DERATE;
        public static final Parameter RAMPED_SMOKE_LIMITATION_QUANTITY;
        public static final Parameter REAGENT_TANK_LEV;
        public static final Parameter REAGENT_TANK_LEV_2;
        public static final Parameter REAGENT_TANK_LEV_3;
        public static final Parameter REAR_LEFT_INNER_TIRE_PRESSURE;
        public static final Parameter REAR_LEFT_OUTER_TIRE_PRESSURE;
        public static final Parameter REAR_LEFT_TIRE_PRESSURE;
        public static final Parameter REAR_RIGHT_INNER_TIRE_PRESSURE;
        public static final Parameter REAR_RIGHT_OUTER_TIRE_PRESSURE;
        public static final Parameter REAR_RIGHT_TIRE_PRESSURE;
        public static final Parameter REAR_WHEEL_SPEED;
        public static final Parameter REL_ADBLUE_PRESS;
        public static final Parameter REL_AIR_PRESS_UPSTREAM;
        public static final Parameter REL_DPF_SATURATION_VALUE;
        public static final Parameter REL_GAS_LEVEL;
        public static final Parameter REL_TROTTLE_POSITION;
        public static final Parameter REQUESTED_BOOST_PRESS;
        public static final Parameter REQUESTED_DECEL;
        public static final Parameter REQUESTED_ENGINE_RPM;
        public static final Parameter REQUEST_ABS_ENGINE_TORQUE;
        public static final Parameter REQUEST_REL_ENGINE_TORQUE;
        public static final Parameter RETARDER_TORQUE_ACT;
        public static final Parameter RETARDER_TORQUE_REQ;
        public static final Parameter RET_COOLANT_TEMP;
        public static final Parameter RET_OIL_TEMP;
        public static final Parameter RET_REQUEST;
        public static final Parameter RL1_WHEEL_PAD_WEAR;
        public static final Parameter RL2_WHEEL_PAD_WEAR;
        public static final Parameter RL_AXLE_BRAKE_PRESSURE;
        public static final Parameter RL_WHEEL_PAD_WEAR;
        public static final Parameter RL_WHEEL_SPEED;
        public static final Parameter RL_WHEEL_VOLT;
        public static final Parameter ROLL_RATE;
        public static final Parameter RR1_WHEEL_PAD_WEAR;
        public static final Parameter RR2_WHEEL_PAD_WEAR;
        public static final Parameter RR_AXLE_BRAKE_PRESSURE;
        public static final Parameter RR_WHEEL_PAD_WEAR;
        public static final Parameter RR_WHEEL_SPEED;
        public static final Parameter RR_WHEEL_VOLT;
        public static final Parameter R_AXLE_BRAKE_PRESSURE;
        public static final Parameter R_AXLE_BRAKE_PRESS_REQ;
        public static final Parameter SCR_IN_TEMP;
        public static final Parameter SCR_IN_TEMP_2;
        public static final Parameter SCR_OUT_TEMP;
        public static final Parameter SCR_OUT_TEMP_2;
        public static final Parameter SECONDARY_SHAFT_SPEED;
        public static final Parameter SECONDL_AXLE_BRAKE_PRESSURE;
        public static final Parameter SECONDL_AXLE_VOLT;
        public static final Parameter SECONDL_WHEEL_PAD_WEAR;
        public static final Parameter SECONDL_WHEEL_SPEED;
        public static final Parameter SECONDR_AXLE_BRAKE_PRESSURE;
        public static final Parameter SECONDR_AXLE_VOLT;
        public static final Parameter SECONDR_WHEEL_PAD_WEAR;
        public static final Parameter SECONDR_WHEEL_SPEED;
        public static final Parameter SECOND_AXLE_LEFT_INNER_TIRE_PRESSURE;
        public static final Parameter SECOND_AXLE_LEFT_OUTER_TIRE_PRESSURE;
        public static final Parameter SECOND_AXLE_RIGHT_INNER_TIRE_PRESSURE;
        public static final Parameter SECOND_AXLE_RIGHT_OUTER_TIRE_PRESSURE;
        public static final Parameter SHIFT_ACTUATOR;
        public static final Parameter SLANT_SENSOR;
        public static final Parameter SPEED_CONTROL_INTEGRAL_VALUE;
        public static final Parameter SPEED_CONTROL_PROPORTIONAL_PART;
        public static final Parameter SPLITTER_VALVE_POS;
        public static final Parameter SPLITTER_VALVE_POS_PC;
        public static final Parameter STEER_ANGLE;
        public static final Parameter TACHO_OUT_SHAFT_SPEED;
        public static final Parameter TACHO_VEHICLE_SPEED;
        public static final Parameter TERMINAL_15_VOLT;
        public static final Parameter TERMINAL_30A_VOLT;
        public static final Parameter TERMINAL_30B_VOLT;
        public static final Parameter THIRD_AXLE_LEFT_INNER_TIRE_PRESSURE;
        public static final Parameter THIRD_AXLE_LEFT_OUTER_TIRE_PRESSURE;
        public static final Parameter THIRD_AXLE_RIGHT_INNER_TIRE_PRESSURE;
        public static final Parameter THIRD_AXLE_RIGHT_OUTER_TIRE_PRESSURE;
        public static final Parameter THROTTLE_ACT_POS;
        public static final Parameter THROTTLE_PED_POS;
        public static final Parameter THROTTLE_REQ_POS;
        public static final Parameter TIME_LAST_REGEN;
        public static final Parameter TL_AXLE_BRAKE_PRESSURE;
        public static final Parameter TL_WHEEL_PAD_WEAR;
        public static final Parameter TL_WHEEL_SPEED;
        public static final Parameter TL_WHEEL_VOLT;
        public static final Parameter TORQUE_FEEDBACK_TRASMITTED_ON_CAN;
        public static final Parameter TORQUE_REQUESTED_BY_SPEED_CONTROL;
        public static final Parameter TOTAL_FUEL_CONSUMPTION;
        public static final Parameter TOTAL_INJECTED_FUEL_QUANTITY;
        public static final Parameter TRAILER_BRAKE_PRESSURE;
        public static final Parameter TRAILER_BRAKE_PRESS_REQ;
        public static final Parameter TRANSM_OIL_LEV;
        public static final Parameter TRANSM_TURBINE_SPEED;
        public static final Parameter TRANS_INPUT_SPEED;
        public static final Parameter TRANS_OIL_TEMP;
        public static final Parameter TRANS_OUTPUT_ACCEL;
        public static final Parameter TRANS_OUTPUT_SPEED;
        public static final Parameter TR_AXLE_BRAKE_PRESSURE;
        public static final Parameter TR_WHEEL_PAD_WEAR;
        public static final Parameter TR_WHEEL_SPEED;
        public static final Parameter TR_WHEEL_VOLT;
        public static final Parameter TURBO_POS_ACTUAL;
        public static final Parameter TURBO_POS_DESIRED;
        public static final Parameter TURBO_SPEED;
        public static final Parameter UPSTREAM_CAT_NOX;
        public static final Parameter UPSTREAM_CAT_NOX_CALCULATED;
        public static final Parameter UPSTREAM_CAT_NOX_RAW;
        public static final Parameter USAGE_RATIO_ADD_AXLE_BRAKES;
        public static final Parameter USAGE_RATIO_ADD_TRACTION;
        public static final Parameter USAGE_RATIO_AIR_FILTER;
        public static final Parameter USAGE_RATIO_BRAKES;
        public static final Parameter USAGE_RATIO_CARTRIDGE;
        public static final Parameter USAGE_RATIO_CLUTCH;
        public static final Parameter USAGE_RATIO_COOLANT;
        public static final Parameter USAGE_RATIO_DIFFERENTIAL_2_OIL;
        public static final Parameter USAGE_RATIO_DIFFERENTIAL_FRONT_OIL;
        public static final Parameter USAGE_RATIO_DIFFERENTIAL_OIL;
        public static final Parameter USAGE_RATIO_DPF;
        public static final Parameter USAGE_RATIO_FIRST_SERVICE;
        public static final Parameter USAGE_RATIO_FRONT_AXLE_1_BRAKES;
        public static final Parameter USAGE_RATIO_FRONT_AXLE_2_BRAKES;
        public static final Parameter USAGE_RATIO_FRONT_AXLE_SERVICE;
        public static final Parameter USAGE_RATIO_FRONT_AXLE_STEERING_OIL;
        public static final Parameter USAGE_RATIO_GEARBOX_OIL;
        public static final Parameter USAGE_RATIO_OIL;
        public static final Parameter USAGE_RATIO_PTO1;
        public static final Parameter USAGE_RATIO_PTO2;
        public static final Parameter USAGE_RATIO_PTO3;
        public static final Parameter USAGE_RATIO_REAR_AXLE_1_BRAKES;
        public static final Parameter USAGE_RATIO_REAR_AXLE_2_BRAKES;
        public static final Parameter USAGE_RATIO_REAR_AXLE_STEERING_OIL;
        public static final Parameter USAGE_RATIO_RETARDER;
        public static final Parameter USAGE_RATIO_S6_SERVICE;
        public static final Parameter USAGE_RATIO_SERVICE;
        public static final Parameter USAGE_RATIO_TRANS_CASE_OIL;
        public static final Parameter USAGE_RATIO_UNIV_SERVICE;
        public static final Parameter USAGE_RATIO_VALVE_SERVICE;
        public static final Parameter VEHICLE_SPEED;
        public static final Parameter VEHICLE_SPEED_2;
        public static final Parameter VEHICLE_SPEED_LIMIT;
        public static final Parameter VOLUMETRIC_EFFICIENCY;
        public static final Parameter WAST_REQ_POS;
        public static final Parameter YAW_RATE;
        public static final Parameter YAW_SPEED;
        private static final LongSparseArray<Parameter> dataIDMap;
        private long mId;
        private MeasurementUnit mMeasurementUnit;
        private String mName;
        private Float mRangeMax;
        private Float mRangeMin;

        public static Parameter valueOf(String str) {
            return (Parameter) java.lang.Enum.valueOf(Parameter.class, str);
        }

        public static Parameter[] values() {
            return (Parameter[]) $VALUES.clone();
        }

        static {
            MeasurementUnit measurementUnit = MeasurementUnit.KILOMETER_PER_HOUR;
            Float fValueOf = Float.valueOf(0.0f);
            Parameter parameter = new Parameter("VEHICLE_SPEED", 0, MockDataID.Parameter.VEHICLE_SPEED, "VEHICLE_SPEED", measurementUnit, fValueOf, Float.valueOf(400.0f));
            VEHICLE_SPEED = parameter;
            MeasurementUnit measurementUnit2 = MeasurementUnit.PERCENTAGE;
            Float fValueOf2 = Float.valueOf(100.0f);
            Parameter parameter2 = new Parameter("FUEL_LEVEL_REL", 1, MockDataID.Parameter.FUEL_LEVEL_REL, "FUEL_LEVEL_REL", measurementUnit2, fValueOf, fValueOf2);
            FUEL_LEVEL_REL = parameter2;
            Parameter parameter3 = new Parameter("FUEL_LEVEL_ABS", 2, MockDataID.Parameter.FUEL_LEVEL_ABS, "FUEL_LEVEL_ABS", MeasurementUnit.LITER, fValueOf, Float.valueOf(500.0f));
            FUEL_LEVEL_ABS = parameter3;
            MeasurementUnit measurementUnit3 = MeasurementUnit.KILOMETER;
            Float fValueOf3 = Float.valueOf(4.2949673E9f);
            Parameter parameter4 = new Parameter("ODOMETER_KM", 3, MockDataID.Parameter.ODOMETER_KM, "ODOMETER_KM", measurementUnit3, fValueOf, fValueOf3);
            ODOMETER_KM = parameter4;
            Parameter parameter5 = new Parameter("CRUISING_RANGE", 4, MockDataID.Parameter.CRUISING_RANGE, "CRUISING_RANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            CRUISING_RANGE = parameter5;
            Parameter parameter6 = new Parameter("OUTSIDE_TEMPERATURE", 5, MockDataID.Parameter.OUTSIDE_TEMPERATURE, "OUTSIDE_TEMPERATURE", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-273.0f), Float.valueOf(1735.0f));
            OUTSIDE_TEMPERATURE = parameter6;
            MeasurementUnit measurementUnit4 = MeasurementUnit.KILOPASCAL;
            Float fValueOf4 = Float.valueOf(255.0f);
            Parameter parameter7 = new Parameter("BAROMETRIC_PRESS", 6, 131080L, "BAROMETRIC_PRESS", measurementUnit4, fValueOf, fValueOf4);
            BAROMETRIC_PRESS = parameter7;
            Parameter parameter8 = new Parameter("FUEL_RATE", 7, 131081L, "FUEL_RATE", MeasurementUnit.LITER_PER_HOUR, fValueOf, Float.valueOf(3213.0f));
            FUEL_RATE = parameter8;
            MeasurementUnit measurementUnit5 = MeasurementUnit.KILOMETER;
            Float fValueOf5 = Float.valueOf(65535.0f);
            Parameter parameter9 = new Parameter("CLR_DTC_DIST", 8, 131087L, "CLR_DTC_DIST", measurementUnit5, fValueOf, fValueOf5);
            CLR_DTC_DIST = parameter9;
            Parameter parameter10 = new Parameter("REL_GAS_LEVEL", 9, 131090L, "REL_GAS_LEVEL", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            REL_GAS_LEVEL = parameter10;
            Parameter parameter11 = new Parameter("ABS_LPG_LEVEL", 10, 131092L, "ABS_LPG_LEVEL", MeasurementUnit.LITER, fValueOf, Float.valueOf(1500.0f));
            ABS_LPG_LEVEL = parameter11;
            Parameter parameter12 = new Parameter("ABS_CNG_LEVEL", 11, 131093L, "ABS_CNG_LEVEL", MeasurementUnit.KILOGRAM, fValueOf, Float.valueOf(1500.0f));
            ABS_CNG_LEVEL = parameter12;
            Parameter parameter13 = new Parameter("CRUISING_RANGE_GAS", 12, 131094L, "CRUISING_RANGE_GAS", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            CRUISING_RANGE_GAS = parameter13;
            Parameter parameter14 = new Parameter("AVERAGE_FUEL_RATE", 13, 131096L, "AVERAGE_FUEL_RATE", MeasurementUnit.LITER_PER_HOUR, fValueOf, Float.valueOf(3277.0f));
            AVERAGE_FUEL_RATE = parameter14;
            Parameter parameter15 = new Parameter("FUEL_RATE_DISTANCE", 14, 131097L, "FUEL_RATE_DISTANCE", MeasurementUnit.LITER_PER_100_KILOMETERS, fValueOf, fValueOf2);
            FUEL_RATE_DISTANCE = parameter15;
            Parameter parameter16 = new Parameter("AVERAGE_FUEL_RATE_DISTANCE", 15, 131098L, "AVERAGE_FUEL_RATE_DISTANCE", MeasurementUnit.LITER_PER_100_KILOMETERS, fValueOf, fValueOf2);
            AVERAGE_FUEL_RATE_DISTANCE = parameter16;
            Parameter parameter17 = new Parameter("TOTAL_FUEL_CONSUMPTION", 16, 131099L, "TOTAL_FUEL_CONSUMPTION", MeasurementUnit.LITER, fValueOf, fValueOf3);
            TOTAL_FUEL_CONSUMPTION = parameter17;
            Parameter parameter18 = new Parameter("AVERAGE_CNG_RATE", 17, 131100L, "AVERAGE_CNG_RATE", MeasurementUnit.KILOGRAM_PER_HOUR, fValueOf, fValueOf2);
            AVERAGE_CNG_RATE = parameter18;
            Parameter parameter19 = new Parameter("AVERAGE_CNG_RATE_DISTANCE", 18, 131101L, "AVERAGE_CNG_RATE_DISTANCE", MeasurementUnit.KILOGRAM_PER_100_KILOMETERS, fValueOf, fValueOf2);
            AVERAGE_CNG_RATE_DISTANCE = parameter19;
            Parameter parameter20 = new Parameter("CNG_RATE_DISTANCE", 19, 131102L, "CNG_RATE_DISTANCE", MeasurementUnit.KILOGRAM_PER_100_KILOMETERS, fValueOf, fValueOf2);
            CNG_RATE_DISTANCE = parameter20;
            Parameter parameter21 = new Parameter("CNG_RATE", 20, 131103L, "CNG_RATE", MeasurementUnit.KILOGRAM_PER_HOUR, fValueOf, fValueOf2);
            CNG_RATE = parameter21;
            Parameter parameter22 = new Parameter("AVERAGE_LPG_RATE", 21, 131105L, "AVERAGE_LPG_RATE", MeasurementUnit.LITER_PER_HOUR, fValueOf, fValueOf2);
            AVERAGE_LPG_RATE = parameter22;
            Parameter parameter23 = new Parameter("AVERAGE_LPG_RATE_DISTANCE", 22, 131106L, "AVERAGE_LPG_RATE_DISTANCE", MeasurementUnit.LITER_PER_100_KILOMETERS, fValueOf, fValueOf2);
            AVERAGE_LPG_RATE_DISTANCE = parameter23;
            Parameter parameter24 = new Parameter("LPG_RATE_DISTANCE", 23, 131107L, "LPG_RATE_DISTANCE", MeasurementUnit.LITER_PER_100_KILOMETERS, fValueOf, fValueOf2);
            LPG_RATE_DISTANCE = parameter24;
            Parameter parameter25 = new Parameter("LPG_RATE", 24, 131108L, "LPG_RATE", MeasurementUnit.LITER_PER_HOUR, fValueOf, fValueOf2);
            LPG_RATE = parameter25;
            Parameter parameter26 = new Parameter("BRAKE_PEDAL_POSITION", 25, 131118L, "BRAKE_PEDAL_POSITION", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            BRAKE_PEDAL_POSITION = parameter26;
            Parameter parameter27 = new Parameter("ENGINE_TRIP_FUEL", 26, 131120L, "ENGINE_TRIP_FUEL", MeasurementUnit.LITER, fValueOf, Float.valueOf(9999.0f));
            ENGINE_TRIP_FUEL = parameter27;
            Parameter parameter28 = new Parameter("TACHO_OUT_SHAFT_SPEED", 27, 131121L, "TACHO_OUT_SHAFT_SPEED", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, Float.valueOf(5000.0f));
            TACHO_OUT_SHAFT_SPEED = parameter28;
            Parameter parameter29 = new Parameter("TACHO_VEHICLE_SPEED", 28, 131122L, "TACHO_VEHICLE_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, Float.valueOf(125.0f));
            TACHO_VEHICLE_SPEED = parameter29;
            Parameter parameter30 = new Parameter("FL_WHEEL_SPEED", 29, 131123L, "FL_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            FL_WHEEL_SPEED = parameter30;
            Parameter parameter31 = new Parameter("FR_WHEEL_SPEED", 30, 131124L, "FR_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            FR_WHEEL_SPEED = parameter31;
            Parameter parameter32 = new Parameter("RL_WHEEL_SPEED", 31, 131125L, "RL_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            RL_WHEEL_SPEED = parameter32;
            Parameter parameter33 = new Parameter("RR_WHEEL_SPEED", 32, 131126L, "RR_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            RR_WHEEL_SPEED = parameter33;
            Parameter parameter34 = new Parameter("TL_WHEEL_SPEED", 33, 131127L, "TL_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            TL_WHEEL_SPEED = parameter34;
            Parameter parameter35 = new Parameter("TR_WHEEL_SPEED", 34, 131128L, "TR_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            TR_WHEEL_SPEED = parameter35;
            Parameter parameter36 = new Parameter("BRAKE_PRESS", 35, 131129L, "BRAKE_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(20000.0f));
            BRAKE_PRESS = parameter36;
            MeasurementUnit measurementUnit6 = MeasurementUnit.PERCENTAGE;
            Float fValueOf6 = Float.valueOf(-1.0f);
            Float fValueOf7 = Float.valueOf(1000.0f);
            Parameter parameter37 = new Parameter("FL_WHEEL_PAD_WEAR", 36, 131130L, "FL_WHEEL_PAD_WEAR", measurementUnit6, fValueOf6, fValueOf7);
            FL_WHEEL_PAD_WEAR = parameter37;
            Parameter parameter38 = new Parameter("FR_WHEEL_PAD_WEAR", 37, 131131L, "FR_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FR_WHEEL_PAD_WEAR = parameter38;
            Parameter parameter39 = new Parameter("RL_WHEEL_PAD_WEAR", 38, 131132L, "RL_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            RL_WHEEL_PAD_WEAR = parameter39;
            Parameter parameter40 = new Parameter("RR_WHEEL_PAD_WEAR", 39, 131133L, "RR_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            RR_WHEEL_PAD_WEAR = parameter40;
            Parameter parameter41 = new Parameter("TL_WHEEL_PAD_WEAR", 40, 131134L, "TL_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            TL_WHEEL_PAD_WEAR = parameter41;
            Parameter parameter42 = new Parameter("TR_WHEEL_PAD_WEAR", 41, 131135L, "TR_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            TR_WHEEL_PAD_WEAR = parameter42;
            Parameter parameter43 = new Parameter("BRAKE_PRESS_VOLT", 42, 131136L, "BRAKE_PRESS_VOLT", MeasurementUnit.VOLT, fValueOf, Float.valueOf(6.0f));
            BRAKE_PRESS_VOLT = parameter43;
            Parameter parameter44 = new Parameter("ACC_PEDAL_VOLT", 43, 131142L, "ACC_PEDAL_VOLT", MeasurementUnit.VOLT, fValueOf, Float.valueOf(10000.0f));
            ACC_PEDAL_VOLT = parameter44;
            Parameter parameter45 = new Parameter("F_AXLE_BRAKE_PRESSURE", 44, 131143L, "F_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(20000.0f));
            F_AXLE_BRAKE_PRESSURE = parameter45;
            MeasurementUnit measurementUnit7 = MeasurementUnit.KILOPASCAL;
            Float fValueOf8 = Float.valueOf(1200.0f);
            Parameter parameter46 = new Parameter("FL_AXLE_BRAKE_PRESSURE", 45, 131144L, "FL_AXLE_BRAKE_PRESSURE", measurementUnit7, fValueOf, fValueOf8);
            FL_AXLE_BRAKE_PRESSURE = parameter46;
            Parameter parameter47 = new Parameter("FR_AXLE_BRAKE_PRESSURE", 46, 131145L, "FR_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FR_AXLE_BRAKE_PRESSURE = parameter47;
            Parameter parameter48 = new Parameter("RL_AXLE_BRAKE_PRESSURE", 47, 131146L, "RL_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            RL_AXLE_BRAKE_PRESSURE = parameter48;
            Parameter parameter49 = new Parameter("RR_AXLE_BRAKE_PRESSURE", 48, 131147L, "RR_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            RR_AXLE_BRAKE_PRESSURE = parameter49;
            Parameter parameter50 = new Parameter("TL_AXLE_BRAKE_PRESSURE", 49, 131148L, "TL_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            TL_AXLE_BRAKE_PRESSURE = parameter50;
            Parameter parameter51 = new Parameter("TR_AXLE_BRAKE_PRESSURE", 50, 131149L, "TR_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            TR_AXLE_BRAKE_PRESSURE = parameter51;
            Parameter parameter52 = new Parameter("F_AXLE_BRAKE_PRESS_REQ", 51, 131150L, "F_AXLE_BRAKE_PRESS_REQ", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(20000.0f));
            F_AXLE_BRAKE_PRESS_REQ = parameter52;
            Parameter parameter53 = new Parameter("R_AXLE_BRAKE_PRESS_REQ", 52, 131151L, "R_AXLE_BRAKE_PRESS_REQ", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(20000.0f));
            R_AXLE_BRAKE_PRESS_REQ = parameter53;
            MeasurementUnit measurementUnit8 = MeasurementUnit.VOLT;
            Float fValueOf9 = Float.valueOf(10.0f);
            Parameter parameter54 = new Parameter("FL_WHEEL_VOLT", 53, 131152L, "FL_WHEEL_VOLT", measurementUnit8, fValueOf, fValueOf9);
            FL_WHEEL_VOLT = parameter54;
            Parameter parameter55 = new Parameter("FR_WHEEL_VOLT", 54, 131153L, "FR_WHEEL_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            FR_WHEEL_VOLT = parameter55;
            Parameter parameter56 = new Parameter("RL_WHEEL_VOLT", 55, 131154L, "RL_WHEEL_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            RL_WHEEL_VOLT = parameter56;
            Parameter parameter57 = new Parameter("RR_WHEEL_VOLT", 56, 131155L, "RR_WHEEL_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            RR_WHEEL_VOLT = parameter57;
            Parameter parameter58 = new Parameter("AIR_PRESS_CIRC1", 57, 131157L, "AIR_PRESS_CIRC1", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            AIR_PRESS_CIRC1 = parameter58;
            Parameter parameter59 = new Parameter("AIR_PRESS_CIRC2", 58, 131158L, "AIR_PRESS_CIRC2", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            AIR_PRESS_CIRC2 = parameter59;
            Parameter parameter60 = new Parameter("REQUESTED_DECEL", 59, 131160L, "REQUESTED_DECEL", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            REQUESTED_DECEL = parameter60;
            Parameter parameter61 = new Parameter("DECELERATION", 60, 131161L, "DECELERATION", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            DECELERATION = parameter61;
            MeasurementUnit measurementUnit9 = MeasurementUnit.DEGREE;
            Float fValueOf10 = Float.valueOf(-65535.0f);
            Parameter parameter62 = new Parameter("STEER_ANGLE", 61, 131162L, "STEER_ANGLE", measurementUnit9, fValueOf10, fValueOf5);
            STEER_ANGLE = parameter62;
            Parameter parameter63 = new Parameter("R_AXLE_BRAKE_PRESSURE", 62, 131163L, "R_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(20000.0f));
            R_AXLE_BRAKE_PRESSURE = parameter63;
            Parameter parameter64 = new Parameter("AIR_PRESS_FRONT", 63, 131165L, "AIR_PRESS_FRONT", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            AIR_PRESS_FRONT = parameter64;
            Parameter parameter65 = new Parameter("AIR_PRESS_REAR", 64, 131166L, "AIR_PRESS_REAR", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            AIR_PRESS_REAR = parameter65;
            Parameter parameter66 = new Parameter("AIR_PRESS_SUSP", 65, 131167L, "AIR_PRESS_SUSP", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            AIR_PRESS_SUSP = parameter66;
            Parameter parameter67 = new Parameter("AIR_PRESS_TRANSM", 66, 131168L, "AIR_PRESS_TRANSM", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            AIR_PRESS_TRANSM = parameter67;
            Parameter parameter68 = new Parameter("AIR_PRESS_TRAILER", 67, 131169L, "AIR_PRESS_TRAILER", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            AIR_PRESS_TRAILER = parameter68;
            Parameter parameter69 = new Parameter("FOURTHL_WHEEL_PAD_WEAR", 68, 131170L, "FOURTHL_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FOURTHL_WHEEL_PAD_WEAR = parameter69;
            Parameter parameter70 = new Parameter("FOURTHR_WHEEL_PAD_WEAR", 69, 131171L, "FOURTHR_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FOURTHR_WHEEL_PAD_WEAR = parameter70;
            Parameter parameter71 = new Parameter("FIFTHL_WHEEL_PAD_WEAR", 70, 131172L, "FIFTHL_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FIFTHL_WHEEL_PAD_WEAR = parameter71;
            Parameter parameter72 = new Parameter("FIFTHR_WHEEL_PAD_WEAR", 71, 131173L, "FIFTHR_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FIFTHR_WHEEL_PAD_WEAR = parameter72;
            Parameter parameter73 = new Parameter("FOURTHL_AXLE_BRAKE_PRESSURE", 72, 131174L, "FOURTHL_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FOURTHL_AXLE_BRAKE_PRESSURE = parameter73;
            Parameter parameter74 = new Parameter("FOURTHR_AXLE_BRAKE_PRESSURE", 73, 131175L, "FOURTHR_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FOURTHR_AXLE_BRAKE_PRESSURE = parameter74;
            Parameter parameter75 = new Parameter("FIFTHL_AXLE_BRAKE_PRESSURE", 74, 131176L, "FIFTHL_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FIFTHL_AXLE_BRAKE_PRESSURE = parameter75;
            Parameter parameter76 = new Parameter("FIFTHR_AXLE_BRAKE_PRESSURE", 75, 131177L, "FIFTHR_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FIFTHR_AXLE_BRAKE_PRESSURE = parameter76;
            Parameter parameter77 = new Parameter("FOURTHL_WHEEL_SPEED", 76, 131178L, "FOURTHL_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            FOURTHL_WHEEL_SPEED = parameter77;
            Parameter parameter78 = new Parameter("FOURTHR_WHEEL_SPEED", 77, 131179L, "FOURTHR_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            FOURTHR_WHEEL_SPEED = parameter78;
            Parameter parameter79 = new Parameter("FIFTHL_WHEEL_SPEED", 78, 131180L, "FIFTHL_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            FIFTHL_WHEEL_SPEED = parameter79;
            Parameter parameter80 = new Parameter("FIFTHR_WHEEL_SPEED", 79, 131181L, "FIFTHR_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            FIFTHR_WHEEL_SPEED = parameter80;
            Parameter parameter81 = new Parameter("TL_WHEEL_VOLT", 80, 131182L, "TL_WHEEL_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            TL_WHEEL_VOLT = parameter81;
            Parameter parameter82 = new Parameter("TR_WHEEL_VOLT", 81, 131183L, "TR_WHEEL_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            TR_WHEEL_VOLT = parameter82;
            Parameter parameter83 = new Parameter("FOURTHL_WHEEL_VOLT", 82, 131184L, "FOURTHL_WHEEL_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            FOURTHL_WHEEL_VOLT = parameter83;
            Parameter parameter84 = new Parameter("FOURTHR_WHEEL_VOLT", 83, 131185L, "FOURTHR_WHEEL_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            FOURTHR_WHEEL_VOLT = parameter84;
            Parameter parameter85 = new Parameter("FIFTHL_WHEEL_VOLT", 84, 131186L, "FIFTHL_WHEEL_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            FIFTHL_WHEEL_VOLT = parameter85;
            Parameter parameter86 = new Parameter("FIFTHR_WHEEL_VOLT", 85, 131187L, "FIFTHR_WHEEL_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            FIFTHR_WHEEL_VOLT = parameter86;
            Parameter parameter87 = new Parameter("FRONT_WHEEL_SPEED", 86, 131188L, "FRONT_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            FRONT_WHEEL_SPEED = parameter87;
            Parameter parameter88 = new Parameter("REAR_WHEEL_SPEED", 87, 131190L, "REAR_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            REAR_WHEEL_SPEED = parameter88;
            Parameter parameter89 = new Parameter("FIRSTL_WHEEL_SPEED", 88, 131191L, "FIRSTL_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            FIRSTL_WHEEL_SPEED = parameter89;
            Parameter parameter90 = new Parameter("FIRSTR_WHEEL_SPEED", 89, 131192L, "FIRSTR_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            FIRSTR_WHEEL_SPEED = parameter90;
            Parameter parameter91 = new Parameter("SECONDL_WHEEL_SPEED", 90, 131193L, "SECONDL_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            SECONDL_WHEEL_SPEED = parameter91;
            Parameter parameter92 = new Parameter("SECONDR_WHEEL_SPEED", 91, 131194L, "SECONDR_WHEEL_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf4);
            SECONDR_WHEEL_SPEED = parameter92;
            Parameter parameter93 = new Parameter("FIRSTL_WHEEL_PAD_WEAR", 92, 131195L, "FIRSTL_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FIRSTL_WHEEL_PAD_WEAR = parameter93;
            Parameter parameter94 = new Parameter("FIRSTR_WHEEL_PAD_WEAR", 93, 131196L, "FIRSTR_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FIRSTR_WHEEL_PAD_WEAR = parameter94;
            Parameter parameter95 = new Parameter("SECONDL_WHEEL_PAD_WEAR", 94, 131197L, "SECONDL_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            SECONDL_WHEEL_PAD_WEAR = parameter95;
            Parameter parameter96 = new Parameter("SECONDR_WHEEL_PAD_WEAR", 95, 131198L, "SECONDR_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            SECONDR_WHEEL_PAD_WEAR = parameter96;
            Parameter parameter97 = new Parameter("FIRSTL_AXLE_BRAKE_PRESSURE", 96, 131199L, "FIRSTL_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FIRSTL_AXLE_BRAKE_PRESSURE = parameter97;
            Parameter parameter98 = new Parameter("FIRSTR_AXLE_BRAKE_PRESSURE", 97, 131200L, "FIRSTR_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FIRSTR_AXLE_BRAKE_PRESSURE = parameter98;
            Parameter parameter99 = new Parameter("SECONDL_AXLE_BRAKE_PRESSURE", 98, 131201L, "SECONDL_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            SECONDL_AXLE_BRAKE_PRESSURE = parameter99;
            Parameter parameter100 = new Parameter("SECONDR_AXLE_BRAKE_PRESSURE", 99, 131202L, "SECONDR_AXLE_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            SECONDR_AXLE_BRAKE_PRESSURE = parameter100;
            Parameter parameter101 = new Parameter("FIRSTL_AXLE_VOLT", 100, 131203L, "FIRSTL_AXLE_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            FIRSTL_AXLE_VOLT = parameter101;
            Parameter parameter102 = new Parameter("FIRSTR_AXLE_VOLT", 101, 131204L, "FIRSTR_AXLE_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            FIRSTR_AXLE_VOLT = parameter102;
            Parameter parameter103 = new Parameter("SECONDL_AXLE_VOLT", 102, 131205L, "SECONDL_AXLE_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            SECONDL_AXLE_VOLT = parameter103;
            Parameter parameter104 = new Parameter("SECONDR_AXLE_VOLT", 103, 131206L, "SECONDR_AXLE_VOLT", MeasurementUnit.VOLT, fValueOf, fValueOf9);
            SECONDR_AXLE_VOLT = parameter104;
            Parameter parameter105 = new Parameter("FL1_WHEEL_PAD_WEAR", 104, 131207L, "FL1_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FL1_WHEEL_PAD_WEAR = parameter105;
            Parameter parameter106 = new Parameter("FR1_WHEEL_PAD_WEAR", 105, 131208L, "FR1_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FR1_WHEEL_PAD_WEAR = parameter106;
            Parameter parameter107 = new Parameter("FL2_WHEEL_PAD_WEAR", 106, 131209L, "FL2_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FL2_WHEEL_PAD_WEAR = parameter107;
            Parameter parameter108 = new Parameter("FR2_WHEEL_PAD_WEAR", 107, 131210L, "FR2_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            FR2_WHEEL_PAD_WEAR = parameter108;
            Parameter parameter109 = new Parameter("RL1_WHEEL_PAD_WEAR", 108, 131211L, "RL1_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            RL1_WHEEL_PAD_WEAR = parameter109;
            Parameter parameter110 = new Parameter("RR1_WHEEL_PAD_WEAR", 109, 131212L, "RR1_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            RR1_WHEEL_PAD_WEAR = parameter110;
            Parameter parameter111 = new Parameter("RL2_WHEEL_PAD_WEAR", 110, 131213L, "RL2_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            RL2_WHEEL_PAD_WEAR = parameter111;
            Parameter parameter112 = new Parameter("RR2_WHEEL_PAD_WEAR", 111, 131214L, "RR2_WHEEL_PAD_WEAR", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            RR2_WHEEL_PAD_WEAR = parameter112;
            Parameter parameter113 = new Parameter("FRONT_LEFT_TIRE_PRESSURE", 112, 131215L, "FRONT_LEFT_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FRONT_LEFT_TIRE_PRESSURE = parameter113;
            Parameter parameter114 = new Parameter("FRONT_RIGHT_TIRE_PRESSURE", 113, 131216L, "FRONT_RIGHT_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FRONT_RIGHT_TIRE_PRESSURE = parameter114;
            Parameter parameter115 = new Parameter("REAR_LEFT_TIRE_PRESSURE", 114, 131217L, "REAR_LEFT_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            REAR_LEFT_TIRE_PRESSURE = parameter115;
            Parameter parameter116 = new Parameter("REAR_RIGHT_TIRE_PRESSURE", 115, 131218L, "REAR_RIGHT_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            REAR_RIGHT_TIRE_PRESSURE = parameter116;
            Parameter parameter117 = new Parameter("REAR_LEFT_INNER_TIRE_PRESSURE", 116, 131219L, "REAR_LEFT_INNER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            REAR_LEFT_INNER_TIRE_PRESSURE = parameter117;
            Parameter parameter118 = new Parameter("REAR_LEFT_OUTER_TIRE_PRESSURE", 117, 131220L, "REAR_LEFT_OUTER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            REAR_LEFT_OUTER_TIRE_PRESSURE = parameter118;
            Parameter parameter119 = new Parameter("REAR_RIGHT_INNER_TIRE_PRESSURE", 118, 131221L, "REAR_RIGHT_INNER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            REAR_RIGHT_INNER_TIRE_PRESSURE = parameter119;
            Parameter parameter120 = new Parameter("REAR_RIGHT_OUTER_TIRE_PRESSURE", 119, 131222L, "REAR_RIGHT_OUTER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            REAR_RIGHT_OUTER_TIRE_PRESSURE = parameter120;
            Parameter parameter121 = new Parameter("FIRST_AXLE_LEFT_TIRE_PRESSURE", 120, 131223L, "FIRST_AXLE_LEFT_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FIRST_AXLE_LEFT_TIRE_PRESSURE = parameter121;
            Parameter parameter122 = new Parameter("FIRST_AXLE_RIGHT_TIRE_PRESSURE", 121, 131224L, "FIRST_AXLE_RIGHT_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FIRST_AXLE_RIGHT_TIRE_PRESSURE = parameter122;
            Parameter parameter123 = new Parameter("SECOND_AXLE_LEFT_OUTER_TIRE_PRESSURE", 122, 131225L, "SECOND_AXLE_LEFT_OUTER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            SECOND_AXLE_LEFT_OUTER_TIRE_PRESSURE = parameter123;
            Parameter parameter124 = new Parameter("SECOND_AXLE_LEFT_INNER_TIRE_PRESSURE", 123, 131226L, "SECOND_AXLE_LEFT_INNER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            SECOND_AXLE_LEFT_INNER_TIRE_PRESSURE = parameter124;
            Parameter parameter125 = new Parameter("SECOND_AXLE_RIGHT_OUTER_TIRE_PRESSURE", 124, 131227L, "SECOND_AXLE_RIGHT_OUTER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            SECOND_AXLE_RIGHT_OUTER_TIRE_PRESSURE = parameter125;
            Parameter parameter126 = new Parameter("SECOND_AXLE_RIGHT_INNER_TIRE_PRESSURE", 125, 131228L, "SECOND_AXLE_RIGHT_INNER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            SECOND_AXLE_RIGHT_INNER_TIRE_PRESSURE = parameter126;
            Parameter parameter127 = new Parameter("THIRD_AXLE_LEFT_OUTER_TIRE_PRESSURE", 126, 131229L, "THIRD_AXLE_LEFT_OUTER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            THIRD_AXLE_LEFT_OUTER_TIRE_PRESSURE = parameter127;
            Parameter parameter128 = new Parameter("THIRD_AXLE_LEFT_INNER_TIRE_PRESSURE", 127, 131230L, "THIRD_AXLE_LEFT_INNER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            THIRD_AXLE_LEFT_INNER_TIRE_PRESSURE = parameter128;
            Parameter parameter129 = new Parameter("THIRD_AXLE_RIGHT_OUTER_TIRE_PRESSURE", 128, 131231L, "THIRD_AXLE_RIGHT_OUTER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            THIRD_AXLE_RIGHT_OUTER_TIRE_PRESSURE = parameter129;
            Parameter parameter130 = new Parameter("THIRD_AXLE_RIGHT_INNER_TIRE_PRESSURE", 129, 131232L, "THIRD_AXLE_RIGHT_INNER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            THIRD_AXLE_RIGHT_INNER_TIRE_PRESSURE = parameter130;
            Parameter parameter131 = new Parameter("FOURTH_AXLE_LEFT_OUTER_TIRE_PRESSURE", 130, 131233L, "FOURTH_AXLE_LEFT_OUTER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FOURTH_AXLE_LEFT_OUTER_TIRE_PRESSURE = parameter131;
            Parameter parameter132 = new Parameter("FOURTH_AXLE_LEFT_INNER_TIRE_PRESSURE", Opcodes.LXOR, 131234L, "FOURTH_AXLE_LEFT_INNER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FOURTH_AXLE_LEFT_INNER_TIRE_PRESSURE = parameter132;
            Parameter parameter133 = new Parameter("FOURTH_AXLE_RIGHT_OUTER_TIRE_PRESSURE", 132, 131235L, "FOURTH_AXLE_RIGHT_OUTER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FOURTH_AXLE_RIGHT_OUTER_TIRE_PRESSURE = parameter133;
            Parameter parameter134 = new Parameter("FOURTH_AXLE_RIGHT_INNER_TIRE_PRESSURE", 133, 131236L, "FOURTH_AXLE_RIGHT_INNER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FOURTH_AXLE_RIGHT_INNER_TIRE_PRESSURE = parameter134;
            Parameter parameter135 = new Parameter("FIFTH_AXLE_LEFT_OUTER_TIRE_PRESSURE", 134, 131237L, "FIFTH_AXLE_LEFT_OUTER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FIFTH_AXLE_LEFT_OUTER_TIRE_PRESSURE = parameter135;
            Parameter parameter136 = new Parameter("FIFTH_AXLE_LEFT_INNER_TIRE_PRESSURE", 135, 131238L, "FIFTH_AXLE_LEFT_INNER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FIFTH_AXLE_LEFT_INNER_TIRE_PRESSURE = parameter136;
            Parameter parameter137 = new Parameter("FIFTH_AXLE_RIGHT_OUTER_TIRE_PRESSURE", 136, 131239L, "FIFTH_AXLE_RIGHT_OUTER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FIFTH_AXLE_RIGHT_OUTER_TIRE_PRESSURE = parameter137;
            Parameter parameter138 = new Parameter("FIFTH_AXLE_RIGHT_INNER_TIRE_PRESSURE", 137, 131240L, "FIFTH_AXLE_RIGHT_INNER_TIRE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            FIFTH_AXLE_RIGHT_INNER_TIRE_PRESSURE = parameter138;
            Parameter parameter139 = new Parameter("VEHICLE_SPEED_2", 138, 131241L, "VEHICLE_SPEED_2", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, Float.valueOf(400.0f));
            VEHICLE_SPEED_2 = parameter139;
            Parameter parameter140 = new Parameter("FUEL_LEVEL_REL_1", 139, 131242L, "FUEL_LEVEL_REL_1", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(102.0f));
            FUEL_LEVEL_REL_1 = parameter140;
            Parameter parameter141 = new Parameter("FUEL_LEVEL_REL_2", 140, 131243L, "FUEL_LEVEL_REL_2", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(102.0f));
            FUEL_LEVEL_REL_2 = parameter141;
            Parameter parameter142 = new Parameter("CRUISING_RANGE_EV", 141, 131244L, "CRUISING_RANGE_EV", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            CRUISING_RANGE_EV = parameter142;
            Parameter parameter143 = new Parameter("ADBLUE_LEVEL_REL", 142, 131245L, "ADBLUE_LEVEL_REL", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            ADBLUE_LEVEL_REL = parameter143;
            Parameter parameter144 = new Parameter("ADBLUE_LEVEL_ABS", 143, 131246L, "ADBLUE_LEVEL_ABS", MeasurementUnit.LITER, fValueOf, Float.valueOf(500.0f));
            ADBLUE_LEVEL_ABS = parameter144;
            Parameter parameter145 = new Parameter("ENGINE_RPM", 144, MockDataID.Parameter.ENGINE_RPM, "ENGINE_RPM", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, Float.valueOf(100000.0f));
            ENGINE_RPM = parameter145;
            MeasurementUnit measurementUnit10 = MeasurementUnit.CELSIUS_DEGREE;
            Float fValueOf11 = Float.valueOf(-100.0f);
            Parameter parameter146 = new Parameter("ENGINE_TEMP", 145, MockDataID.Parameter.ENGINE_TEMP, "ENGINE_TEMP", measurementUnit10, fValueOf11, Float.valueOf(273.0f));
            ENGINE_TEMP = parameter146;
            Parameter parameter147 = new Parameter("OIL_LEVEL_REL", 146, MockDataID.Parameter.OIL_LEVEL_REL, "OIL_LEVEL_REL", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            OIL_LEVEL_REL = parameter147;
            Parameter parameter148 = new Parameter("OIL_LEVEL_ABS", 147, MockDataID.Parameter.OIL_LEVEL_ABS, "OIL_LEVEL_ABS", MeasurementUnit.LITER, fValueOf, fValueOf5);
            OIL_LEVEL_ABS = parameter148;
            Parameter parameter149 = new Parameter("CALC_ENGINE_LOAD", 148, 262149L, "CALC_ENGINE_LOAD", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(250.0f));
            CALC_ENGINE_LOAD = parameter149;
            Parameter parameter150 = new Parameter("POS_ACC_PEDAL_A", 149, 262150L, "POS_ACC_PEDAL_A", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            POS_ACC_PEDAL_A = parameter150;
            Parameter parameter151 = new Parameter("POS_ACC_PEDAL_B", 150, 262151L, "POS_ACC_PEDAL_B", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            POS_ACC_PEDAL_B = parameter151;
            Parameter parameter152 = new Parameter("POS_ACC_PEDAL_D", 151, 262153L, "POS_ACC_PEDAL_D", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            POS_ACC_PEDAL_D = parameter152;
            Parameter parameter153 = new Parameter("POS_ACC_PEDAL_E", 152, 262154L, "POS_ACC_PEDAL_E", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            POS_ACC_PEDAL_E = parameter153;
            Parameter parameter154 = new Parameter("INTAKE_MANIFOLD_ABS_PRESS", 153, 262156L, "INTAKE_MANIFOLD_ABS_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(500.0f));
            INTAKE_MANIFOLD_ABS_PRESS = parameter154;
            Parameter parameter155 = new Parameter("INTAKE_AIR_TEMP", 154, 262157L, "INTAKE_AIR_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf11, Float.valueOf(210.0f));
            INTAKE_AIR_TEMP = parameter155;
            Parameter parameter156 = new Parameter("MASS_AIR_FLOW", 155, 262158L, "MASS_AIR_FLOW", MeasurementUnit.GRAM_PER_SECOND, fValueOf, Float.valueOf(656.0f));
            MASS_AIR_FLOW = parameter156;
            Parameter parameter157 = new Parameter("ENGINE_OIL_TEMP", 156, 262159L, "ENGINE_OIL_TEMP", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-273.0f), Float.valueOf(1735.0f));
            ENGINE_OIL_TEMP = parameter157;
            MeasurementUnit measurementUnit11 = MeasurementUnit.KILOPASCAL;
            Float fValueOf12 = Float.valueOf(655350.0f);
            Parameter parameter158 = new Parameter("FUEL_RAIL_PRESS", 157, 262160L, "FUEL_RAIL_PRESS", measurementUnit11, fValueOf, fValueOf12);
            FUEL_RAIL_PRESS = parameter158;
            Parameter parameter159 = new Parameter("ENGINE_RUN_TIME", 158, 262161L, "ENGINE_RUN_TIME", MeasurementUnit.SECOND, fValueOf, fValueOf5);
            ENGINE_RUN_TIME = parameter159;
            Parameter parameter160 = new Parameter("REQUEST_REL_ENGINE_TORQUE", 159, 262162L, "REQUEST_REL_ENGINE_TORQUE", MeasurementUnit.PERCENTAGE, Float.valueOf(-125.0f), Float.valueOf(130.0f));
            REQUEST_REL_ENGINE_TORQUE = parameter160;
            Parameter parameter161 = new Parameter("REQUEST_ABS_ENGINE_TORQUE", 160, 262163L, "REQUEST_ABS_ENGINE_TORQUE", MeasurementUnit.NEWTON_PER_METER, fValueOf10, fValueOf5);
            REQUEST_ABS_ENGINE_TORQUE = parameter161;
            Parameter parameter162 = new Parameter("ACTUAL_REL_ENGINE_TORQUE", 161, 262164L, "ACTUAL_REL_ENGINE_TORQUE", MeasurementUnit.PERCENTAGE, Float.valueOf(-125.0f), Float.valueOf(130.0f));
            ACTUAL_REL_ENGINE_TORQUE = parameter162;
            Parameter parameter163 = new Parameter("ACTUAL_ABS_ENGINE_TORQUE", 162, 262165L, "ACTUAL_ABS_ENGINE_TORQUE", MeasurementUnit.NEWTON_PER_METER, fValueOf, fValueOf5);
            ACTUAL_ABS_ENGINE_TORQUE = parameter163;
            Parameter parameter164 = new Parameter("ACT_BOOST_PRESSURE_1", 163, 262166L, "ACT_BOOST_PRESSURE_1", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(2048.0f));
            ACT_BOOST_PRESSURE_1 = parameter164;
            Parameter parameter165 = new Parameter("BOOST_SPEED_1", 164, 262170L, "BOOST_SPEED_1", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, fValueOf12);
            BOOST_SPEED_1 = parameter165;
            Parameter parameter166 = new Parameter("BOOST_SPEED_2", 165, 262171L, "BOOST_SPEED_2", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, fValueOf12);
            BOOST_SPEED_2 = parameter166;
            Parameter parameter167 = new Parameter("ACT_EGR_POSITION", 166, 262174L, "ACT_EGR_POSITION", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            ACT_EGR_POSITION = parameter167;
            Parameter parameter168 = new Parameter("CMD_EGR_POSITION", 167, 262175L, "CMD_EGR_POSITION", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            CMD_EGR_POSITION = parameter168;
            Parameter parameter169 = new Parameter("ERR_EGR_POSITION", 168, 262176L, "ERR_EGR_POSITION", MeasurementUnit.PERCENTAGE, fValueOf11, fValueOf2);
            ERR_EGR_POSITION = parameter169;
            Parameter parameter170 = new Parameter("EGR_TEMP_1", 169, 262177L, "EGR_TEMP_1", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-40.0f), Float.valueOf(980.0f));
            EGR_TEMP_1 = parameter170;
            Parameter parameter171 = new Parameter("EGR_TEMP_2", 170, 262178L, "EGR_TEMP_2", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-40.0f), Float.valueOf(980.0f));
            EGR_TEMP_2 = parameter171;
            Parameter parameter172 = new Parameter("CMD_INTAKE_AIR_FLOW", 171, 262181L, "CMD_INTAKE_AIR_FLOW", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            CMD_INTAKE_AIR_FLOW = parameter172;
            Parameter parameter173 = new Parameter("ABS_TROTTLE_POSITION", 172, 262182L, "ABS_TROTTLE_POSITION", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            ABS_TROTTLE_POSITION = parameter173;
            Parameter parameter174 = new Parameter("REL_TROTTLE_POSITION", 173, 262183L, "REL_TROTTLE_POSITION", MeasurementUnit.PERCENTAGE, Float.valueOf(-10.0f), fValueOf2);
            REL_TROTTLE_POSITION = parameter174;
            Parameter parameter175 = new Parameter("FUEL_RAIL_TEMP", 174, 262184L, "FUEL_RAIL_TEMP", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-40.0f), Float.valueOf(215.0f));
            FUEL_RAIL_TEMP = parameter175;
            Parameter parameter176 = new Parameter("CATLYST_TEMP_1", 175, 262185L, "CATLYST_TEMP_1", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-40.0f), Float.valueOf(6513.0f));
            CATLYST_TEMP_1 = parameter176;
            Parameter parameter177 = new Parameter("CATLYST_TEMP_2", 176, 262186L, "CATLYST_TEMP_2", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-40.0f), Float.valueOf(6513.0f));
            CATLYST_TEMP_2 = parameter177;
            Parameter parameter178 = new Parameter("AIR_COOLER_TEMP_1", 177, 262187L, "AIR_COOLER_TEMP_1", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-40.0f), Float.valueOf(215.0f));
            AIR_COOLER_TEMP_1 = parameter178;
            Parameter parameter179 = new Parameter("AIR_COOLER_TEMP_2", 178, 262188L, "AIR_COOLER_TEMP_2", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-40.0f), Float.valueOf(215.0f));
            AIR_COOLER_TEMP_2 = parameter179;
            Parameter parameter180 = new Parameter("LAMBDA_VOLT_1", 179, 262191L, "LAMBDA_VOLT_1", MeasurementUnit.VOLT, fValueOf, Float.valueOf(1.275f));
            LAMBDA_VOLT_1 = parameter180;
            Parameter parameter181 = new Parameter("LAMBDA_VOLT_2", 180, 262192L, "LAMBDA_VOLT_2", MeasurementUnit.VOLT, fValueOf, Float.valueOf(1.275f));
            LAMBDA_VOLT_2 = parameter181;
            Parameter parameter182 = new Parameter("LAMBDA", 181, 262197L, "LAMBDA", null, fValueOf, Float.valueOf(1.999f));
            LAMBDA = parameter182;
            Parameter parameter183 = new Parameter("OVERSPEED_CNT", 182, 262202L, "OVERSPEED_CNT", null, fValueOf, fValueOf3);
            OVERSPEED_CNT = parameter183;
            Parameter parameter184 = new Parameter("OIL_QUALITY_VAL", 183, 262204L, "OIL_QUALITY_VAL", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            OIL_QUALITY_VAL = parameter184;
            Parameter parameter185 = new Parameter("DPF_DIFF_PRESSURE", 184, 262205L, "DPF_DIFF_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(6426.0f));
            DPF_DIFF_PRESSURE = parameter185;
            Parameter parameter186 = new Parameter("REL_DPF_SATURATION_VALUE", 185, 262206L, "REL_DPF_SATURATION_VALUE", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            REL_DPF_SATURATION_VALUE = parameter186;
            Parameter parameter187 = new Parameter("ABS_DPF_SATURATION_VALUE", 186, 262207L, "ABS_DPF_SATURATION_VALUE", MeasurementUnit.GRAM, fValueOf, fValueOf7);
            ABS_DPF_SATURATION_VALUE = parameter187;
            Parameter parameter188 = new Parameter("ABS_ENGINE_LOAD", 187, 262211L, "ABS_ENGINE_LOAD", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(25700.0f));
            ABS_ENGINE_LOAD = parameter188;
            Parameter parameter189 = new Parameter("OIL_PRESSURE", 188, 262212L, "OIL_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            OIL_PRESSURE = parameter189;
            Parameter parameter190 = new Parameter("INSTANT_FUEL_CONSUMPTION", 189, 262213L, "INSTANT_FUEL_CONSUMPTION", MeasurementUnit.KILOMETER_PER_LITER, fValueOf, fValueOf2);
            INSTANT_FUEL_CONSUMPTION = parameter190;
            Parameter parameter191 = new Parameter("AVERAGE_FUEL_CONSUMPTION", 190, 262214L, "AVERAGE_FUEL_CONSUMPTION", MeasurementUnit.KILOMETER_PER_LITER, fValueOf, Float.valueOf(126.0f));
            AVERAGE_FUEL_CONSUMPTION = parameter191;
            Parameter parameter192 = new Parameter("ADBLUE_PUMP_RPM", 191, 262215L, "ADBLUE_PUMP_RPM", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, Float.valueOf(10000.0f));
            ADBLUE_PUMP_RPM = parameter192;
            MeasurementUnit measurementUnit12 = MeasurementUnit.CELSIUS_DEGREE;
            Float fValueOf13 = Float.valueOf(-50.0f);
            Parameter parameter193 = new Parameter("ADBLUE_TEMP", 192, 262216L, "ADBLUE_TEMP", measurementUnit12, fValueOf13, fValueOf2);
            ADBLUE_TEMP = parameter193;
            Parameter parameter194 = new Parameter("ADBLUE_QUANTITY", 193, 262217L, "ADBLUE_QUANTITY", MeasurementUnit.GRAM_PER_HOUR, fValueOf, Float.valueOf(19277.0f));
            ADBLUE_QUANTITY = parameter194;
            Parameter parameter195 = new Parameter("REL_ADBLUE_PRESS", 194, 262218L, "REL_ADBLUE_PRESS", MeasurementUnit.KILOPASCAL, fValueOf11, fValueOf8);
            REL_ADBLUE_PRESS = parameter195;
            Parameter parameter196 = new Parameter("ABS_ADBLUE_PRESS", 195, 262219L, "ABS_ADBLUE_PRESS", MeasurementUnit.KILOPASCAL, fValueOf11, Float.valueOf(2000.0f));
            ABS_ADBLUE_PRESS = parameter196;
            Parameter parameter197 = new Parameter("REL_AIR_PRESS_UPSTREAM", CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256, 262220L, "REL_AIR_PRESS_UPSTREAM", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            REL_AIR_PRESS_UPSTREAM = parameter197;
            Parameter parameter198 = new Parameter("ABS_AIR_PRESS_UPSTREAM", 197, 262221L, "ABS_AIR_PRESS_UPSTREAM", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            ABS_AIR_PRESS_UPSTREAM = parameter198;
            Parameter parameter199 = new Parameter("DOWNSTREAM_CAT_NOX", Opcodes.IFNULL, 262222L, "DOWNSTREAM_CAT_NOX", MeasurementUnit.PART_PER_MILLION, Float.valueOf(-200.0f), Float.valueOf(5000.0f));
            DOWNSTREAM_CAT_NOX = parameter199;
            Parameter parameter200 = new Parameter("UPSTREAM_CAT_NOX", Opcodes.IFNONNULL, 262223L, "UPSTREAM_CAT_NOX", MeasurementUnit.PART_PER_MILLION, Float.valueOf(-200.0f), Float.valueOf(5000.0f));
            UPSTREAM_CAT_NOX = parameter200;
            Parameter parameter201 = new Parameter("INJECTED_FUEL_QUANTITY", 200, 262224L, "INJECTED_FUEL_QUANTITY", MeasurementUnit.MILLIGRAM_PER_CYCLE, fValueOf, fValueOf7);
            INJECTED_FUEL_QUANTITY = parameter201;
            Parameter parameter202 = new Parameter("CONTROL_UNIT_TEMP", Constants.PENDING_INTENT_REQUEST_CODE_ODOMETER_CONFIRM, 262225L, "CONTROL_UNIT_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, fValueOf4);
            CONTROL_UNIT_TEMP = parameter202;
            Parameter parameter203 = new Parameter("BOOST_PRESS", Constants.PENDING_INTENT_REQUEST_CODE_CONFIGURATION_UPGRADE, 262227L, "BOOST_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(3000.0f));
            BOOST_PRESS = parameter203;
            Parameter parameter204 = new Parameter("RAIL_PRESS_TARGET", Constants.PENDING_INTENT_REQUEST_CODE_ATTITUDE, 262228L, "RAIL_PRESS_TARGET", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf12);
            RAIL_PRESS_TARGET = parameter204;
            Parameter parameter205 = new Parameter("FUEL_LOW_PRESS_TARGET", Constants.PENDING_INTENT_REQUEST_CODE_PIN_CONFIRM, 262229L, "FUEL_LOW_PRESS_TARGET", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(10000.0f));
            FUEL_LOW_PRESS_TARGET = parameter205;
            Parameter parameter206 = new Parameter("FUEL_LOW_PRESS_ACTUAL", Constants.PENDING_INTENT_REQUEST_CODE_LOGIN_AFTER_REFRESH_TOKEN_EXPIRED, 262230L, "FUEL_LOW_PRESS_ACTUAL", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(10000.0f));
            FUEL_LOW_PRESS_ACTUAL = parameter206;
            Parameter parameter207 = new Parameter("DPF_OBSTRUCT_DEGREE", 206, 262231L, "DPF_OBSTRUCT_DEGREE", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            DPF_OBSTRUCT_DEGREE = parameter207;
            Parameter parameter208 = new Parameter("BOOST_TEMP", 207, 262232L, "BOOST_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, fValueOf4);
            BOOST_TEMP = parameter208;
            Parameter parameter209 = new Parameter("EGR_DIFF_PRESS", Commands.DPM_GetStatus, 262233L, "EGR_DIFF_PRESS", MeasurementUnit.KILOPASCAL, Float.valueOf(-255.0f), fValueOf4);
            EGR_DIFF_PRESS = parameter209;
            Parameter parameter210 = new Parameter("DPF_TEMP_UPSTREAM", Commands.DPM_Start, 262234L, "DPF_TEMP_UPSTREAM", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, fValueOf7);
            DPF_TEMP_UPSTREAM = parameter210;
            Parameter parameter211 = new Parameter("DPF_TEMP_DOWNSTREAM", Commands.DPM_Stop, 262235L, "DPF_TEMP_DOWNSTREAM", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, fValueOf7);
            DPF_TEMP_DOWNSTREAM = parameter211;
            Parameter parameter212 = new Parameter("TURBO_POS_ACTUAL", 211, 262236L, "TURBO_POS_ACTUAL", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            TURBO_POS_ACTUAL = parameter212;
            Parameter parameter213 = new Parameter("TURBO_SPEED", Commands.DPM_Exit, 262237L, "TURBO_SPEED", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, fValueOf12);
            TURBO_SPEED = parameter213;
            Parameter parameter214 = new Parameter("TURBO_POS_DESIRED", Commands.DPMT_GetMasterRequest, 262238L, "TURBO_POS_DESIRED", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf12);
            TURBO_POS_DESIRED = parameter214;
            Parameter parameter215 = new Parameter("FUEL_PUMP_ABSORB", Commands.DPMT_SendSlaveRequest, 262239L, "FUEL_PUMP_ABSORB", MeasurementUnit.AMPERE, fValueOf, Float.valueOf(25.5f));
            FUEL_PUMP_ABSORB = parameter215;
            Parameter parameter216 = new Parameter("FUEL_PUMP_DUTY", Commands.DPMC_GetSupportedDiagnosticProcedures, 262240L, "FUEL_PUMP_DUTY", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            FUEL_PUMP_DUTY = parameter216;
            Parameter parameter217 = new Parameter("FUEL_RAIL_VALVE_ABSORB", Commands.DPMC_SetUserCode, 262241L, "FUEL_RAIL_VALVE_ABSORB", MeasurementUnit.AMPERE, fValueOf, Float.valueOf(25.5f));
            FUEL_RAIL_VALVE_ABSORB = parameter217;
            Parameter parameter218 = new Parameter("FUEL_RAIL_VALVE_DUTY", Commands.DPMC_SetUnlockCode, 262242L, "FUEL_RAIL_VALVE_DUTY", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            FUEL_RAIL_VALVE_DUTY = parameter218;
            Parameter parameter219 = new Parameter("ENGINE_TORQUE_REQ", Commands.DPMT_SetNotification, 262243L, "ENGINE_TORQUE_REQ", MeasurementUnit.NEWTON_PER_METER, Float.valueOf(-255.0f), fValueOf5);
            ENGINE_TORQUE_REQ = parameter219;
            Parameter parameter220 = new Parameter("FUEL_TEMP", Commands.DPMT_NotifySlaveEvent, 262244L, "FUEL_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, fValueOf4);
            FUEL_TEMP = parameter220;
            Parameter parameter221 = new Parameter("EXHAUST_TEMP", Commands.DPMC_GetCreationDate, 262245L, "EXHAUST_TEMP", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-273.0f), Float.valueOf(1735.0f));
            EXHAUST_TEMP = parameter221;
            Parameter parameter222 = new Parameter("EGR_TEMP", 221, 262246L, "EGR_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, fValueOf4);
            EGR_TEMP = parameter222;
            Parameter parameter223 = new Parameter("DOC_IN_TEMP", 222, 262247L, "DOC_IN_TEMP", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-273.0f), Float.valueOf(1735.0f));
            DOC_IN_TEMP = parameter223;
            Parameter parameter224 = new Parameter("DOC_OUT_TEMP", 223, 262248L, "DOC_OUT_TEMP", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-273.0f), Float.valueOf(1735.0f));
            DOC_OUT_TEMP = parameter224;
            Parameter parameter225 = new Parameter("DPF_OUT_TEMP", 224, 262249L, "DPF_OUT_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, fValueOf7);
            DPF_OUT_TEMP = parameter225;
            Parameter parameter226 = new Parameter("SCR_IN_TEMP", 225, 262250L, "SCR_IN_TEMP", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-273.0f), Float.valueOf(1735.0f));
            SCR_IN_TEMP = parameter226;
            Parameter parameter227 = new Parameter("SCR_OUT_TEMP", 226, 262251L, "SCR_OUT_TEMP", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-273.0f), Float.valueOf(1735.0f));
            SCR_OUT_TEMP = parameter227;
            Parameter parameter228 = new Parameter("FUEL_DELIVERY_PRESS", 227, 262252L, "FUEL_DELIVERY_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            FUEL_DELIVERY_PRESS = parameter228;
            Parameter parameter229 = new Parameter("INJECTOR_PRESS", 228, 262253L, "INJECTOR_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf12);
            INJECTOR_PRESS = parameter229;
            Parameter parameter230 = new Parameter("THROTTLE_ACT_POS", 229, 262254L, "THROTTLE_ACT_POS", MeasurementUnit.PERCENTAGE, Float.valueOf(-10.0f), fValueOf2);
            THROTTLE_ACT_POS = parameter230;
            Parameter parameter231 = new Parameter("THROTTLE_REQ_POS", Commands.GetStatus, 262255L, "THROTTLE_REQ_POS", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            THROTTLE_REQ_POS = parameter231;
            Parameter parameter232 = new Parameter("THROTTLE_PED_POS", Commands.GetTripStatus, 262256L, "THROTTLE_PED_POS", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            THROTTLE_PED_POS = parameter232;
            Parameter parameter233 = new Parameter("ENGINE_COOLANT_LEV", 232, 262257L, "ENGINE_COOLANT_LEV", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            ENGINE_COOLANT_LEV = parameter233;
            Parameter parameter234 = new Parameter("ENGINE_OIL_LEV", Commands.GetBTMacAddress, 262258L, "ENGINE_OIL_LEV", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            ENGINE_OIL_LEV = parameter234;
            Parameter parameter235 = new Parameter("FUEL_RAIL_VALVE_POS", Commands.GetHardwareVersion, 262259L, "FUEL_RAIL_VALVE_POS", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            FUEL_RAIL_VALVE_POS = parameter235;
            Parameter parameter236 = new Parameter("WAST_REQ_POS", 235, 262260L, "WAST_REQ_POS", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            WAST_REQ_POS = parameter236;
            Parameter parameter237 = new Parameter("DOSER_VALVE_DUTY", Commands.GetFirmwareVersion, 262261L, "DOSER_VALVE_DUTY", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            DOSER_VALVE_DUTY = parameter237;
            Parameter parameter238 = new Parameter("FAN_SPEED_RPM", Commands.GetSettings, 262262L, "FAN_SPEED_RPM", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, fValueOf12);
            FAN_SPEED_RPM = parameter238;
            Parameter parameter239 = new Parameter("ADBLUE_QUANTITY_REQ", Commands.GetSerialNumber, 262263L, "ADBLUE_QUANTITY_REQ", MeasurementUnit.GRAM_PER_HOUR, fValueOf, Float.valueOf(10000.0f));
            ADBLUE_QUANTITY_REQ = parameter239;
            Parameter parameter240 = new Parameter("FUEL_FILT_DIFF_PRESS", Commands.GetSupportedCommands, 262264L, "FUEL_FILT_DIFF_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            FUEL_FILT_DIFF_PRESS = parameter240;
            Parameter parameter241 = new Parameter("DPF_OUT_PRESS", Commands.GetSOSStatus, 262265L, "DPF_OUT_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            DPF_OUT_PRESS = parameter241;
            Parameter parameter242 = new Parameter("EGR_PRESS", Commands.SetUserDatabase, 262266L, "EGR_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            EGR_PRESS = parameter242;
            Parameter parameter243 = new Parameter("DOC_IN_PRESS", Commands.GetUserDatabase, 262267L, "DOC_IN_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            DOC_IN_PRESS = parameter243;
            Parameter parameter244 = new Parameter("GAS_FLOW", 243, 262268L, "GAS_FLOW", MeasurementUnit.KILOGRAM_PER_HOUR, fValueOf, Float.valueOf(3213.0f));
            GAS_FLOW = parameter244;
            Parameter parameter245 = new Parameter("EXHAUST_FLOW", Commands.DPM_EraseECUProgrammingReportFile, 262269L, "EXHAUST_FLOW", MeasurementUnit.KILOGRAM_PER_HOUR, fValueOf, Float.valueOf(12851.0f));
            EXHAUST_FLOW = parameter245;
            Parameter parameter246 = new Parameter("FUEL_FLOW", 245, 262270L, "FUEL_FLOW", MeasurementUnit.KILOGRAM_PER_HOUR, fValueOf, fValueOf7);
            FUEL_FLOW = parameter246;
            Parameter parameter247 = new Parameter("NOX_FLOW", 246, 262271L, "NOX_FLOW", MeasurementUnit.KILOGRAM_PER_HOUR, fValueOf, fValueOf7);
            NOX_FLOW = parameter247;
            Parameter parameter248 = new Parameter("PM_FLOW", 247, 262272L, "PM_FLOW", MeasurementUnit.KILOGRAM_PER_HOUR, fValueOf, fValueOf7);
            PM_FLOW = parameter248;
            Parameter parameter249 = new Parameter("EXHAUST_FLOW_REQ", 248, 262273L, "EXHAUST_FLOW_REQ", MeasurementUnit.KILOGRAM_PER_HOUR, fValueOf, fValueOf7);
            EXHAUST_FLOW_REQ = parameter249;
            Parameter parameter250 = new Parameter("ADBLUE_QUANT_CONS", 249, 262274L, "ADBLUE_QUANT_CONS", MeasurementUnit.GRAM, fValueOf, Float.valueOf(2000000.0f));
            ADBLUE_QUANT_CONS = parameter250;
            Parameter parameter251 = new Parameter("DIST_LAST_REGEN", 250, 262275L, "DIST_LAST_REGEN", MeasurementUnit.KILOMETER, fValueOf, fValueOf12);
            DIST_LAST_REGEN = parameter251;
            Parameter parameter252 = new Parameter("DPF_IN_TEMP", 251, 262276L, "DPF_IN_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, fValueOf7);
            DPF_IN_TEMP = parameter252;
            Parameter parameter253 = new Parameter("CAMSHAFT_SPEED", 252, 262277L, "CAMSHAFT_SPEED", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, fValueOf7);
            CAMSHAFT_SPEED = parameter253;
            Parameter parameter254 = new Parameter("CRANKSHAFT_SPEED", 253, 262278L, "CRANKSHAFT_SPEED", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, fValueOf7);
            CRANKSHAFT_SPEED = parameter254;
            Parameter parameter255 = new Parameter("REQUESTED_BOOST_PRESS", SecretKeyPacket.USAGE_SHA1, 262279L, "REQUESTED_BOOST_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(3000.0f));
            REQUESTED_BOOST_PRESS = parameter255;
            Parameter parameter256 = new Parameter("COOLANT_PRESS", 255, 262280L, "COOLANT_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(3000.0f));
            COOLANT_PRESS = parameter256;
            Parameter parameter257 = new Parameter("EXH_GAS_COUNTERPR", 256, 262282L, "EXH_GAS_COUNTERPR", MeasurementUnit.KILOPASCAL, Float.valueOf(-255.0f), fValueOf4);
            EXH_GAS_COUNTERPR = parameter257;
            Parameter parameter258 = new Parameter("AFTER_FUEL_PRESS", InputDeviceCompat.SOURCE_KEYBOARD, 262283L, "AFTER_FUEL_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            AFTER_FUEL_PRESS = parameter258;
            Parameter parameter259 = new Parameter("IN_THROTTLE_ACT_POS", BZip2Constants.MAX_ALPHA_SIZE, 262284L, "IN_THROTTLE_ACT_POS", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            IN_THROTTLE_ACT_POS = parameter259;
            Parameter parameter260 = new Parameter("AFTER_FUEL_VALVE", 259, 262285L, "AFTER_FUEL_VALVE", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            AFTER_FUEL_VALVE = parameter260;
            Parameter parameter261 = new Parameter("DPF_SOOT_LOAD", 260, 262286L, "DPF_SOOT_LOAD", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(250.0f));
            DPF_SOOT_LOAD = parameter261;
            Parameter parameter262 = new Parameter("DPF_ASH_LOAD", 261, 262287L, "DPF_ASH_LOAD", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(250.0f));
            DPF_ASH_LOAD = parameter262;
            Parameter parameter263 = new Parameter("INTAKE_AIR_PRESS", 262, 262289L, "INTAKE_AIR_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(500.0f));
            INTAKE_AIR_PRESS = parameter263;
            Parameter parameter264 = new Parameter("GAS_PRES_SUPPLY", 263, 262290L, "GAS_PRES_SUPPLY", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf12);
            GAS_PRES_SUPPLY = parameter264;
            Parameter parameter265 = new Parameter("ADBLUE_TANK_TEMP", 264, 262291L, "ADBLUE_TANK_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, Float.valueOf(210.0f));
            ADBLUE_TANK_TEMP = parameter265;
            Parameter parameter266 = new Parameter("HUM_RELAT", 265, 262292L, "HUM_RELAT", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            HUM_RELAT = parameter266;
            Parameter parameter267 = new Parameter("FAN_SPEED_PERC", at.favre.lib.armadillo.BuildConfig.VERSION_CODE, 262293L, "FAN_SPEED_PERC", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            FAN_SPEED_PERC = parameter267;
            Parameter parameter268 = new Parameter("ENGINE_TEMP_2", 267, 262294L, "ENGINE_TEMP_2", MeasurementUnit.CELSIUS_DEGREE, fValueOf11, Float.valueOf(273.0f));
            ENGINE_TEMP_2 = parameter268;
            Parameter parameter269 = new Parameter("DPF_IN_TEMP_2", 268, 262295L, "DPF_IN_TEMP_2", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, fValueOf7);
            DPF_IN_TEMP_2 = parameter269;
            Parameter parameter270 = new Parameter("DPF_OUT_TEMP_2", 269, 262296L, "DPF_OUT_TEMP_2", MeasurementUnit.CELSIUS_DEGREE, fValueOf13, fValueOf7);
            DPF_OUT_TEMP_2 = parameter270;
            Parameter parameter271 = new Parameter("DPF_IN_PRESS", 270, 262297L, "DPF_IN_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            DPF_IN_PRESS = parameter271;
            Parameter parameter272 = new Parameter("REAGENT_TANK_LEV", 271, 262298L, "REAGENT_TANK_LEV", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            REAGENT_TANK_LEV = parameter272;
            Parameter parameter273 = new Parameter("EGR_TEMP_3", 272, 262300L, "EGR_TEMP_3", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-40.0f), Float.valueOf(980.0f));
            EGR_TEMP_3 = parameter273;
            Parameter parameter274 = new Parameter("O2_SENSOR", 273, 262303L, "O2_SENSOR", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            O2_SENSOR = parameter274;
            Parameter parameter275 = new Parameter("EXHAUST_FLOW_M3", 274, 262304L, "EXHAUST_FLOW_M3", MeasurementUnit.CUBIC_METER_PER_SECOND, fValueOf, fValueOf7);
            EXHAUST_FLOW_M3 = parameter275;
            Parameter parameter276 = new Parameter("ADBLUE_QUALITY", 275, 262311L, "ADBLUE_QUALITY", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            ADBLUE_QUALITY = parameter276;
            Parameter parameter277 = new Parameter("TIME_LAST_REGEN", 276, 262312L, "TIME_LAST_REGEN", MeasurementUnit.HOUR, fValueOf, fValueOf12);
            TIME_LAST_REGEN = parameter277;
            Parameter parameter278 = new Parameter("INJECTED_FUEL_QUANTITY_1", 277, 262353L, "INJECTED_FUEL_QUANTITY_1", MeasurementUnit.MILLIGRAM_PER_CYCLE, Float.valueOf(-10.0f), fValueOf9);
            INJECTED_FUEL_QUANTITY_1 = parameter278;
            Parameter parameter279 = new Parameter("INJECTED_FUEL_QUANTITY_2", 278, 262354L, "INJECTED_FUEL_QUANTITY_2", MeasurementUnit.MILLIGRAM_PER_CYCLE, Float.valueOf(-10.0f), fValueOf9);
            INJECTED_FUEL_QUANTITY_2 = parameter279;
            Parameter parameter280 = new Parameter("INJECTED_FUEL_QUANTITY_3", 279, 262355L, "INJECTED_FUEL_QUANTITY_3", MeasurementUnit.MILLIGRAM_PER_CYCLE, Float.valueOf(-10.0f), fValueOf9);
            INJECTED_FUEL_QUANTITY_3 = parameter280;
            Parameter parameter281 = new Parameter("INJECTED_FUEL_QUANTITY_4", 280, 262356L, "INJECTED_FUEL_QUANTITY_4", MeasurementUnit.MILLIGRAM_PER_CYCLE, Float.valueOf(-10.0f), fValueOf9);
            INJECTED_FUEL_QUANTITY_4 = parameter281;
            Parameter parameter282 = new Parameter("INJECTED_FUEL_QUANTITY_5", 281, 262357L, "INJECTED_FUEL_QUANTITY_5", MeasurementUnit.MILLIGRAM_PER_CYCLE, Float.valueOf(-10.0f), fValueOf9);
            INJECTED_FUEL_QUANTITY_5 = parameter282;
            Parameter parameter283 = new Parameter("INJECTED_FUEL_QUANTITY_6", 282, 262358L, "INJECTED_FUEL_QUANTITY_6", MeasurementUnit.MILLIGRAM_PER_CYCLE, Float.valueOf(-10.0f), fValueOf9);
            INJECTED_FUEL_QUANTITY_6 = parameter283;
            Parameter parameter284 = new Parameter("INJ_ADVANCE", 283, 262360L, "INJ_ADVANCE", MeasurementUnit.DEGREE, fValueOf10, fValueOf5);
            INJ_ADVANCE = parameter284;
            Parameter parameter285 = new Parameter("MPROP_VALVE", 284, 262361L, "MPROP_VALVE", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            MPROP_VALVE = parameter285;
            Parameter parameter286 = new Parameter("ENGINE_BRAKE_VALVE", 285, 262362L, "ENGINE_BRAKE_VALVE", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            ENGINE_BRAKE_VALVE = parameter286;
            Parameter parameter287 = new Parameter("ADBLUE_PUMP_POS", 286, 262363L, "ADBLUE_PUMP_POS", MeasurementUnit.PERCENTAGE, fValueOf11, fValueOf2);
            ADBLUE_PUMP_POS = parameter287;
            Parameter parameter288 = new Parameter("INJECTED_FUEL_QUANTITY_7", 287, 262364L, "INJECTED_FUEL_QUANTITY_7", MeasurementUnit.MILLIGRAM_PER_CYCLE, fValueOf, fValueOf7);
            INJECTED_FUEL_QUANTITY_7 = parameter288;
            Parameter parameter289 = new Parameter("INJECTED_FUEL_QUANTITY_8", 288, 262365L, "INJECTED_FUEL_QUANTITY_8", MeasurementUnit.MILLIGRAM_PER_CYCLE, fValueOf, fValueOf7);
            INJECTED_FUEL_QUANTITY_8 = parameter289;
            Parameter parameter290 = new Parameter("INJECTED_AIR_QUANTITY", 289, 262366L, "INJECTED_AIR_QUANTITY", MeasurementUnit.MILLIGRAM_PER_CYCLE, fValueOf, fValueOf7);
            INJECTED_AIR_QUANTITY = parameter290;
            Parameter parameter291 = new Parameter("ENGINE_HOURS", 290, 262367L, "ENGINE_HOURS", MeasurementUnit.HOUR, fValueOf, Float.valueOf(2.10554064E8f));
            ENGINE_HOURS = parameter291;
            Parameter parameter292 = new Parameter("DISTANCE_WITH_MIL_ON", 291, 262377L, "DISTANCE_WITH_MIL_ON", MeasurementUnit.KILOMETER, fValueOf, fValueOf5);
            DISTANCE_WITH_MIL_ON = parameter292;
            Parameter parameter293 = new Parameter("ENGINE_RUN_TIME_WITH_MIL_ON", 292, 262378L, "ENGINE_RUN_TIME_WITH_MIL_ON", MeasurementUnit.MINUTE, fValueOf, fValueOf5);
            ENGINE_RUN_TIME_WITH_MIL_ON = parameter293;
            Parameter parameter294 = new Parameter("DTC_CNT", 293, 262382L, "DTC_CNT", null, fValueOf, Float.valueOf(127.0f));
            DTC_CNT = parameter294;
            Parameter parameter295 = new Parameter("PM_SENSOR_MASS_1_VALUE", 294, 262385L, "PM_SENSOR_MASS_1_VALUE", MeasurementUnit.MILLIGRAM_PER_CUBIC_METER, fValueOf, Float.valueOf(820.0f));
            PM_SENSOR_MASS_1_VALUE = parameter295;
            Parameter parameter296 = new Parameter("PM_SENSOR_MASS_2_VALUE", 295, 262386L, "PM_SENSOR_MASS_2_VALUE", MeasurementUnit.MILLIGRAM_PER_CUBIC_METER, fValueOf, Float.valueOf(820.0f));
            PM_SENSOR_MASS_2_VALUE = parameter296;
            Parameter parameter297 = new Parameter("NOMINAL_FRICTION_PERCENT_TORQUE", 296, 262388L, "NOMINAL_FRICTION_PERCENT_TORQUE", MeasurementUnit.PERCENTAGE, Float.valueOf(-125.0f), Float.valueOf(125.0f));
            NOMINAL_FRICTION_PERCENT_TORQUE = parameter297;
            Parameter parameter298 = new Parameter("ENGINE_EXTENDED_CRANKCASE_PRESSURE", 297, 262389L, "ENGINE_EXTENDED_CRANKCASE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(12.5f));
            ENGINE_EXTENDED_CRANKCASE_PRESSURE = parameter298;
            Parameter parameter299 = new Parameter("ABSOLUTE_INDUCEMENT_TIME", 298, 262400L, "ABSOLUTE_INDUCEMENT_TIME", MeasurementUnit.SECOND, fValueOf, Float.valueOf(3932040.0f));
            ABSOLUTE_INDUCEMENT_TIME = parameter299;
            Parameter parameter300 = new Parameter("ENGINE_CRANKCASE_PRESSURE", 299, 262402L, "ENGINE_CRANKCASE_PRESSURE", MeasurementUnit.KILOPASCAL, Float.valueOf(-250.0f), Float.valueOf(251.99f));
            ENGINE_CRANKCASE_PRESSURE = parameter300;
            Parameter parameter301 = new Parameter("ABSOLUTE_REAGENT_TANK_LEV", FcmConstants.ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE, 262403L, "ABSOLUTE_REAGENT_TANK_LEV", MeasurementUnit.MILLIMETER, fValueOf, Float.valueOf(6425.5f));
            ABSOLUTE_REAGENT_TANK_LEV = parameter301;
            Parameter parameter302 = new Parameter("INTAKE_MANIFOLD_TEMPERATURE", FcmConstants.ID_SERVICE_RENEW, 262423L, "INTAKE_MANIFOLD_TEMPERATURE", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-40.0f), Float.valueOf(210.0f));
            INTAKE_MANIFOLD_TEMPERATURE = parameter302;
            Parameter parameter303 = new Parameter("INJECTION_TIME", FcmConstants.ID_SERVICE_SOS_INFO_ALERT_NOTIFICATION, 262424L, "INJECTION_TIME", MeasurementUnit.MILLISECOND, fValueOf, Float.valueOf(130000.0f));
            INJECTION_TIME = parameter303;
            Parameter parameter304 = new Parameter("MAP_SENSOR", FcmConstants.ID_SERVICE_SOS_PURCHASED_BY_CUSTOMER, 262426L, "MAP_SENSOR", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(300.0f));
            MAP_SENSOR = parameter304;
            Parameter parameter305 = new Parameter("MASS_AIR_FLOW_DESIRED", 304, 262427L, "MASS_AIR_FLOW_DESIRED", MeasurementUnit.GRAM_PER_SECOND, fValueOf, Float.valueOf(656.0f));
            MASS_AIR_FLOW_DESIRED = parameter305;
            Parameter parameter306 = new Parameter("ENGINE_CMU_PERC_REQ_DEF", 305, 262428L, "ENGINE_CMU_PERC_REQ_DEF", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            ENGINE_CMU_PERC_REQ_DEF = parameter306;
            Parameter parameter307 = new Parameter("ENGINE_CORRECTION_FACTOR", 306, 262429L, "ENGINE_CORRECTION_FACTOR", null, fValueOf, Float.valueOf(2.0f));
            ENGINE_CORRECTION_FACTOR = parameter307;
            Parameter parameter308 = new Parameter("POTASSIUM_SUPEROXIDE_ADAPTATION", StatusLine.HTTP_TEMP_REDIRECT, 262431L, "POTASSIUM_SUPEROXIDE_ADAPTATION", null, fValueOf, Float.valueOf(2.0f));
            POTASSIUM_SUPEROXIDE_ADAPTATION = parameter308;
            Parameter parameter309 = new Parameter("ENGINE_PERC_CMU_IST_ABS_REAL", StatusLine.HTTP_PERM_REDIRECT, 262432L, "ENGINE_PERC_CMU_IST_ABS_REAL", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            ENGINE_PERC_CMU_IST_ABS_REAL = parameter309;
            Parameter parameter310 = new Parameter("EXHAUST_TEMP_2", 309, 262434L, "EXHAUST_TEMP_2", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-273.0f), Float.valueOf(1735.0f));
            EXHAUST_TEMP_2 = parameter310;
            Parameter parameter311 = new Parameter("INTAKE_AIR_PRESS_2", 310, 262435L, "INTAKE_AIR_PRESS_2", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf4);
            INTAKE_AIR_PRESS_2 = parameter311;
            Parameter parameter312 = new Parameter("ABSOLUTE_REAGENT_TANK_LEV_2", 311, 262436L, "ABSOLUTE_REAGENT_TANK_LEV_2", MeasurementUnit.MILLIMETER, fValueOf, Float.valueOf(6425.5f));
            ABSOLUTE_REAGENT_TANK_LEV_2 = parameter312;
            Parameter parameter313 = new Parameter("REAGENT_TANK_LEV_2", 312, 262437L, "REAGENT_TANK_LEV_2", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            REAGENT_TANK_LEV_2 = parameter313;
            Parameter parameter314 = new Parameter("REAGENT_TANK_LEV_3", 313, 262438L, "REAGENT_TANK_LEV_3", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            REAGENT_TANK_LEV_3 = parameter314;
            Parameter parameter315 = new Parameter("ABS_ADBLUE_PRESS_2", 314, 262439L, "ABS_ADBLUE_PRESS_2", MeasurementUnit.KILOPASCAL, fValueOf11, Float.valueOf(2000.0f));
            ABS_ADBLUE_PRESS_2 = parameter315;
            Parameter parameter316 = new Parameter("SCR_IN_TEMP_2", 315, 262441L, "SCR_IN_TEMP_2", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-273.0f), Float.valueOf(1735.0f));
            SCR_IN_TEMP_2 = parameter316;
            Parameter parameter317 = new Parameter("SCR_OUT_TEMP_2", 316, 262442L, "SCR_OUT_TEMP_2", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-273.0f), Float.valueOf(1735.0f));
            SCR_OUT_TEMP_2 = parameter317;
            Parameter parameter318 = new Parameter("ENGINE_REFERENCE_TORQUE_REL", 317, 262443L, "ENGINE_REFERENCE_TORQUE_REL", MeasurementUnit.NEWTON_PER_METER, fValueOf, fValueOf5);
            ENGINE_REFERENCE_TORQUE_REL = parameter318;
            Parameter parameter319 = new Parameter("INDEX_LAST_STABILIZED_PERIOD", 318, 262446L, "INDEX_LAST_STABILIZED_PERIOD", MeasurementUnit.DEGREE, Float.valueOf(-200.0f), Float.valueOf(200.0f));
            INDEX_LAST_STABILIZED_PERIOD = parameter319;
            Parameter parameter320 = new Parameter("INJ_BASE_ADVANCE", 319, 262447L, "INJ_BASE_ADVANCE", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(102.0f));
            INJ_BASE_ADVANCE = parameter320;
            Parameter parameter321 = new Parameter("ACTUAL_ENGINE_POWER", 320, 262448L, "ACTUAL_ENGINE_POWER", MeasurementUnit.WATT, fValueOf, Float.valueOf(1000000.0f));
            ACTUAL_ENGINE_POWER = parameter321;
            Parameter parameter322 = new Parameter("DESIRED_CATALYST_EFFICIENCY", 321, 262449L, "DESIRED_CATALYST_EFFICIENCY", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            DESIRED_CATALYST_EFFICIENCY = parameter322;
            Parameter parameter323 = new Parameter("ACTUAL_CATALYST_EFFICIENCY", 322, 262450L, "ACTUAL_CATALYST_EFFICIENCY", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            ACTUAL_CATALYST_EFFICIENCY = parameter323;
            Parameter parameter324 = new Parameter("NH3_CONCENTRATION", 323, 262451L, "NH3_CONCENTRATION", MeasurementUnit.PART_PER_MILLION, fValueOf, Float.valueOf(5000.0f));
            NH3_CONCENTRATION = parameter324;
            Parameter parameter325 = new Parameter("MAXIMUM_TORQUE_CURVE", 324, 262452L, "MAXIMUM_TORQUE_CURVE", MeasurementUnit.NEWTON_PER_METER, fValueOf10, fValueOf5);
            MAXIMUM_TORQUE_CURVE = parameter325;
            Parameter parameter326 = new Parameter("TOTAL_INJECTED_FUEL_QUANTITY", 325, 262453L, "TOTAL_INJECTED_FUEL_QUANTITY", MeasurementUnit.MILLIGRAM_PER_CYCLE, fValueOf, Float.valueOf(10000.0f));
            TOTAL_INJECTED_FUEL_QUANTITY = parameter326;
            Parameter parameter327 = new Parameter("REQUESTED_ENGINE_RPM", 326, 262454L, "REQUESTED_ENGINE_RPM", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, Float.valueOf(100000.0f));
            REQUESTED_ENGINE_RPM = parameter327;
            Parameter parameter328 = new Parameter("ENGINE_IDLE_SETPOINT_LOW_RPM", 327, 262455L, "ENGINE_IDLE_SETPOINT_LOW_RPM", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, Float.valueOf(100000.0f));
            ENGINE_IDLE_SETPOINT_LOW_RPM = parameter328;
            Parameter parameter329 = new Parameter("DPF_FLOW_RESISTANCE", 328, 262456L, "DPF_FLOW_RESISTANCE", MeasurementUnit.HECTOPASCAL_PER_CUBIC_METER_PER_HOUR, Float.valueOf(-5.0f), Float.valueOf(5.0f));
            DPF_FLOW_RESISTANCE = parameter329;
            Parameter parameter330 = new Parameter("ACTIVE_OPERATION_MODE", 329, 262457L, "ACTIVE_OPERATION_MODE", null, fValueOf, fValueOf3);
            ACTIVE_OPERATION_MODE = parameter330;
            Parameter parameter331 = new Parameter("CURRENT_TORQUE_LIMIT", 330, 262458L, "CURRENT_TORQUE_LIMIT", null, fValueOf, fValueOf3);
            CURRENT_TORQUE_LIMIT = parameter331;
            Parameter parameter332 = new Parameter("DOSING_CORRECTION_FACTOR", 331, 262460L, "DOSING_CORRECTION_FACTOR", null, fValueOf, Float.valueOf(5.0f));
            DOSING_CORRECTION_FACTOR = parameter332;
            Parameter parameter333 = new Parameter("RAMPED_SMOKE_LIMITATION_QUANTITY", 332, 262461L, "RAMPED_SMOKE_LIMITATION_QUANTITY", MeasurementUnit.MILLIGRAM_PER_CYCLE, Float.valueOf(-350.0f), Float.valueOf(350.0f));
            RAMPED_SMOKE_LIMITATION_QUANTITY = parameter333;
            Parameter parameter334 = new Parameter("ITEM_STATUS", 333, 262462L, "ITEM_STATUS", null, fValueOf, fValueOf5);
            ITEM_STATUS = parameter334;
            Parameter parameter335 = new Parameter("ACTUAL_ABS_ENGINE_CLUTCH_TORQUE", 334, 262463L, "ACTUAL_ABS_ENGINE_CLUTCH_TORQUE", MeasurementUnit.NEWTON_PER_METER, fValueOf, fValueOf5);
            ACTUAL_ABS_ENGINE_CLUTCH_TORQUE = parameter335;
            Parameter parameter336 = new Parameter("DOWNSTREAM_CAT_NOX_CALCULATED", 335, 262464L, "DOWNSTREAM_CAT_NOX_CALCULATED", MeasurementUnit.PART_PER_MILLION, fValueOf, Float.valueOf(5000.0f));
            DOWNSTREAM_CAT_NOX_CALCULATED = parameter336;
            Parameter parameter337 = new Parameter("UPSTREAM_CAT_NOX_CALCULATED", 336, 262465L, "UPSTREAM_CAT_NOX_CALCULATED", MeasurementUnit.PART_PER_MILLION, fValueOf, Float.valueOf(5000.0f));
            UPSTREAM_CAT_NOX_CALCULATED = parameter337;
            Parameter parameter338 = new Parameter("UPSTREAM_CAT_NOX_RAW", 337, 262466L, "UPSTREAM_CAT_NOX_RAW", MeasurementUnit.PART_PER_MILLION, fValueOf, Float.valueOf(5000.0f));
            UPSTREAM_CAT_NOX_RAW = parameter338;
            Parameter parameter339 = new Parameter("VOLUMETRIC_EFFICIENCY", 338, 262468L, "VOLUMETRIC_EFFICIENCY", null, fValueOf, fValueOf2);
            VOLUMETRIC_EFFICIENCY = parameter339;
            Parameter parameter340 = new Parameter("MISFIRE_CYLINDER_1", 339, 262469L, "MISFIRE_CYLINDER_1", null, fValueOf, fValueOf4);
            MISFIRE_CYLINDER_1 = parameter340;
            Parameter parameter341 = new Parameter("MISFIRE_CYLINDER_2", 340, 262470L, "MISFIRE_CYLINDER_2", null, fValueOf, fValueOf4);
            MISFIRE_CYLINDER_2 = parameter341;
            Parameter parameter342 = new Parameter("MISFIRE_CYLINDER_3", 341, 262471L, "MISFIRE_CYLINDER_3", null, fValueOf, fValueOf4);
            MISFIRE_CYLINDER_3 = parameter342;
            Parameter parameter343 = new Parameter("MISFIRE_CYLINDER_4", 342, 262472L, "MISFIRE_CYLINDER_4", null, fValueOf, fValueOf4);
            MISFIRE_CYLINDER_4 = parameter343;
            Parameter parameter344 = new Parameter("MISFIRE_CYLINDER_5", 343, 262473L, "MISFIRE_CYLINDER_5", null, fValueOf, fValueOf4);
            MISFIRE_CYLINDER_5 = parameter344;
            Parameter parameter345 = new Parameter("MISFIRE_CYLINDER_6", 344, 262474L, "MISFIRE_CYLINDER_6", null, fValueOf, fValueOf4);
            MISFIRE_CYLINDER_6 = parameter345;
            Parameter parameter346 = new Parameter("NOMINAL_TORQUE_LIMIT_VIA_CAN", 345, 262475L, "NOMINAL_TORQUE_LIMIT_VIA_CAN", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(4096.0f));
            NOMINAL_TORQUE_LIMIT_VIA_CAN = parameter346;
            Parameter parameter347 = new Parameter("INJECTION_TIME_DERATE", 346, 262476L, "INJECTION_TIME_DERATE", null, fValueOf, fValueOf2);
            INJECTION_TIME_DERATE = parameter347;
            Parameter parameter348 = new Parameter("RAIL_TEMPERATURE_DERATE", 347, 262477L, "RAIL_TEMPERATURE_DERATE", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(4096.0f));
            RAIL_TEMPERATURE_DERATE = parameter348;
            Parameter parameter349 = new Parameter("COOLANT_TEMPERATURE_DERATE", 348, 262478L, "COOLANT_TEMPERATURE_DERATE", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(256.0f));
            COOLANT_TEMPERATURE_DERATE = parameter349;
            Parameter parameter350 = new Parameter("TORQUE_FEEDBACK_TRASMITTED_ON_CAN", 349, 262479L, "TORQUE_FEEDBACK_TRASMITTED_ON_CAN", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(4096.0f));
            TORQUE_FEEDBACK_TRASMITTED_ON_CAN = parameter350;
            Parameter parameter351 = new Parameter("LOW_IDLE_INTEGRAL_VALUE", 350, 262480L, "LOW_IDLE_INTEGRAL_VALUE", MeasurementUnit.PERCENTAGE, Float.valueOf(-2048.0f), Float.valueOf(2048.0f));
            LOW_IDLE_INTEGRAL_VALUE = parameter351;
            Parameter parameter352 = new Parameter("TORQUE_REQUESTED_BY_SPEED_CONTROL", 351, 262481L, "TORQUE_REQUESTED_BY_SPEED_CONTROL", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(4096.0f));
            TORQUE_REQUESTED_BY_SPEED_CONTROL = parameter352;
            Parameter parameter353 = new Parameter("OPEN_LOOP_TORQUE_REQUESTED_BY_SPEED_CONTROL", 352, 262482L, "OPEN_LOOP_TORQUE_REQUESTED_BY_SPEED_CONTROL", MeasurementUnit.PERCENTAGE, fValueOf, Float.valueOf(4096.0f));
            OPEN_LOOP_TORQUE_REQUESTED_BY_SPEED_CONTROL = parameter353;
            Parameter parameter354 = new Parameter("PARAMETER_SET_SELECTED_BY_MACHINE", 353, 262483L, "PARAMETER_SET_SELECTED_BY_MACHINE", null, fValueOf, fValueOf4);
            PARAMETER_SET_SELECTED_BY_MACHINE = parameter354;
            Parameter parameter355 = new Parameter("AIR_FUEL_LAMBDA_CONTROLLER", 354, 262484L, "AIR_FUEL_LAMBDA_CONTROLLER", null, fValueOf, Float.valueOf(2.0f));
            AIR_FUEL_LAMBDA_CONTROLLER = parameter355;
            Parameter parameter356 = new Parameter("ENGINE_SPEED_DERIVATE", 355, 262485L, "ENGINE_SPEED_DERIVATE", MeasurementUnit.REVOLUTION_PER_MINUTE_PER_SECOND, Float.valueOf(-32768.0f), Float.valueOf(32767.0f));
            ENGINE_SPEED_DERIVATE = parameter356;
            Parameter parameter357 = new Parameter("ADAPTIVE_CORRECTION_FACTOR_FOR_AF", 356, 262486L, "ADAPTIVE_CORRECTION_FACTOR_FOR_AF", null, fValueOf, Float.valueOf(2.0f));
            ADAPTIVE_CORRECTION_FACTOR_FOR_AF = parameter357;
            Parameter parameter358 = new Parameter("VEHICLE_SPEED_LIMIT", 357, 262487L, "VEHICLE_SPEED_LIMIT", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf, fValueOf5);
            VEHICLE_SPEED_LIMIT = parameter358;
            Parameter parameter359 = new Parameter("SPEED_CONTROL_PROPORTIONAL_PART", 358, 262488L, "SPEED_CONTROL_PROPORTIONAL_PART", MeasurementUnit.PERCENTAGE, Float.valueOf(-2048.0f), Float.valueOf(2048.0f));
            SPEED_CONTROL_PROPORTIONAL_PART = parameter359;
            Parameter parameter360 = new Parameter("SPEED_CONTROL_INTEGRAL_VALUE", 359, 262489L, "SPEED_CONTROL_INTEGRAL_VALUE", MeasurementUnit.PERCENTAGE, Float.valueOf(-2048.0f), Float.valueOf(2048.0f));
            SPEED_CONTROL_INTEGRAL_VALUE = parameter360;
            Parameter parameter361 = new Parameter("MEASURED_FILTERED_CATALYST_EFFICIENCY", 360, 262494L, "MEASURED_FILTERED_CATALYST_EFFICIENCY", null, Float.valueOf(-4.0f), Float.valueOf(4.0f));
            MEASURED_FILTERED_CATALYST_EFFICIENCY = parameter361;
            Parameter parameter362 = new Parameter("CALCULATED_FILTERED_CATALYST_EFFICIENCY", 361, 262495L, "CALCULATED_FILTERED_CATALYST_EFFICIENCY", null, Float.valueOf(-4.0f), Float.valueOf(4.0f));
            CALCULATED_FILTERED_CATALYST_EFFICIENCY = parameter362;
            Parameter parameter363 = new Parameter("DSOCKET_BATTERY_VOLT", 362, MockDataID.Parameter.DSOCKET_BATTERY_VOLT, "DSOCKET_BATTERY_VOLT", MeasurementUnit.VOLT, fValueOf, Float.valueOf(50.0f));
            DSOCKET_BATTERY_VOLT = parameter363;
            Parameter parameter364 = new Parameter("BATTERY_VOLT", 363, MockDataID.Parameter.BATTERY_VOLT, "BATTERY_VOLT", MeasurementUnit.VOLT, fValueOf, Float.valueOf(50.0f));
            BATTERY_VOLT = parameter364;
            Parameter parameter365 = new Parameter("AUX_BATTERY_VOLT", 364, 327682L, "AUX_BATTERY_VOLT", MeasurementUnit.VOLT, fValueOf, Float.valueOf(50.0f));
            AUX_BATTERY_VOLT = parameter365;
            Parameter parameter366 = new Parameter("BATTERY_CHARGE_LEVEL", 365, 327683L, "BATTERY_CHARGE_LEVEL", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            BATTERY_CHARGE_LEVEL = parameter366;
            Parameter parameter367 = new Parameter("TERMINAL_15_VOLT", 366, 327684L, "TERMINAL_15_VOLT", MeasurementUnit.VOLT, fValueOf, Float.valueOf(50.0f));
            TERMINAL_15_VOLT = parameter367;
            Parameter parameter368 = new Parameter("TERMINAL_30A_VOLT", 367, 327685L, "TERMINAL_30A_VOLT", MeasurementUnit.VOLT, fValueOf, Float.valueOf(50.0f));
            TERMINAL_30A_VOLT = parameter368;
            Parameter parameter369 = new Parameter("TERMINAL_30B_VOLT", 368, 327686L, "TERMINAL_30B_VOLT", MeasurementUnit.VOLT, fValueOf, Float.valueOf(50.0f));
            TERMINAL_30B_VOLT = parameter369;
            Parameter parameter370 = new Parameter("DAYS_NEXT_OIL_CHANGE", 369, 458752L, "DAYS_NEXT_OIL_CHANGE", MeasurementUnit.DAY, fValueOf, fValueOf3);
            DAYS_NEXT_OIL_CHANGE = parameter370;
            MeasurementUnit measurementUnit13 = MeasurementUnit.KILOMETER;
            Float fValueOf14 = Float.valueOf(-2.14748365E9f);
            Float fValueOf15 = Float.valueOf(2.14748365E9f);
            Parameter parameter371 = new Parameter("DISTANCE_NEXT_OIL_CHANGE", 370, MockDataID.Parameter.DISTANCE_NEXT_OIL_CHANGE, "DISTANCE_NEXT_OIL_CHANGE", measurementUnit13, fValueOf14, fValueOf15);
            DISTANCE_NEXT_OIL_CHANGE = parameter371;
            Parameter parameter372 = new Parameter("DAYS_LAST_OIL_CHANGE", 371, MockDataID.Parameter.DAYS_LAST_OIL_CHANGE, "DAYS_LAST_OIL_CHANGE", MeasurementUnit.DAY, fValueOf, fValueOf3);
            DAYS_LAST_OIL_CHANGE = parameter372;
            Parameter parameter373 = new Parameter("DISTANCE_LAST_OIL_CHANGE", 372, MockDataID.Parameter.DISTANCE_LAST_OIL_CHANGE, "DISTANCE_LAST_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_LAST_OIL_CHANGE = parameter373;
            Parameter parameter374 = new Parameter("DISTANCE_NEXT_SERVICE", 373, MockDataID.Parameter.DISTANCE_NEXT_SERVICE, "DISTANCE_NEXT_SERVICE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_SERVICE = parameter374;
            Parameter parameter375 = new Parameter("DAYS_NEXT_SERVICE", 374, MockDataID.Parameter.DAYS_NEXT_SERVICE, "DAYS_NEXT_SERVICE", MeasurementUnit.DAY, fValueOf, fValueOf3);
            DAYS_NEXT_SERVICE = parameter375;
            Parameter parameter376 = new Parameter("DISTANCE_LAST_SERVICE", 375, MockDataID.Parameter.DISTANCE_LAST_SERVICE, "DISTANCE_LAST_SERVICE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_LAST_SERVICE = parameter376;
            Parameter parameter377 = new Parameter("DAYS_LAST_SERVICE", 376, MockDataID.Parameter.DAYS_LAST_SERVICE, "DAYS_LAST_SERVICE", MeasurementUnit.DAY, fValueOf, fValueOf3);
            DAYS_LAST_SERVICE = parameter377;
            Parameter parameter378 = new Parameter("DISTANCE_NEXT_FNTPAD_CHANGE", 377, 458772L, "DISTANCE_NEXT_FNTPAD_CHANGE", MeasurementUnit.KILOMETER, Float.valueOf(-250000.0f), Float.valueOf(250000.0f));
            DISTANCE_NEXT_FNTPAD_CHANGE = parameter378;
            Parameter parameter379 = new Parameter("DISTANCE_NEXT_RRPAD_CHANGE", 378, 458773L, "DISTANCE_NEXT_RRPAD_CHANGE", MeasurementUnit.KILOMETER, Float.valueOf(-250000.0f), Float.valueOf(250000.0f));
            DISTANCE_NEXT_RRPAD_CHANGE = parameter379;
            Parameter parameter380 = new Parameter("DISTANCE_NEXT_CHECK", 379, 458774L, "DISTANCE_NEXT_CHECK", MeasurementUnit.KILOMETER, Float.valueOf(-250000.0f), Float.valueOf(250000.0f));
            DISTANCE_NEXT_CHECK = parameter380;
            Parameter parameter381 = new Parameter("DISTANCE_NEXT_SPARKPLUGS_CHANGE", 380, 458779L, "DISTANCE_NEXT_SPARKPLUGS_CHANGE", MeasurementUnit.KILOMETER, Float.valueOf(-250000.0f), Float.valueOf(250000.0f));
            DISTANCE_NEXT_SPARKPLUGS_CHANGE = parameter381;
            Parameter parameter382 = new Parameter("DISTANCE_NEXT_DPF_SERVICE", 381, 458781L, "DISTANCE_NEXT_DPF_SERVICE", MeasurementUnit.KILOMETER, Float.valueOf(-250000.0f), Float.valueOf(250000.0f));
            DISTANCE_NEXT_DPF_SERVICE = parameter382;
            Parameter parameter383 = new Parameter("DISTANCE_NEXT_ACFILTER_CHANGE", 382, 458783L, "DISTANCE_NEXT_ACFILTER_CHANGE", MeasurementUnit.KILOMETER, Float.valueOf(-250000.0f), Float.valueOf(250000.0f));
            DISTANCE_NEXT_ACFILTER_CHANGE = parameter383;
            Parameter parameter384 = new Parameter("DISTANCE_NEXT_ADPF_CHANGE", 383, 458786L, "DISTANCE_NEXT_ADPF_CHANGE", MeasurementUnit.KILOMETER, Float.valueOf(-250000.0f), Float.valueOf(250000.0f));
            DISTANCE_NEXT_ADPF_CHANGE = parameter384;
            Parameter parameter385 = new Parameter("DISTANCE_NEXT_AIR_FILTER_CHANGE", 384, 458795L, "DISTANCE_NEXT_AIR_FILTER_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_AIR_FILTER_CHANGE = parameter385;
            Parameter parameter386 = new Parameter("DISTANCE_NEXT_CLUTCH_CHANGE", 385, 458796L, "DISTANCE_NEXT_CLUTCH_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_CLUTCH_CHANGE = parameter386;
            Parameter parameter387 = new Parameter("DISTANCE_NEXT_COOLANT_CHANGE", 386, 458797L, "DISTANCE_NEXT_COOLANT_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_COOLANT_CHANGE = parameter387;
            Parameter parameter388 = new Parameter("DISTANCE_NEXT_DIFFERENTIAL_OIL_CHANGE", 387, 458798L, "DISTANCE_NEXT_DIFFERENTIAL_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_DIFFERENTIAL_OIL_CHANGE = parameter388;
            Parameter parameter389 = new Parameter("DISTANCE_NEXT_CARTRIDGE_CHANGE", 388, 458799L, "DISTANCE_NEXT_CARTRIDGE_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_CARTRIDGE_CHANGE = parameter389;
            Parameter parameter390 = new Parameter("DISTANCE_NEXT_FRONT_AXLE_STEERING_OIL_CHANGE", 389, 458800L, "DISTANCE_NEXT_FRONT_AXLE_STEERING_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_FRONT_AXLE_STEERING_OIL_CHANGE = parameter390;
            Parameter parameter391 = new Parameter("DISTANCE_NEXT_GEARBOX_OIL_CHANGE", 390, 458801L, "DISTANCE_NEXT_GEARBOX_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_GEARBOX_OIL_CHANGE = parameter391;
            Parameter parameter392 = new Parameter("DISTANCE_AT_NEXT_AIR_FILTER_CHANGE", 391, 458802L, "DISTANCE_AT_NEXT_AIR_FILTER_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_AIR_FILTER_CHANGE = parameter392;
            Parameter parameter393 = new Parameter("DISTANCE_AT_NEXT_CLUTCH_CHANGE", 392, 458803L, "DISTANCE_AT_NEXT_CLUTCH_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_CLUTCH_CHANGE = parameter393;
            Parameter parameter394 = new Parameter("DISTANCE_AT_NEXT_COOLANT_CHANGE", 393, 458804L, "DISTANCE_AT_NEXT_COOLANT_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_COOLANT_CHANGE = parameter394;
            Parameter parameter395 = new Parameter("DISTANCE_AT_NEXT_DIFFERENTIAL_OIL_CHANGE", 394, 458805L, "DISTANCE_AT_NEXT_DIFFERENTIAL_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_DIFFERENTIAL_OIL_CHANGE = parameter395;
            Parameter parameter396 = new Parameter("DISTANCE_AT_NEXT_CARTRIDGE_CHANGE", 395, 458806L, "DISTANCE_AT_NEXT_CARTRIDGE_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_CARTRIDGE_CHANGE = parameter396;
            Parameter parameter397 = new Parameter("DISTANCE_AT_NEXT_FRONT_AXLE_STEERING_OIL_CHANGE", 396, 458807L, "DISTANCE_AT_NEXT_FRONT_AXLE_STEERING_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_FRONT_AXLE_STEERING_OIL_CHANGE = parameter397;
            Parameter parameter398 = new Parameter("DISTANCE_AT_NEXT_GEARBOX_OIL_CHANGE", 397, 458808L, "DISTANCE_AT_NEXT_GEARBOX_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_GEARBOX_OIL_CHANGE = parameter398;
            Parameter parameter399 = new Parameter("DISTANCE_AT_NEXT_OIL_CHANGE", 398, 458809L, "DISTANCE_AT_NEXT_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_OIL_CHANGE = parameter399;
            Parameter parameter400 = new Parameter("DISTANCE_AT_NEXT_SERVICE", 399, 458810L, "DISTANCE_AT_NEXT_SERVICE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_SERVICE = parameter400;
            Parameter parameter401 = new Parameter("USAGE_RATIO_AIR_FILTER", SVG.Style.FONT_WEIGHT_NORMAL, 458811L, "USAGE_RATIO_AIR_FILTER", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_AIR_FILTER = parameter401;
            Parameter parameter402 = new Parameter("USAGE_RATIO_CLUTCH", 401, 458812L, "USAGE_RATIO_CLUTCH", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_CLUTCH = parameter402;
            Parameter parameter403 = new Parameter("USAGE_RATIO_COOLANT", 402, 458813L, "USAGE_RATIO_COOLANT", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_COOLANT = parameter403;
            Parameter parameter404 = new Parameter("USAGE_RATIO_DIFFERENTIAL_OIL", 403, 458814L, "USAGE_RATIO_DIFFERENTIAL_OIL", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_DIFFERENTIAL_OIL = parameter404;
            Parameter parameter405 = new Parameter("USAGE_RATIO_CARTRIDGE", TripStatisticsInfoParserV3.DATA_LENGTH, 458815L, "USAGE_RATIO_CARTRIDGE", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_CARTRIDGE = parameter405;
            Parameter parameter406 = new Parameter("USAGE_RATIO_OIL", 405, 458816L, "USAGE_RATIO_OIL", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_OIL = parameter406;
            Parameter parameter407 = new Parameter("USAGE_RATIO_FRONT_AXLE_STEERING_OIL", 406, 458817L, "USAGE_RATIO_FRONT_AXLE_STEERING_OIL", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_FRONT_AXLE_STEERING_OIL = parameter407;
            Parameter parameter408 = new Parameter("USAGE_RATIO_GEARBOX_OIL", 407, 458818L, "USAGE_RATIO_GEARBOX_OIL", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_GEARBOX_OIL = parameter408;
            Parameter parameter409 = new Parameter("USAGE_RATIO_SERVICE", 408, 458819L, "USAGE_RATIO_SERVICE", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_SERVICE = parameter409;
            Parameter parameter410 = new Parameter("DISTANCE_NEXT_FRONT_AXLE_1_BRAKES_CHANGE", 409, 458821L, "DISTANCE_NEXT_FRONT_AXLE_1_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_FRONT_AXLE_1_BRAKES_CHANGE = parameter410;
            Parameter parameter411 = new Parameter("DISTANCE_AT_NEXT_FRONT_AXLE_1_BRAKES_CHANGE", 410, 458822L, "DISTANCE_AT_NEXT_FRONT_AXLE_1_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_FRONT_AXLE_1_BRAKES_CHANGE = parameter411;
            Parameter parameter412 = new Parameter("USAGE_RATIO_FRONT_AXLE_1_BRAKES", 411, 458823L, "USAGE_RATIO_FRONT_AXLE_1_BRAKES", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_FRONT_AXLE_1_BRAKES = parameter412;
            Parameter parameter413 = new Parameter("DISTANCE_NEXT_FRONT_AXLE_2_BRAKES_CHANGE", 412, 458825L, "DISTANCE_NEXT_FRONT_AXLE_2_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_FRONT_AXLE_2_BRAKES_CHANGE = parameter413;
            Parameter parameter414 = new Parameter("DISTANCE_AT_NEXT_FRONT_AXLE_2_BRAKES_CHANGE", 413, 458826L, "DISTANCE_AT_NEXT_FRONT_AXLE_2_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_FRONT_AXLE_2_BRAKES_CHANGE = parameter414;
            Parameter parameter415 = new Parameter("USAGE_RATIO_FRONT_AXLE_2_BRAKES", 414, 458827L, "USAGE_RATIO_FRONT_AXLE_2_BRAKES", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_FRONT_AXLE_2_BRAKES = parameter415;
            Parameter parameter416 = new Parameter("DISTANCE_NEXT_REAR_AXLE_1_BRAKES_CHANGE", 415, 458829L, "DISTANCE_NEXT_REAR_AXLE_1_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_REAR_AXLE_1_BRAKES_CHANGE = parameter416;
            Parameter parameter417 = new Parameter("DISTANCE_AT_NEXT_REAR_AXLE_1_BRAKES_CHANGE", 416, 458830L, "DISTANCE_AT_NEXT_REAR_AXLE_1_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_REAR_AXLE_1_BRAKES_CHANGE = parameter417;
            Parameter parameter418 = new Parameter("USAGE_RATIO_REAR_AXLE_1_BRAKES", 417, 458831L, "USAGE_RATIO_REAR_AXLE_1_BRAKES", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_REAR_AXLE_1_BRAKES = parameter418;
            Parameter parameter419 = new Parameter("DISTANCE_NEXT_REAR_AXLE_2_BRAKES_CHANGE", 418, 458833L, "DISTANCE_NEXT_REAR_AXLE_2_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_REAR_AXLE_2_BRAKES_CHANGE = parameter419;
            Parameter parameter420 = new Parameter("DISTANCE_AT_NEXT_REAR_AXLE_2_BRAKES_CHANGE", 419, 458834L, "DISTANCE_AT_NEXT_REAR_AXLE_2_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_REAR_AXLE_2_BRAKES_CHANGE = parameter420;
            Parameter parameter421 = new Parameter("USAGE_RATIO_REAR_AXLE_2_BRAKES", 420, 458835L, "USAGE_RATIO_REAR_AXLE_2_BRAKES", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_REAR_AXLE_2_BRAKES = parameter421;
            Parameter parameter422 = new Parameter("DISTANCE_NEXT_DPF_CHANGE", StatusLine.HTTP_MISDIRECTED_REQUEST, 458837L, "DISTANCE_NEXT_DPF_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_DPF_CHANGE = parameter422;
            Parameter parameter423 = new Parameter("DISTANCE_AT_NEXT_DPF_CHANGE", 422, 458838L, "DISTANCE_AT_NEXT_DPF_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_DPF_CHANGE = parameter423;
            Parameter parameter424 = new Parameter("USAGE_RATIO_DPF", 423, 458839L, "USAGE_RATIO_DPF", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_DPF = parameter424;
            Parameter parameter425 = new Parameter("DISTANCE_NEXT_ADD_AXLE_BRAKES_CHANGE", 424, 458841L, "DISTANCE_NEXT_ADD_AXLE_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_ADD_AXLE_BRAKES_CHANGE = parameter425;
            Parameter parameter426 = new Parameter("DISTANCE_AT_NEXT_ADD_AXLE_BRAKES_CHANGE", 425, 458842L, "DISTANCE_AT_NEXT_ADD_AXLE_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_ADD_AXLE_BRAKES_CHANGE = parameter426;
            Parameter parameter427 = new Parameter("USAGE_RATIO_ADD_AXLE_BRAKES", 426, 458843L, "USAGE_RATIO_ADD_AXLE_BRAKES", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_ADD_AXLE_BRAKES = parameter427;
            Parameter parameter428 = new Parameter("DISTANCE_NEXT_BRAKES_CHANGE", 427, 458845L, "DISTANCE_NEXT_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_BRAKES_CHANGE = parameter428;
            Parameter parameter429 = new Parameter("DISTANCE_AT_NEXT_BRAKES_CHANGE", 428, 458846L, "DISTANCE_AT_NEXT_BRAKES_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_BRAKES_CHANGE = parameter429;
            Parameter parameter430 = new Parameter("USAGE_RATIO_BRAKES", 429, 458847L, "USAGE_RATIO_BRAKES", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_BRAKES = parameter430;
            Parameter parameter431 = new Parameter("DISTANCE_NEXT_FIRST_SERVICE", 430, 458849L, "DISTANCE_NEXT_FIRST_SERVICE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_FIRST_SERVICE = parameter431;
            Parameter parameter432 = new Parameter("DISTANCE_AT_NEXT_FIRST_SERVICE", 431, 458850L, "DISTANCE_AT_NEXT_FIRST_SERVICE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_FIRST_SERVICE = parameter432;
            Parameter parameter433 = new Parameter("USAGE_RATIO_FIRST_SERVICE", 432, 458851L, "USAGE_RATIO_FIRST_SERVICE", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_FIRST_SERVICE = parameter433;
            Parameter parameter434 = new Parameter("DISTANCE_NEXT_UNIV_SERVICE", 433, 458853L, "DISTANCE_NEXT_UNIV_SERVICE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_UNIV_SERVICE = parameter434;
            Parameter parameter435 = new Parameter("DISTANCE_AT_NEXT_UNIV_SERVICE", 434, 458854L, "DISTANCE_AT_NEXT_UNIV_SERVICE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_UNIV_SERVICE = parameter435;
            Parameter parameter436 = new Parameter("USAGE_RATIO_UNIV_SERVICE", 435, 458855L, "USAGE_RATIO_UNIV_SERVICE", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_UNIV_SERVICE = parameter436;
            Parameter parameter437 = new Parameter("DISTANCE_NEXT_S6_SERVICE", 436, 458857L, "DISTANCE_NEXT_S6_SERVICE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_S6_SERVICE = parameter437;
            Parameter parameter438 = new Parameter("DISTANCE_AT_NEXT_S6_SERVICE", 437, 458858L, "DISTANCE_AT_NEXT_S6_SERVICE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_S6_SERVICE = parameter438;
            Parameter parameter439 = new Parameter("USAGE_RATIO_S6_SERVICE", 438, 458859L, "USAGE_RATIO_S6_SERVICE", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_S6_SERVICE = parameter439;
            Parameter parameter440 = new Parameter("DISTANCE_NEXT_VALVE_SERVICE", 439, 458861L, "DISTANCE_NEXT_VALVE_SERVICE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_VALVE_SERVICE = parameter440;
            Parameter parameter441 = new Parameter("DISTANCE_AT_NEXT_VALVE_SERVICE", 440, 458862L, "DISTANCE_AT_NEXT_VALVE_SERVICE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_VALVE_SERVICE = parameter441;
            Parameter parameter442 = new Parameter("USAGE_RATIO_VALVE_SERVICE", 441, 458863L, "USAGE_RATIO_VALVE_SERVICE", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_VALVE_SERVICE = parameter442;
            Parameter parameter443 = new Parameter("DISTANCE_NEXT_RETARDER_SERV", 442, 458865L, "DISTANCE_NEXT_RETARDER_SERV", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_RETARDER_SERV = parameter443;
            Parameter parameter444 = new Parameter("DISTANCE_AT_NEXT_RETARDER_SERV", 443, 458866L, "DISTANCE_AT_NEXT_RETARDER_SERV", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_RETARDER_SERV = parameter444;
            Parameter parameter445 = new Parameter("USAGE_RATIO_RETARDER", 444, 458867L, "USAGE_RATIO_RETARDER", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_RETARDER = parameter445;
            Parameter parameter446 = new Parameter("DISTANCE_NEXT_TRANS_CASE_OIL_CHANGE", 445, 458869L, "DISTANCE_NEXT_TRANS_CASE_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_TRANS_CASE_OIL_CHANGE = parameter446;
            Parameter parameter447 = new Parameter("DISTANCE_AT_NEXT_TRANS_CASE_OIL_CHANGE", 446, 458870L, "DISTANCE_AT_NEXT_TRANS_CASE_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_TRANS_CASE_OIL_CHANGE = parameter447;
            Parameter parameter448 = new Parameter("USAGE_RATIO_TRANS_CASE_OIL", 447, 458871L, "USAGE_RATIO_TRANS_CASE_OIL", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_TRANS_CASE_OIL = parameter448;
            Parameter parameter449 = new Parameter("DISTANCE_NEXT_DIFFERENTIAL_FRONT_OIL_CHANGE", 448, 458873L, "DISTANCE_NEXT_DIFFERENTIAL_FRONT_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_DIFFERENTIAL_FRONT_OIL_CHANGE = parameter449;
            Parameter parameter450 = new Parameter("DISTANCE_AT_NEXT_DIFFERENTIAL_FRONT_OIL_CHANGE", 449, 458874L, "DISTANCE_AT_NEXT_DIFFERENTIAL_FRONT_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_DIFFERENTIAL_FRONT_OIL_CHANGE = parameter450;
            Parameter parameter451 = new Parameter("USAGE_RATIO_DIFFERENTIAL_FRONT_OIL", 450, 458875L, "USAGE_RATIO_DIFFERENTIAL_FRONT_OIL", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_DIFFERENTIAL_FRONT_OIL = parameter451;
            Parameter parameter452 = new Parameter("DISTANCE_NEXT_DIFFERENTIAL_2_OIL_CHANGE", 451, 458877L, "DISTANCE_NEXT_DIFFERENTIAL_2_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_DIFFERENTIAL_2_OIL_CHANGE = parameter452;
            Parameter parameter453 = new Parameter("DISTANCE_AT_NEXT_DIFFERENTIAL_2_OIL_CHANGE", 452, 458878L, "DISTANCE_AT_NEXT_DIFFERENTIAL_2_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_DIFFERENTIAL_2_OIL_CHANGE = parameter453;
            Parameter parameter454 = new Parameter("USAGE_RATIO_DIFFERENTIAL_2_OIL", 453, 458879L, "USAGE_RATIO_DIFFERENTIAL_2_OIL", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_DIFFERENTIAL_2_OIL = parameter454;
            Parameter parameter455 = new Parameter("DISTANCE_NEXT_FRONT_AXLE_SERVICE", 454, 458881L, "DISTANCE_NEXT_FRONT_AXLE_SERVICE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_FRONT_AXLE_SERVICE = parameter455;
            Parameter parameter456 = new Parameter("DISTANCE_AT_NEXT_FRONT_AXLE_SERVICE", 455, 458882L, "DISTANCE_AT_NEXT_FRONT_AXLE_SERVICE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_FRONT_AXLE_SERVICE = parameter456;
            Parameter parameter457 = new Parameter("USAGE_RATIO_FRONT_AXLE_SERVICE", 456, 458883L, "USAGE_RATIO_FRONT_AXLE_SERVICE", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_FRONT_AXLE_SERVICE = parameter457;
            Parameter parameter458 = new Parameter("DISTANCE_NEXT_REAR_AXLE_STEERING_OIL_CHANGE", 457, 458885L, "DISTANCE_NEXT_REAR_AXLE_STEERING_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_REAR_AXLE_STEERING_OIL_CHANGE = parameter458;
            Parameter parameter459 = new Parameter("DISTANCE_AT_NEXT_REAR_AXLE_STEERING_OIL_CHANGE", 458, 458886L, "DISTANCE_AT_NEXT_REAR_AXLE_STEERING_OIL_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_REAR_AXLE_STEERING_OIL_CHANGE = parameter459;
            Parameter parameter460 = new Parameter("USAGE_RATIO_REAR_AXLE_STEERING_OIL", 459, 458887L, "USAGE_RATIO_REAR_AXLE_STEERING_OIL", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_REAR_AXLE_STEERING_OIL = parameter460;
            Parameter parameter461 = new Parameter("DISTANCE_NEXT_ADD_TRACTION_CHANGE", 460, 458889L, "DISTANCE_NEXT_ADD_TRACTION_CHANGE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_ADD_TRACTION_CHANGE = parameter461;
            Parameter parameter462 = new Parameter("DISTANCE_AT_NEXT_ADD_TRACTION_CHANGE", 461, 458890L, "DISTANCE_AT_NEXT_ADD_TRACTION_CHANGE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_ADD_TRACTION_CHANGE = parameter462;
            Parameter parameter463 = new Parameter("USAGE_RATIO_ADD_TRACTION", 462, 458891L, "USAGE_RATIO_ADD_TRACTION", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_ADD_TRACTION = parameter463;
            Parameter parameter464 = new Parameter("DISTANCE_NEXT_PTO1_SERVICE", 463, 458893L, "DISTANCE_NEXT_PTO1_SERVICE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_PTO1_SERVICE = parameter464;
            Parameter parameter465 = new Parameter("DISTANCE_AT_NEXT_PTO1_SERVICE", 464, 458894L, "DISTANCE_AT_NEXT_PTO1_SERVICE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_PTO1_SERVICE = parameter465;
            Parameter parameter466 = new Parameter("USAGE_RATIO_PTO1", 465, 458895L, "USAGE_RATIO_PTO1", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_PTO1 = parameter466;
            Parameter parameter467 = new Parameter("DISTANCE_NEXT_PTO2_SERVICE", 466, 458897L, "DISTANCE_NEXT_PTO2_SERVICE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_PTO2_SERVICE = parameter467;
            Parameter parameter468 = new Parameter("DISTANCE_AT_NEXT_PTO2_SERVICE", 467, 458898L, "DISTANCE_AT_NEXT_PTO2_SERVICE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_PTO2_SERVICE = parameter468;
            Parameter parameter469 = new Parameter("USAGE_RATIO_PTO2", 468, 458899L, "USAGE_RATIO_PTO2", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_PTO2 = parameter469;
            Parameter parameter470 = new Parameter("DISTANCE_NEXT_PTO3_SERVICE", 469, 458901L, "DISTANCE_NEXT_PTO3_SERVICE", MeasurementUnit.KILOMETER, fValueOf14, fValueOf15);
            DISTANCE_NEXT_PTO3_SERVICE = parameter470;
            Parameter parameter471 = new Parameter("DISTANCE_AT_NEXT_PTO3_SERVICE", 470, 458902L, "DISTANCE_AT_NEXT_PTO3_SERVICE", MeasurementUnit.KILOMETER, fValueOf, fValueOf3);
            DISTANCE_AT_NEXT_PTO3_SERVICE = parameter471;
            Parameter parameter472 = new Parameter("USAGE_RATIO_PTO3", 471, 458903L, "USAGE_RATIO_PTO3", MeasurementUnit.PERCENTAGE, fValueOf6, fValueOf7);
            USAGE_RATIO_PTO3 = parameter472;
            Parameter parameter473 = new Parameter("TRANS_OIL_TEMP", 472, 655360L, "TRANS_OIL_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf11, Float.valueOf(300.0f));
            TRANS_OIL_TEMP = parameter473;
            Parameter parameter474 = new Parameter("POS_CLUTCH_PEDAL_ABS", 473, 655363L, "POS_CLUTCH_PEDAL_ABS", MeasurementUnit.MILLIMETER, fValueOf, fValueOf4);
            POS_CLUTCH_PEDAL_ABS = parameter474;
            Parameter parameter475 = new Parameter("POS_CLUTCH_PEDAL_REL", 474, 655364L, "POS_CLUTCH_PEDAL_REL", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            POS_CLUTCH_PEDAL_REL = parameter475;
            Parameter parameter476 = new Parameter("CLUTCH_ENGAGE_POINT_MM", 475, 655365L, "CLUTCH_ENGAGE_POINT_MM", MeasurementUnit.MILLIMETER, fValueOf, fValueOf4);
            CLUTCH_ENGAGE_POINT_MM = parameter476;
            Parameter parameter477 = new Parameter("TRANS_INPUT_SPEED", 476, 655366L, "TRANS_INPUT_SPEED", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, Float.valueOf(4000.0f));
            TRANS_INPUT_SPEED = parameter477;
            Parameter parameter478 = new Parameter("TRANS_OUTPUT_SPEED", 477, 655367L, "TRANS_OUTPUT_SPEED", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, Float.valueOf(5000.0f));
            TRANS_OUTPUT_SPEED = parameter478;
            Parameter parameter479 = new Parameter("AIR_PRESSURE_SUPPLY", 478, 655369L, "AIR_PRESSURE_SUPPLY", MeasurementUnit.KILOPASCAL, fValueOf, Float.valueOf(20000.0f));
            AIR_PRESSURE_SUPPLY = parameter479;
            Parameter parameter480 = new Parameter("TRANS_OUTPUT_ACCEL", 479, 655380L, "TRANS_OUTPUT_ACCEL", MeasurementUnit.REVOLUTION_PER_MINUTE_PER_SECOND, Float.valueOf(-1000.0f), fValueOf7);
            TRANS_OUTPUT_ACCEL = parameter480;
            Parameter parameter481 = new Parameter("RET_REQUEST", 480, 655381L, "RET_REQUEST", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            RET_REQUEST = parameter481;
            Parameter parameter482 = new Parameter("RET_COOLANT_TEMP", 481, 655382L, "RET_COOLANT_TEMP", MeasurementUnit.CELSIUS_DEGREE, Float.valueOf(-20.0f), Float.valueOf(150.0f));
            RET_COOLANT_TEMP = parameter482;
            Parameter parameter483 = new Parameter("CONV_CLUTCH_PRESS", 482, 655383L, "CONV_CLUTCH_PRESS", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            CONV_CLUTCH_PRESS = parameter483;
            Parameter parameter484 = new Parameter("ALL_PCS_VALVE_1", 483, 655384L, "ALL_PCS_VALVE_1", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            ALL_PCS_VALVE_1 = parameter484;
            Parameter parameter485 = new Parameter("ALL_PCS_VALVE_2", 484, 655385L, "ALL_PCS_VALVE_2", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            ALL_PCS_VALVE_2 = parameter485;
            Parameter parameter486 = new Parameter("ALL_PCS_VALVE_3", 485, 655386L, "ALL_PCS_VALVE_3", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            ALL_PCS_VALVE_3 = parameter486;
            Parameter parameter487 = new Parameter("ALL_PCS_VALVE_4", 486, 655387L, "ALL_PCS_VALVE_4", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            ALL_PCS_VALVE_4 = parameter487;
            Parameter parameter488 = new Parameter("ALL_PCS_VALVE_5", 487, 655388L, "ALL_PCS_VALVE_5", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            ALL_PCS_VALVE_5 = parameter488;
            Parameter parameter489 = new Parameter("ALL_PCS_VALVE_6", 488, 655389L, "ALL_PCS_VALVE_6", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            ALL_PCS_VALVE_6 = parameter489;
            Parameter parameter490 = new Parameter("CLUTCH_PRESS_ENG", 489, 655390L, "CLUTCH_PRESS_ENG", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            CLUTCH_PRESS_ENG = parameter490;
            Parameter parameter491 = new Parameter("CLUTCH_PRESS_DISENG", 490, 655391L, "CLUTCH_PRESS_DISENG", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            CLUTCH_PRESS_DISENG = parameter491;
            Parameter parameter492 = new Parameter("CLUTCH_ENGAGE_POINT_PERC", 491, 655392L, "CLUTCH_ENGAGE_POINT_PERC", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            CLUTCH_ENGAGE_POINT_PERC = parameter492;
            Parameter parameter493 = new Parameter("GEAR_SELECTOR_POS", 492, 655393L, "GEAR_SELECTOR_POS", MeasurementUnit.MILLIMETER, Float.valueOf(-255.0f), fValueOf4);
            GEAR_SELECTOR_POS = parameter493;
            Parameter parameter494 = new Parameter("GEAR_ENGAGE_POS", 493, 655394L, "GEAR_ENGAGE_POS", MeasurementUnit.MILLIMETER, Float.valueOf(-255.0f), fValueOf4);
            GEAR_ENGAGE_POS = parameter494;
            Parameter parameter495 = new Parameter("EPICYCLOIDAL_UNIT_POS", 494, 655395L, "EPICYCLOIDAL_UNIT_POS", MeasurementUnit.MILLIMETER, Float.valueOf(-255.0f), fValueOf4);
            EPICYCLOIDAL_UNIT_POS = parameter495;
            Parameter parameter496 = new Parameter("SPLITTER_VALVE_POS", 495, 655396L, "SPLITTER_VALVE_POS", MeasurementUnit.MILLIMETER, Float.valueOf(-255.0f), fValueOf4);
            SPLITTER_VALVE_POS = parameter496;
            Parameter parameter497 = new Parameter("POS_CLUTCH_PEDAL_REL_REQ", 496, 655402L, "POS_CLUTCH_PEDAL_REL_REQ", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            POS_CLUTCH_PEDAL_REL_REQ = parameter497;
            Parameter parameter498 = new Parameter("INERTIA_BRAKE_DEC", 497, 655403L, "INERTIA_BRAKE_DEC", MeasurementUnit.REVOLUTION_PER_MINUTE_PER_SECOND, Float.valueOf(-255.0f), fValueOf4);
            INERTIA_BRAKE_DEC = parameter498;
            Parameter parameter499 = new Parameter("SLANT_SENSOR", 498, 655404L, "SLANT_SENSOR", MeasurementUnit.PERCENTAGE, fValueOf11, fValueOf2);
            SLANT_SENSOR = parameter499;
            Parameter parameter500 = new Parameter("EPICYCLOIDAL_UNIT_POS_PC", 499, 655405L, "EPICYCLOIDAL_UNIT_POS_PC", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            EPICYCLOIDAL_UNIT_POS_PC = parameter500;
            Parameter parameter501 = new Parameter("GEAR_ENGAGE_POS_PC", 500, 655406L, "GEAR_ENGAGE_POS_PC", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            GEAR_ENGAGE_POS_PC = parameter501;
            Parameter parameter502 = new Parameter("GEAR_SELECTOR_POS_PC", 501, 655407L, "GEAR_SELECTOR_POS_PC", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            GEAR_SELECTOR_POS_PC = parameter502;
            Parameter parameter503 = new Parameter("SPLITTER_VALVE_POS_PC", 502, 655408L, "SPLITTER_VALVE_POS_PC", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            SPLITTER_VALVE_POS_PC = parameter503;
            Parameter parameter504 = new Parameter("SHIFT_ACTUATOR", 503, 655415L, "SHIFT_ACTUATOR", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf8);
            SHIFT_ACTUATOR = parameter504;
            Parameter parameter505 = new Parameter("PRIMARY_SHAFT_SPEED", 504, 655417L, "PRIMARY_SHAFT_SPEED", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, Float.valueOf(5000.0f));
            PRIMARY_SHAFT_SPEED = parameter505;
            Parameter parameter506 = new Parameter("SECONDARY_SHAFT_SPEED", 505, 655418L, "SECONDARY_SHAFT_SPEED", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, Float.valueOf(5000.0f));
            SECONDARY_SHAFT_SPEED = parameter506;
            Parameter parameter507 = new Parameter("RET_OIL_TEMP", 506, 655424L, "RET_OIL_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf11, Float.valueOf(300.0f));
            RET_OIL_TEMP = parameter507;
            Parameter parameter508 = new Parameter("OIL_PRESSURE_SUPPLY", 507, 655447L, "OIL_PRESSURE_SUPPLY", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf5);
            OIL_PRESSURE_SUPPLY = parameter508;
            Parameter parameter509 = new Parameter("OIL_PRESSURE_CLUTCH_A", 508, 655448L, "OIL_PRESSURE_CLUTCH_A", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf5);
            OIL_PRESSURE_CLUTCH_A = parameter509;
            Parameter parameter510 = new Parameter("OIL_PRESSURE_CLUTCH_B", 509, 655449L, "OIL_PRESSURE_CLUTCH_B", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf5);
            OIL_PRESSURE_CLUTCH_B = parameter510;
            Parameter parameter511 = new Parameter("OIL_PRESSURE_BRAKE_D", 510, 655450L, "OIL_PRESSURE_BRAKE_D", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf5);
            OIL_PRESSURE_BRAKE_D = parameter511;
            Parameter parameter512 = new Parameter("OIL_PRESSURE_BRAKE_E", FrameMetricsAggregator.EVERY_DURATION, 655451L, "OIL_PRESSURE_BRAKE_E", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf5);
            OIL_PRESSURE_BRAKE_E = parameter512;
            Parameter parameter513 = new Parameter("OIL_PRESSURE_BRAKE_F", 512, 655452L, "OIL_PRESSURE_BRAKE_F", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf5);
            OIL_PRESSURE_BRAKE_F = parameter513;
            Parameter parameter514 = new Parameter("OIL_PRESSURE_CLUTCH_WK", InputDeviceCompat.SOURCE_DPAD, 655453L, "OIL_PRESSURE_CLUTCH_WK", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf5);
            OIL_PRESSURE_CLUTCH_WK = parameter514;
            Parameter parameter515 = new Parameter("ABSORB_OIL_PRESSURE_VALVE", 514, 655454L, "ABSORB_OIL_PRESSURE_VALVE", MeasurementUnit.AMPERE, fValueOf, Float.valueOf(25.5f));
            ABSORB_OIL_PRESSURE_VALVE = parameter515;
            Parameter parameter516 = new Parameter("ABSORB_RETARDER_VALVE", 515, 655455L, "ABSORB_RETARDER_VALVE", MeasurementUnit.AMPERE, fValueOf, Float.valueOf(25.5f));
            ABSORB_RETARDER_VALVE = parameter516;
            Parameter parameter517 = new Parameter("TRANSM_TURBINE_SPEED", 516, 655456L, "TRANSM_TURBINE_SPEED", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, fValueOf12);
            TRANSM_TURBINE_SPEED = parameter517;
            Parameter parameter518 = new Parameter("RETARDER_TORQUE_REQ", 517, 655457L, "RETARDER_TORQUE_REQ", MeasurementUnit.NEWTON_PER_METER, fValueOf10, fValueOf5);
            RETARDER_TORQUE_REQ = parameter518;
            Parameter parameter519 = new Parameter("RETARDER_TORQUE_ACT", 518, 655458L, "RETARDER_TORQUE_ACT", MeasurementUnit.NEWTON_PER_METER, fValueOf10, fValueOf5);
            RETARDER_TORQUE_ACT = parameter519;
            Parameter parameter520 = new Parameter("POS_CLUTCH_DEGREE_ACT", 519, 655459L, "POS_CLUTCH_DEGREE_ACT", MeasurementUnit.DEGREE, fValueOf10, fValueOf5);
            POS_CLUTCH_DEGREE_ACT = parameter520;
            Parameter parameter521 = new Parameter("POS_CLUTCH_DEGREE_REQ", 520, 655460L, "POS_CLUTCH_DEGREE_REQ", MeasurementUnit.DEGREE, fValueOf10, fValueOf5);
            POS_CLUTCH_DEGREE_REQ = parameter521;
            Parameter parameter522 = new Parameter("CONV_TEMP", 521, 655461L, "CONV_TEMP", MeasurementUnit.CELSIUS_DEGREE, fValueOf11, Float.valueOf(300.0f));
            CONV_TEMP = parameter522;
            Parameter parameter523 = new Parameter("CONV_TURBINE_RPM", 522, 655462L, "CONV_TURBINE_RPM", MeasurementUnit.REVOLUTION_PER_MINUTE, fValueOf, fValueOf12);
            CONV_TURBINE_RPM = parameter523;
            Parameter parameter524 = new Parameter("TRANSM_OIL_LEV", 523, 655463L, "TRANSM_OIL_LEV", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            TRANSM_OIL_LEV = parameter524;
            Parameter parameter525 = new Parameter("YAW_RATE", 524, 786432L, "YAW_RATE", MeasurementUnit.DEGREE_PER_SECOND, fValueOf10, fValueOf5);
            YAW_RATE = parameter525;
            Parameter parameter526 = new Parameter("ROLL_RATE", 525, 786433L, "ROLL_RATE", MeasurementUnit.DEGREE_PER_SECOND, fValueOf10, fValueOf5);
            ROLL_RATE = parameter526;
            Parameter parameter527 = new Parameter("ACCEL_Y_AXIS", 526, 786434L, "ACCEL_Y_AXIS", MeasurementUnit.GRAVITY_ACCELERATION, fValueOf10, fValueOf5);
            ACCEL_Y_AXIS = parameter527;
            Parameter parameter528 = new Parameter("ACCEL_X_AXIS", 527, 786435L, "ACCEL_X_AXIS", MeasurementUnit.GRAVITY_ACCELERATION, fValueOf10, fValueOf5);
            ACCEL_X_AXIS = parameter528;
            Parameter parameter529 = new Parameter("ACCEL_Z_AXIS", 528, 786436L, "ACCEL_Z_AXIS", MeasurementUnit.GRAVITY_ACCELERATION, fValueOf10, fValueOf5);
            ACCEL_Z_AXIS = parameter529;
            Parameter parameter530 = new Parameter("PITCH_RATE", 529, 786437L, "PITCH_RATE", MeasurementUnit.DEGREE_PER_SECOND, fValueOf10, fValueOf5);
            PITCH_RATE = parameter530;
            Parameter parameter531 = new Parameter("LEAN_ANGLE", 530, 786438L, "LEAN_ANGLE", MeasurementUnit.DEGREE, fValueOf10, fValueOf5);
            LEAN_ANGLE = parameter531;
            Parameter parameter532 = new Parameter("PITCH_ANGLE", 531, 786439L, "PITCH_ANGLE", MeasurementUnit.DEGREE, fValueOf10, fValueOf5);
            PITCH_ANGLE = parameter532;
            Parameter parameter533 = new Parameter("ACCELERATION", 532, 786440L, "ACCELERATION", MeasurementUnit.METER_PER_SQUARE_SECOND, Float.valueOf(-2.0f), Float.valueOf(2.0f));
            ACCELERATION = parameter533;
            Parameter parameter534 = new Parameter("LATERAL_ACCEL", 533, 786441L, "LATERAL_ACCEL", MeasurementUnit.METER_PER_SQUARE_SECOND, fValueOf10, fValueOf5);
            LATERAL_ACCEL = parameter534;
            Parameter parameter535 = new Parameter("YAW_SPEED", 534, 786442L, "YAW_SPEED", MeasurementUnit.KILOMETER_PER_HOUR, fValueOf10, fValueOf5);
            YAW_SPEED = parameter535;
            Parameter parameter536 = new Parameter("GPS_LATITUDE", 535, 786443L, "GPS_LATITUDE", MeasurementUnit.DEGREE, Float.valueOf(-90.0f), Float.valueOf(90.0f));
            GPS_LATITUDE = parameter536;
            Parameter parameter537 = new Parameter("GPS_LONGITUDE", 536, 786444L, "GPS_LONGITUDE", MeasurementUnit.DEGREE, Float.valueOf(-180.0f), Float.valueOf(180.0f));
            GPS_LONGITUDE = parameter537;
            Parameter parameter538 = new Parameter("GPS_ALTITUDE", 537, 786445L, "GPS_ALTITUDE", MeasurementUnit.METER, Float.valueOf(-2500.0f), Float.valueOf(5600.0f));
            GPS_ALTITUDE = parameter538;
            Parameter parameter539 = new Parameter("GPS_DIRECTION", 538, 786446L, "GPS_DIRECTION", MeasurementUnit.DEGREE, fValueOf, Float.valueOf(360.0f));
            GPS_DIRECTION = parameter539;
            Parameter parameter540 = new Parameter("DRIVER_ACT_DRIVING_1", 539, 917512L, "DRIVER_ACT_DRIVING_1", MeasurementUnit.SECOND, fValueOf, Float.valueOf(3855300.0f));
            DRIVER_ACT_DRIVING_1 = parameter540;
            Parameter parameter541 = new Parameter("DRIVER_ACT_DRIVING_2", 540, 917513L, "DRIVER_ACT_DRIVING_2", MeasurementUnit.SECOND, fValueOf, Float.valueOf(3855300.0f));
            DRIVER_ACT_DRIVING_2 = parameter541;
            Parameter parameter542 = new Parameter("DRIVER_2WEEK_DRIVING_1", 541, 917514L, "DRIVER_2WEEK_DRIVING_1", MeasurementUnit.SECOND, fValueOf, Float.valueOf(3855300.0f));
            DRIVER_2WEEK_DRIVING_1 = parameter542;
            Parameter parameter543 = new Parameter("DRIVER_2WEEK_DRIVING_2", 542, 917515L, "DRIVER_2WEEK_DRIVING_2", MeasurementUnit.SECOND, fValueOf, Float.valueOf(3855300.0f));
            DRIVER_2WEEK_DRIVING_2 = parameter543;
            Parameter parameter544 = new Parameter("DRIVER_ACT_BREAK_1", 543, 917516L, "DRIVER_ACT_BREAK_1", MeasurementUnit.SECOND, fValueOf, Float.valueOf(3855300.0f));
            DRIVER_ACT_BREAK_1 = parameter544;
            Parameter parameter545 = new Parameter("DRIVER_ACT_BREAK_2", 544, 917517L, "DRIVER_ACT_BREAK_2", MeasurementUnit.SECOND, fValueOf, Float.valueOf(3855300.0f));
            DRIVER_ACT_BREAK_2 = parameter545;
            Parameter parameter546 = new Parameter("DRIVER_ACT_ACTIVITY_1", 545, 917518L, "DRIVER_ACT_ACTIVITY_1", MeasurementUnit.SECOND, fValueOf, Float.valueOf(3855300.0f));
            DRIVER_ACT_ACTIVITY_1 = parameter546;
            Parameter parameter547 = new Parameter("DRIVER_ACT_ACTIVITY_2", 546, 917519L, "DRIVER_ACT_ACTIVITY_2", MeasurementUnit.SECOND, fValueOf, Float.valueOf(3855300.0f));
            DRIVER_ACT_ACTIVITY_2 = parameter547;
            Parameter parameter548 = new Parameter("DRIVER_1_CDDT", 547, 917524L, "DRIVER_1_CDDT", MeasurementUnit.SECOND, fValueOf, Float.valueOf(3855300.0f));
            DRIVER_1_CDDT = parameter548;
            Parameter parameter549 = new Parameter("DRIVER_1_NOT9HDDTE", 548, 917525L, "DRIVER_1_NOT9HDDTE", null, fValueOf, Float.valueOf(2.0f));
            DRIVER_1_NOT9HDDTE = parameter549;
            Parameter parameter550 = new Parameter("DRIVER_1_NOURDRP", 549, 917526L, "DRIVER_1_NOURDRP", null, fValueOf, Float.valueOf(3.0f));
            DRIVER_1_NOURDRP = parameter550;
            Parameter parameter551 = new Parameter("TRAILER_BRAKE_PRESSURE", 550, 983040L, "TRAILER_BRAKE_PRESSURE", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            TRAILER_BRAKE_PRESSURE = parameter551;
            Parameter parameter552 = new Parameter("TRAILER_BRAKE_PRESS_REQ", 551, 983041L, "TRAILER_BRAKE_PRESS_REQ", MeasurementUnit.KILOPASCAL, fValueOf, fValueOf7);
            TRAILER_BRAKE_PRESS_REQ = parameter552;
            Parameter parameter553 = new Parameter("HIGH_VOLTAGE_BATTERY_VOLTAGE", 552, 1114222L, "HIGH_VOLTAGE_BATTERY_VOLTAGE", MeasurementUnit.VOLT, fValueOf, Float.valueOf(6554.0f));
            HIGH_VOLTAGE_BATTERY_VOLTAGE = parameter553;
            Parameter parameter554 = new Parameter("HIGH_VOLTAGE_BATTERY_STATE_OF_CHARGE", 553, 1114401L, "HIGH_VOLTAGE_BATTERY_STATE_OF_CHARGE", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            HIGH_VOLTAGE_BATTERY_STATE_OF_CHARGE = parameter554;
            Parameter parameter555 = new Parameter("HIGH_VOLTAGE_BATTERY_STATE_OF_HEALTH", 554, 1114402L, "HIGH_VOLTAGE_BATTERY_STATE_OF_HEALTH", MeasurementUnit.PERCENTAGE, fValueOf, fValueOf2);
            HIGH_VOLTAGE_BATTERY_STATE_OF_HEALTH = parameter555;
            $VALUES = new Parameter[]{parameter, parameter2, parameter3, parameter4, parameter5, parameter6, parameter7, parameter8, parameter9, parameter10, parameter11, parameter12, parameter13, parameter14, parameter15, parameter16, parameter17, parameter18, parameter19, parameter20, parameter21, parameter22, parameter23, parameter24, parameter25, parameter26, parameter27, parameter28, parameter29, parameter30, parameter31, parameter32, parameter33, parameter34, parameter35, parameter36, parameter37, parameter38, parameter39, parameter40, parameter41, parameter42, parameter43, parameter44, parameter45, parameter46, parameter47, parameter48, parameter49, parameter50, parameter51, parameter52, parameter53, parameter54, parameter55, parameter56, parameter57, parameter58, parameter59, parameter60, parameter61, parameter62, parameter63, parameter64, parameter65, parameter66, parameter67, parameter68, parameter69, parameter70, parameter71, parameter72, parameter73, parameter74, parameter75, parameter76, parameter77, parameter78, parameter79, parameter80, parameter81, parameter82, parameter83, parameter84, parameter85, parameter86, parameter87, parameter88, parameter89, parameter90, parameter91, parameter92, parameter93, parameter94, parameter95, parameter96, parameter97, parameter98, parameter99, parameter100, parameter101, parameter102, parameter103, parameter104, parameter105, parameter106, parameter107, parameter108, parameter109, parameter110, parameter111, parameter112, parameter113, parameter114, parameter115, parameter116, parameter117, parameter118, parameter119, parameter120, parameter121, parameter122, parameter123, parameter124, parameter125, parameter126, parameter127, parameter128, parameter129, parameter130, parameter131, parameter132, parameter133, parameter134, parameter135, parameter136, parameter137, parameter138, parameter139, parameter140, parameter141, parameter142, parameter143, parameter144, parameter145, parameter146, parameter147, parameter148, parameter149, parameter150, parameter151, parameter152, parameter153, parameter154, parameter155, parameter156, parameter157, parameter158, parameter159, parameter160, parameter161, parameter162, parameter163, parameter164, parameter165, parameter166, parameter167, parameter168, parameter169, parameter170, parameter171, parameter172, parameter173, parameter174, parameter175, parameter176, parameter177, parameter178, parameter179, parameter180, parameter181, parameter182, parameter183, parameter184, parameter185, parameter186, parameter187, parameter188, parameter189, parameter190, parameter191, parameter192, parameter193, parameter194, parameter195, parameter196, parameter197, parameter198, parameter199, parameter200, parameter201, parameter202, parameter203, parameter204, parameter205, parameter206, parameter207, parameter208, parameter209, parameter210, parameter211, parameter212, parameter213, parameter214, parameter215, parameter216, parameter217, parameter218, parameter219, parameter220, parameter221, parameter222, parameter223, parameter224, parameter225, parameter226, parameter227, parameter228, parameter229, parameter230, parameter231, parameter232, parameter233, parameter234, parameter235, parameter236, parameter237, parameter238, parameter239, parameter240, parameter241, parameter242, parameter243, parameter244, parameter245, parameter246, parameter247, parameter248, parameter249, parameter250, parameter251, parameter252, parameter253, parameter254, parameter255, parameter256, parameter257, parameter258, parameter259, parameter260, parameter261, parameter262, parameter263, parameter264, parameter265, parameter266, parameter267, parameter268, parameter269, parameter270, parameter271, parameter272, parameter273, parameter274, parameter275, parameter276, parameter277, parameter278, parameter279, parameter280, parameter281, parameter282, parameter283, parameter284, parameter285, parameter286, parameter287, parameter288, parameter289, parameter290, parameter291, parameter292, parameter293, parameter294, parameter295, parameter296, parameter297, parameter298, parameter299, parameter300, parameter301, parameter302, parameter303, parameter304, parameter305, parameter306, parameter307, parameter308, parameter309, parameter310, parameter311, parameter312, parameter313, parameter314, parameter315, parameter316, parameter317, parameter318, parameter319, parameter320, parameter321, parameter322, parameter323, parameter324, parameter325, parameter326, parameter327, parameter328, parameter329, parameter330, parameter331, parameter332, parameter333, parameter334, parameter335, parameter336, parameter337, parameter338, parameter339, parameter340, parameter341, parameter342, parameter343, parameter344, parameter345, parameter346, parameter347, parameter348, parameter349, parameter350, parameter351, parameter352, parameter353, parameter354, parameter355, parameter356, parameter357, parameter358, parameter359, parameter360, parameter361, parameter362, parameter363, parameter364, parameter365, parameter366, parameter367, parameter368, parameter369, parameter370, parameter371, parameter372, parameter373, parameter374, parameter375, parameter376, parameter377, parameter378, parameter379, parameter380, parameter381, parameter382, parameter383, parameter384, parameter385, parameter386, parameter387, parameter388, parameter389, parameter390, parameter391, parameter392, parameter393, parameter394, parameter395, parameter396, parameter397, parameter398, parameter399, parameter400, parameter401, parameter402, parameter403, parameter404, parameter405, parameter406, parameter407, parameter408, parameter409, parameter410, parameter411, parameter412, parameter413, parameter414, parameter415, parameter416, parameter417, parameter418, parameter419, parameter420, parameter421, parameter422, parameter423, parameter424, parameter425, parameter426, parameter427, parameter428, parameter429, parameter430, parameter431, parameter432, parameter433, parameter434, parameter435, parameter436, parameter437, parameter438, parameter439, parameter440, parameter441, parameter442, parameter443, parameter444, parameter445, parameter446, parameter447, parameter448, parameter449, parameter450, parameter451, parameter452, parameter453, parameter454, parameter455, parameter456, parameter457, parameter458, parameter459, parameter460, parameter461, parameter462, parameter463, parameter464, parameter465, parameter466, parameter467, parameter468, parameter469, parameter470, parameter471, parameter472, parameter473, parameter474, parameter475, parameter476, parameter477, parameter478, parameter479, parameter480, parameter481, parameter482, parameter483, parameter484, parameter485, parameter486, parameter487, parameter488, parameter489, parameter490, parameter491, parameter492, parameter493, parameter494, parameter495, parameter496, parameter497, parameter498, parameter499, parameter500, parameter501, parameter502, parameter503, parameter504, parameter505, parameter506, parameter507, parameter508, parameter509, parameter510, parameter511, parameter512, parameter513, parameter514, parameter515, parameter516, parameter517, parameter518, parameter519, parameter520, parameter521, parameter522, parameter523, parameter524, parameter525, parameter526, parameter527, parameter528, parameter529, parameter530, parameter531, parameter532, parameter533, parameter534, parameter535, parameter536, parameter537, parameter538, parameter539, parameter540, parameter541, parameter542, parameter543, parameter544, parameter545, parameter546, parameter547, parameter548, parameter549, parameter550, parameter551, parameter552, parameter553, parameter554, parameter555};
            dataIDMap = new LongSparseArray<>();
            for (Parameter parameter556 : values()) {
                dataIDMap.put(parameter556.getId(), parameter556);
            }
        }

        private Parameter(String str, int i, long j, String str2, MeasurementUnit measurementUnit, Float f, Float f2) {
            this.mId = j;
            this.mName = str2;
            this.mMeasurementUnit = measurementUnit;
            this.mRangeMin = f;
            this.mRangeMax = f2;
        }

        public long getId() {
            return this.mId;
        }

        public String getName() {
            return this.mName;
        }

        public MeasurementUnit getMeasurementUnit() {
            return this.mMeasurementUnit;
        }

        public Float getRangeMin() {
            return this.mRangeMin;
        }

        public Float getRangeMax() {
            return this.mRangeMax;
        }

        public static Parameter findById(long j) {
            return dataIDMap.get(j);
        }
    }

    public enum Enum {
        BRAKE_PAD_LAMP_STATUS(MockDataID.Status.BRAKE_PAD_LAMP_STATUS, "BRAKE_PAD_LAMP_STATUS"),
        BRAKE_LL_LAMP_STATUS(MockDataID.Status.BRAKE_LL_LAMP_STATUS, "BRAKE_LL_LAMP_STATUS"),
        ABS_LAMP_STATUS(MockDataID.Status.ABS_LAMP_STATUS, "ABS_LAMP_STATUS"),
        TIRE_PRESS_LAMP_STATUS(MockDataID.Status.TIRE_PRESS_LAMP_STATUS, "TIRE_PRESS_LAMP_STATUS"),
        MIL_LAMP_STATUS(MockDataID.Status.MIL_LAMP_STATUS, "MIL_LAMP_STATUS"),
        ALTERNATOR_LAMP_STATUS(65541, "ALTERNATOR_LAMP_STATUS"),
        STEERING_LAMP_STATUS(65542, "STEERING_LAMP_STATUS"),
        AIRBAG_LAMP_STATUS(MockDataID.Status.AIRBAG_LAMP_STATUS, "AIRBAG_LAMP_STATUS"),
        WARN_TEMP_LAMP_STATUS(65544, "WARN_TEMP_LAMP_STATUS"),
        WARN_ENGINE_LAMP_STATUS(65545, "WARN_ENGINE_LAMP_STATUS"),
        SERVICE_LAMP_STATUS(MockDataID.Status.SERVICE_LAMP_STATUS, "SERVICE_LAMP_STATUS"),
        LOW_FUEL_LAMP_STATUS(MockDataID.Status.LOW_FUEL_LAMP_STATUS, "LOW_FUEL_LAMP_STATUS"),
        DOORS_LAMP_STATUS(65548, "DOORS_LAMP_STATUS"),
        ICE_WRN_LAMP_STATUS(65549, "ICE_WRN_LAMP_STATUS"),
        OIL_LPRESS_LAMP_STATUS(65550, "OIL_LPRESS_LAMP_STATUS"),
        SEATBELTS_LAMP_STATUS(65551, "SEATBELTS_LAMP_STATUS"),
        ESP_LAMP_STATUS(65552, "ESP_LAMP_STATUS"),
        HEADLAMP_LAMP_STATUS(65553, "HEADLAMP_LAMP_STATUS"),
        WASHFLUID_LAMP_STATUS(65554, "WASHFLUID_LAMP_STATUS"),
        IMMO_ERR_LAMP_STATUS(65555, "IMMO_ERR_LAMP_STATUS"),
        PREHEAT_ERR_LAMP_STATUS(65562, "PREHEAT_ERR_LAMP_STATUS"),
        BRAKEFLUID_LOW_LAMP_STATUS(65566, "BRAKEFLUID_LOW_LAMP_STATUS"),
        COOLANT_LOW_LAMP_STATUS(65567, "COOLANT_LOW_LAMP_STATUS"),
        AMBER_LAMP(65576, "AMBER_LAMP"),
        RED_LAMP(65577, "RED_LAMP"),
        ASR_LAMP_STATUS(65578, "ASR_LAMP_STATUS"),
        WATER_IN_FUEL_STATUS(131075, "WATER_IN_FUEL_STATUS"),
        IGNITION_STATUS(131079, "IGNITION_STATUS"),
        SECONDARY_FUEL_STATUS(131110, "SECONDARY_FUEL_STATUS"),
        OFFROAD_STATUS(131114, "OFFROAD_STATUS"),
        CRUISE_CONTROL_STATUS(131117, "CRUISE_CONTROL_STATUS"),
        BRAKE_PEDAL_STATUS(131119, "BRAKE_PEDAL_STATUS"),
        POS_BRAKE_PEDAL_1(131137, "POS_BRAKE_PEDAL_1"),
        POS_BRAKE_PEDAL_2(131138, "POS_BRAKE_PEDAL_2"),
        ABS_SWITCH(131139, "ABS_SWITCH"),
        ASR_SWITCH(131140, "ASR_SWITCH"),
        LOW_PRESS_SWITCH(131141, "LOW_PRESS_SWITCH"),
        PARK_BRAKE_STATUS(131156, "PARK_BRAKE_STATUS"),
        FUEL_TYPE(131164, "FUEL_TYPE"),
        OIL_LEVEL_STATUS(MockDataID.Status.OIL_LEVEL_STATUS, "OIL_LEVEL_STATUS"),
        OIL_QUALITY_STATUS(262203, "OIL_QUALITY_STATUS"),
        ENGINE_BRAKE_SWITCH(262226, "ENGINE_BRAKE_SWITCH"),
        PTO_STATUS(262281, "PTO_STATUS"),
        ENGINE_BRAKE_STATUS(262288, "ENGINE_BRAKE_STATUS"),
        RAIL_PRESS_STATUS(262299, "RAIL_PRESS_STATUS"),
        DPF_REGENERATION_STATUS(262305, "DPF_REGENERATION_STATUS"),
        DOS_PUMP_STATUS(262306, "DOS_PUMP_STATUS"),
        TERMINAL_50_STATUS(262307, "TERMINAL_50_STATUS"),
        ADBLUE_PUMP_STATUS(262308, "ADBLUE_PUMP_STATUS"),
        ENGINE_STATUS(262309, "ENGINE_STATUS"),
        KICK_DOWN_STATUS(262310, "KICK_DOWN_STATUS"),
        IDLE_SWITCH_STATUS(262359, "IDLE_SWITCH_STATUS"),
        MISFIRE_MONITOR_COMPLETE_STATUS(262374, "MISFIRE_MONITOR_COMPLETE_STATUS"),
        FUEL_SYSTEM_MONITOR_COMPLETE_STATUS(262375, "FUEL_SYSTEM_MONITOR_COMPLETE_STATUS"),
        COMPREHENSIVE_COMPONENT_MONITOR_COMPLETE_STATUS(262376, "COMPREHENSIVE_COMPONENT_MONITOR_COMPLETE_STATUS"),
        MISFIRE_MONITOR_SUPPORTED_STATUS(262379, "MISFIRE_MONITOR_SUPPORTED_STATUS"),
        FUEL_SYSTEM_MONITOR_SUPPORTED_STATUS(262380, "FUEL_SYSTEM_MONITOR_SUPPORTED_STATUS"),
        COMPREHENSIVE_COMPONENT_MONITOR_SUPPORTED_STATUS(262381, "COMPREHENSIVE_COMPONENT_MONITOR_SUPPORTED_STATUS"),
        PM_SENSOR_MASS_1_SUPPORTED_STATUS(262383, "PM_SENSOR_MASS_1_SUPPORTED_STATUS"),
        PM_SENSOR_MASS_2_SUPPORTED_STATUS(262384, "PM_SENSOR_MASS_2_SUPPORTED_STATUS"),
        ENGINE_TORQUE_MODE_STATUS(262387, "ENGINE_TORQUE_MODE_STATUS"),
        SCR_OPERATOR_INDUCEMENT_SEVERITY_STATUS(262390, "SCR_OPERATOR_INDUCEMENT_SEVERITY_STATUS"),
        REGENERATION_INHIBIT_SWITCH_STATUS(262391, "REGENERATION_INHIBIT_SWITCH_STATUS"),
        DPF_REGENERATION_INHIBITED_BY_SWITCH_STATUS(262392, "DPF_REGENERATION_INHIBITED_BY_SWITCH_STATUS"),
        DPF_ACTIVE_REGENERATION_STATUS(262393, "DPF_ACTIVE_REGENERATION_STATUS"),
        DPF_PASSIVE_REGENERATION_STATUS(262394, "DPF_PASSIVE_REGENERATION_STATUS"),
        ENGINE_OVERHEAT_PROCESTION_ACTIVE_LIMIT_STATUS(262395, "ENGINE_OVERHEAT_PROCESTION_ACTIVE_LIMIT_STATUS"),
        CLOGGED_FUEL_IN_OIL_FILTER_STATUS(262396, "CLOGGED_FUEL_IN_OIL_FILTER_STATUS"),
        CLOGGED_AIR_FILTER_STATUS(262397, "CLOGGED_AIR_FILTER_STATUS"),
        CLOGGED_FUEL_PRE_FILTER_STATUS(262398, "CLOGGED_FUEL_PRE_FILTER_STATUS"),
        CLOGGED_FUEL_FILTER_STATUS(262399, "CLOGGED_FUEL_FILTER_STATUS"),
        ENGINE_OIL_PRESSURE_LOW_STATUS(262401, "ENGINE_OIL_PRESSURE_LOW_STATUS"),
        AFTERTREATMENT_2_EXHAUST_DEW_POINT(262404, "AFTERTREATMENT_2_EXHAUST_DEW_POINT"),
        AFTERTREATMENT_1_EXHAUST_DEW_POINT(262405, "AFTERTREATMENT_1_EXHAUST_DEW_POINT"),
        AFTERTREATMENT_1_INTAKE_DEW_POINT(262406, "AFTERTREATMENT_1_INTAKE_DEW_POINT"),
        CLOGGED_OIL_FILTER_STATUS(262407, "CLOGGED_OIL_FILTER_STATUS"),
        LOW_CATALYST_EFFICIENCY_STATUS(262408, "LOW_CATALYST_EFFICIENCY_STATUS"),
        NH3_SLIP_DETECTION_STATUS(262409, "NH3_SLIP_DETECTION_STATUS"),
        ENGINE_PROTECTION_STATUS(262410, "ENGINE_PROTECTION_STATUS"),
        ENGINE_OVERSPEED_PROTECTION_STATUS(262411, "ENGINE_OVERSPEED_PROTECTION_STATUS"),
        ENGINE_OIL_OVERTEMPERATURE_STATUS(262412, "ENGINE_OIL_OVERTEMPERATURE_STATUS"),
        EXHAUST_OVERHEAT_STATUS(262413, "EXHAUST_OVERHEAT_STATUS"),
        CLOGGED_DPF_STATUS(262414, "CLOGGED_DPF_STATUS"),
        FUEL_OVERTEMPERATURE_PROTECTION_STATUS(262415, "FUEL_OVERTEMPERATURE_PROTECTION_STATUS"),
        BAD_UREA_QUALITY_STATUS(262416, "BAD_UREA_QUALITY_STATUS"),
        ENGINE_OVERSPEED_WARNING_STATUS(262417, "ENGINE_OVERSPEED_WARNING_STATUS"),
        SMOKE_LIMITER_PROTECTION_STATUS(262418, "SMOKE_LIMITER_PROTECTION_STATUS"),
        SMOKE_LIMITATION_STATUS(262419, "SMOKE_LIMITATION_STATUS"),
        UREA_THAWING_MODE_STATUS(262420, "UREA_THAWING_MODE_STATUS"),
        LOW_IDLE_INCREASE_DESIRED(262421, "LOW_IDLE_INCREASE_DESIRED"),
        ENGINE_SHUTDOWN_PROTECTION_SYSTEM(262422, "ENGINE_SHUTDOWN_PROTECTION_SYSTEM"),
        ENGINE_MODE(262425, "ENGINE_MODE"),
        IDLE_CONTROL_ENABLE_STATUS(262430, "IDLE_CONTROL_ENABLE_STATUS"),
        INDUCEMENT_VALIDATION_STATUS(262433, "INDUCEMENT_VALIDATION_STATUS"),
        UREA_QUALITY_WARNING_STATUS(262440, "UREA_QUALITY_WARNING_STATUS"),
        THERMAL_THREATMENT_INFORMATION_STATUS(262444, "THERMAL_THREATMENT_INFORMATION_STATUS"),
        LOW_IDLE_INCREASE_STATUS(262445, "LOW_IDLE_INCREASE_STATUS"),
        SCR_HYDRAULIC_SYSTEM_STATUS(262459, "SCR_HYDRAULIC_SYSTEM_STATUS"),
        ENGINE_SPEED_CONTROL_STATUS(262490, "ENGINE_SPEED_CONTROL_STATUS"),
        ADBLUE_WARNING_LEVEL(262491, "ADBLUE_WARNING_LEVEL"),
        ADBLUE_TECHNICAL_FAILURE(262492, "ADBLUE_TECHNICAL_FAILURE"),
        ENGINE_DEGRADATAION_LEVEL(262493, "ENGINE_DEGRADATAION_LEVEL"),
        TERMINAL_15_STATUS(327687, "TERMINAL_15_STATUS"),
        TERMINAL_30_STATUS(327688, "TERMINAL_30_STATUS"),
        DOORS_LOCK_STATUS(524288, "DOORS_LOCK_STATUS"),
        FRONT_LEFT_DOOR_LOCK_STATUS(524289, "FRONT_LEFT_DOOR_LOCK_STATUS"),
        FRONT_RIGHT_DOOR_LOCK_STATUS(524290, "FRONT_RIGHT_DOOR_LOCK_STATUS"),
        REAR_LEFT_DOOR_LOCK_STATUS(524291, "REAR_LEFT_DOOR_LOCK_STATUS"),
        REAR_RIGHT_DOOR_LOCK_STATUS(524292, "REAR_RIGHT_DOOR_LOCK_STATUS"),
        DPF_ERR_STATUS(589824, "DPF_ERR_STATUS"),
        REQUESTED_GEAR(655361, "REQUESTED_GEAR"),
        ACTUAL_GEAR(655362, "ACTUAL_GEAR"),
        CLUTCH_PEDAL_STATUS(655368, "CLUTCH_PEDAL_STATUS"),
        EPICYCLOIDAL_UNIT_VALVE_2(655370, "EPICYCLOIDAL_UNIT_VALVE_2"),
        SPLITTER_VALVE_1(655371, "SPLITTER_VALVE_1"),
        PNEUM_SUPPLY_VALVE(655372, "PNEUM_SUPPLY_VALVE"),
        INERTIA_BRAKE_VALVE(655373, "INERTIA_BRAKE_VALVE"),
        SPLITTER_VALVE_2(655374, "SPLITTER_VALVE_2"),
        GEAR_SELECTOR_VALVE_1(655375, "GEAR_SELECTOR_VALVE_1"),
        GEAR_SELECTOR_VALVE_2(655376, "GEAR_SELECTOR_VALVE_2"),
        GEAR_ENGAGE_VALVE_1(655377, "GEAR_ENGAGE_VALVE_1"),
        GEAR_ENGAGE_VALVE_2(655378, "GEAR_ENGAGE_VALVE_2"),
        EPICYCLOIDAL_UNIT_VALVE_1(655379, "EPICYCLOIDAL_UNIT_VALVE_1"),
        CLUTCH_DISENGAGE_FAST(655397, "CLUTCH_DISENGAGE_FAST"),
        CLUTCH_ENGAGE_FAST(655398, "CLUTCH_ENGAGE_FAST"),
        CLUTCH_DISENGAGE_SLOW(655399, "CLUTCH_DISENGAGE_SLOW"),
        CLUTCH_ENGAGE_SLOW(655400, "CLUTCH_ENGAGE_SLOW"),
        DRIVE_DIRECTION(655401, "DRIVE_DIRECTION"),
        GEAR_SELECT_FING_1(655409, "GEAR_SELECT_FING_1"),
        GEAR_SELECT_FING_2(655410, "GEAR_SELECT_FING_2"),
        GEAR_SELECT_FING_N(655411, "GEAR_SELECT_FING_N"),
        GEAR_ENG_FING_1(655412, "GEAR_ENG_FING_1"),
        GEAR_ENG_FING_2(655413, "GEAR_ENG_FING_2"),
        SHIFT_LEVER(655414, "SHIFT_LEVER"),
        EVEN_GEARS_VALVE_1_STATUS(655419, "EVEN_GEARS_VALVE_1_STATUS"),
        EVEN_GEARS_VALVE_2_STATUS(655420, "EVEN_GEARS_VALVE_2_STATUS"),
        ODD_GEARS_VALVE_1_STATUS(655421, "ODD_GEARS_VALVE_1_STATUS"),
        ODD_GEARS_VALVE_2_STATUS(655422, "ODD_GEARS_VALVE_2_STATUS"),
        GEAR_SELECTOR_VALVE_N_STATUS(655423, "GEAR_SELECTOR_VALVE_N_STATUS"),
        VALVE_A_STATUS(655425, "VALVE_A_STATUS"),
        VALVE_B_STATUS(655426, "VALVE_B_STATUS"),
        VALVE_C_STATUS(655427, "VALVE_C_STATUS"),
        VALVE_D_STATUS(655428, "VALVE_D_STATUS"),
        VALVE_E_STATUS(655429, "VALVE_E_STATUS"),
        VALVE_F_STATUS(655430, "VALVE_F_STATUS"),
        VALVE_G_STATUS(655431, "VALVE_G_STATUS"),
        VALVE_H_STATUS(655432, "VALVE_H_STATUS"),
        VALVE_J_STATUS(655433, "VALVE_J_STATUS"),
        DRIVER_WORKING_STATE_1(917504, "DRIVER_WORKING_STATE_1"),
        DRIVER_WORKING_STATE_2(917505, "DRIVER_WORKING_STATE_2"),
        DRIVER_CARD_1(917506, "DRIVER_CARD_1"),
        DRIVER_CARD_2(917507, "DRIVER_CARD_2"),
        DRIVER_TIME_REL_STATE_1(917508, "DRIVER_TIME_REL_STATE_1"),
        DRIVER_TIME_REL_STATE_2(917509, "DRIVER_TIME_REL_STATE_2"),
        TACHO_SLOT_1(917522, "TACHO_SLOT_1"),
        TACHO_SLOT_2(917523, "TACHO_SLOT_2"),
        HIGH_VOLTAGE_BATTERY_CHARGING_STATUS(1114403, "HIGH_VOLTAGE_BATTERY_CHARGING_STATUS");

        private static final LongSparseArray<Enum> dataIDMap = new LongSparseArray<>();
        private long mId;
        private String mName;

        static {
            for (Enum r3 : values()) {
                dataIDMap.put(r3.getId(), r3);
            }
        }

        Enum(long j, String str) {
            this.mId = j;
            this.mName = str;
        }

        public long getId() {
            return this.mId;
        }

        public String getName() {
            return this.mName;
        }

        public static Enum findById(long j) {
            return dataIDMap.get(j);
        }
    }

    public enum Text {
        VIN(MockDataID.Text.VIN, "VIN"),
        DRIVER_IDENTIFY_1(917510, "DRIVER_IDENTIFY_1"),
        DRIVER_IDENTIFY_2(917511, "DRIVER_IDENTIFY_2"),
        DRIVER_NAME_1(917520, "DRIVER_NAME_1"),
        DRIVER_NAME_2(917521, "DRIVER_NAME_2");

        private static final LongSparseArray<Text> dataIDMap = new LongSparseArray<>();
        private long mId;
        private String mName;

        static {
            for (Text text : values()) {
                dataIDMap.put(text.getId(), text);
            }
        }

        Text(long j, String str) {
            this.mId = j;
            this.mName = str;
        }

        public long getId() {
            return this.mId;
        }

        public String getName() {
            return this.mName;
        }

        public static Text findById(long j) {
            return dataIDMap.get(j);
        }
    }

    public enum DateTime {
        DATE_NEXT_OIL_CHANGE(458757, "DATE_NEXT_OIL_CHANGE"),
        DATE_NEXT_SERVICE(458763, "DATE_NEXT_SERVICE"),
        DATE_NEXT_CHECK(458775, "DATE_NEXT_CHECK"),
        DATE_NEXT_BRKFLD_CHANGE(458776, "DATE_NEXT_BRKFLD_CHANGE"),
        DATE_NEXT_INSP(458777, "DATE_NEXT_INSP"),
        DATE_NEXT_SPARKPLUGS_CHANGE(458780, "DATE_NEXT_SPARKPLUGS_CHANGE"),
        DATE_NEXT_DPF_SERVICE(458782, "DATE_NEXT_DPF_SERVICE"),
        DATE_NEXT_ACFILTER_CHANGE(458784, "DATE_NEXT_ACFILTER_CHANGE"),
        DATE_NEXT_BATTERY_CHANGE(458785, "DATE_NEXT_BATTERY_CHANGE"),
        DATE_NEXT_ADPF_CHANGE(458787, "DATE_NEXT_ADPF_CHANGE"),
        DATE_NEXT_AIR_FILTER_CHANGE(458788, "DATE_NEXT_AIR_FILTER_CHANGE"),
        DATE_NEXT_CLUTCH_CHANGE(458789, "DATE_NEXT_CLUTCH_CHANGE"),
        DATE_NEXT_COOLANT_CHANGE(458790, "DATE_NEXT_COOLANT_CHANGE"),
        DATE_NEXT_DIFFERENTIAL_OIL_CHANGE(458791, "DATE_NEXT_DIFFERENTIAL_OIL_CHANGE"),
        DATE_NEXT_CARTRIDGE_CHANGE(458792, "DATE_NEXT_CARTRIDGE_CHANGE"),
        DATE_NEXT_FRONT_AXLE_STEERING_OIL_CHANGE(458793, "DATE_NEXT_FRONT_AXLE_STEERING_OIL_CHANGE"),
        DATE_NEXT_GEARBOX_OIL_CHANGE(458794, "DATE_NEXT_GEARBOX_OIL_CHANGE"),
        DATE_NEXT_FRONT_AXLE_1_BRAKES_CHANGE(458820, "DATE_NEXT_FRONT_AXLE_1_BRAKES_CHANGE"),
        DATE_NEXT_FRONT_AXLE_2_BRAKES_CHANGE(458824, "DATE_NEXT_FRONT_AXLE_2_BRAKES_CHANGE"),
        DATE_NEXT_REAR_AXLE_1_BRAKES_CHANGE(458828, "DATE_NEXT_REAR_AXLE_1_BRAKES_CHANGE"),
        DATE_NEXT_REAR_AXLE_2_BRAKES_CHANGE(458832, "DATE_NEXT_REAR_AXLE_2_BRAKES_CHANGE"),
        DATE_NEXT_DPF_CHANGE(458836, "DATE_NEXT_DPF_CHANGE"),
        DATE_NEXT_ADD_AXLE_BRAKES_CHANGE(458840, "DATE_NEXT_ADD_AXLE_BRAKES_CHANGE"),
        DATE_NEXT_BRAKES_CHANGE(458844, "DATE_NEXT_BRAKES_CHANGE"),
        DATE_NEXT_FIRST_SERVICE(458848, "DATE_NEXT_FIRST_SERVICE"),
        DATE_NEXT_UNIV_SERVICE(458852, "DATE_NEXT_UNIV_SERVICE"),
        DATE_NEXT_S6_SERVICE(458856, "DATE_NEXT_S6_SERVICE"),
        DATE_NEXT_VALVE_SERVICE(458860, "DATE_NEXT_VALVE_SERVICE"),
        DATE_NEXT_RETARDER_SERV(458864, "DATE_NEXT_RETARDER_SERV"),
        DATE_NEXT_TRANS_CASE_OIL_CHANGE(458868, "DATE_NEXT_TRANS_CASE_OIL_CHANGE"),
        DATE_NEXT_DIFFERENTIAL_FRONT_OIL_CHANGE(458872, "DATE_NEXT_DIFFERENTIAL_FRONT_OIL_CHANGE"),
        DATE_NEXT_DIFFERENTIAL_2_OIL_CHANGE(458876, "DATE_NEXT_DIFFERENTIAL_2_OIL_CHANGE"),
        DATE_NEXT_FRONT_AXLE_SERVICE(458880, "DATE_NEXT_FRONT_AXLE_SERVICE"),
        DATE_NEXT_REAR_AXLE_STEERING_OIL_CHANGE(458884, "DATE_NEXT_REAR_AXLE_STEERING_OIL_CHANGE"),
        DATE_NEXT_ADD_TRACTION_CHANGE(458888, "DATE_NEXT_ADD_TRACTION_CHANGE"),
        DATE_NEXT_PTO1_SERVICE(458892, "DATE_NEXT_PTO1_SERVICE"),
        DATE_NEXT_PTO2_SERVICE(458896, "DATE_NEXT_PTO2_SERVICE"),
        DATE_NEXT_PTO3_SERVICE(458900, "DATE_NEXT_PTO3_SERVICE");

        private static final LongSparseArray<DateTime> dataIDMap = new LongSparseArray<>();
        private long mId;
        private String mName;

        static {
            for (DateTime dateTime : values()) {
                dataIDMap.put(dateTime.getId(), dateTime);
            }
        }

        DateTime(long j, String str) {
            this.mId = j;
            this.mName = str;
        }

        public long getId() {
            return this.mId;
        }

        public String getName() {
            return this.mName;
        }

        public static DateTime findById(long j) {
            return dataIDMap.get(j);
        }
    }

    public enum Procedure {
        CLEAR_DTC_VEHICLE(131159, "CLEAR_DTC_VEHICLE"),
        VEHICLE_DDB_CONFIGURATION(131189, "VEHICLE_DDB_CONFIGURATION"),
        CLEAR_DTC_BRAKES(196609, "CLEAR_DTC_BRAKES"),
        BRAKE_PAD_WEAR_RESET(196610, "BRAKE_PAD_WEAR_RESET"),
        DPF_REGENERATION(262208, "DPF_REGENERATION"),
        SCR_CATALYST_REGENERATION(262209, "SCR_CATALYST_REGENERATION"),
        INJECTOR_SWITCH_OFF(262210, "INJECTOR_SWITCH_OFF"),
        CLEAR_DTC_ENGINE(262301, "CLEAR_DTC_ENGINE"),
        CLEAR_DTC_SCR_DPF(262302, "CLEAR_DTC_SCR_DPF"),
        ALTERNATOR_TEST(262313, "ALTERNATOR_TEST"),
        CAUSES_REGENERATIONS(262314, "CAUSES_REGENERATIONS"),
        CYLINDER_BALANCE_TEST(262315, "CYLINDER_BALANCE_TEST"),
        CYLINDER_PERFORMANCE_TEST(262316, "CYLINDER_PERFORMANCE_TEST"),
        CYLINDER_VALVES_TEST(262317, "CYLINDER_VALVES_TEST"),
        CYLINDERS_DEACTIVATION_PERFORMANCE_TEST(262318, "CYLINDERS_DEACTIVATION_PERFORMANCE_TEST"),
        DIFFERENTIAL_SENSOR_TEST(262319, "DIFFERENTIAL_SENSOR_TEST"),
        EMISSION_ERROR_CLEARING(262320, "EMISSION_ERROR_CLEARING"),
        ENGINE_BRAKE_TEST(262321, "ENGINE_BRAKE_TEST"),
        EGR_DATA_RESET(262322, "EGR_DATA_RESET"),
        EGR_SYSTEM_RESET(262323, "EGR_SYSTEM_RESET"),
        EGR_SYSTEM_TEST(262324, "EGR_SYSTEM_TEST"),
        EGR_VALVE_TEST(262325, "EGR_VALVE_TEST"),
        FAN_TEST(262326, "FAN_TEST"),
        INJECTORS_ADAPTATION_RESET(262327, "INJECTORS_ADAPTATION_RESET"),
        MAF_DATA_RESET(262328, "MAF_DATA_RESET"),
        RAIL_PRESSURE_VALVE_RESET(262329, "RAIL_PRESSURE_VALVE_RESET"),
        RESET_BLOCKED_FUEL_DOSING(262330, "RESET_BLOCKED_FUEL_DOSING"),
        SAFETY_ERRORS_MEMORY_DELETION(262331, "SAFETY_ERRORS_MEMORY_DELETION"),
        WASTEGATE_ACTUATOR_TEST(262332, "WASTEGATE_ACTUATOR_TEST"),
        TORQUE_LIMITATION_RESET(262333, "TORQUE_LIMITATION_RESET"),
        TURBOCHARGER_TEST(262334, "TURBOCHARGER_TEST"),
        AFTERTREATMENT_SYSTEM_TEST(262335, "AFTERTREATMENT_SYSTEM_TEST"),
        DOC_REGENERATION(262336, "DOC_REGENERATION"),
        PARTICULATE_FILTER_REGENERATION(262337, "PARTICULATE_FILTER_REGENERATION"),
        PARTICULATE_FILTER_RESET_ROUTINE(262338, "PARTICULATE_FILTER_RESET_ROUTINE"),
        PARTICULATE_FILTER_TEST(262339, "PARTICULATE_FILTER_TEST"),
        REAGENT_CIRCUIT_TEST(262340, "REAGENT_CIRCUIT_TEST"),
        REAGENT_PUMP_TEST(262341, "REAGENT_PUMP_TEST"),
        REAGENT_SYSTEM_RESET(262342, "REAGENT_SYSTEM_RESET"),
        REAGENT_SYSTEM_TEST(262343, "REAGENT_SYSTEM_TEST"),
        RESET_BLOCKED_DOC(262344, "RESET_BLOCKED_DOC"),
        SCR_SYSTEM_DOSING_TEST(262345, "SCR_SYSTEM_DOSING_TEST"),
        SCR_WARNING_LIGHT_RESET(262346, "SCR_WARNING_LIGHT_RESET"),
        SCR_WARNING_LIGHT_RESET_COMPLETE_ROUTINE(262347, "SCR_WARNING_LIGHT_RESET_COMPLETE_ROUTINE"),
        SOOT_INDEX_ADAPTATION(262348, "SOOT_INDEX_ADAPTATION"),
        SOOT_INDEX_AND_SOOT_RATE_ADAPTATION(262349, "SOOT_INDEX_AND_SOOT_RATE_ADAPTATION"),
        SOOT_RATE_ADAPTATION(262350, "SOOT_RATE_ADAPTATION"),
        ACCELERATOR_PEDAL_INITIALIZATION(262351, "ACCELERATOR_PEDAL_INITIALIZATION"),
        CLUTCH_INITIALIZATION_RMV(262352, "CLUTCH_INITIALIZATION_RMV"),
        MAXIMUM_VEHICLE_SPEED_55_89(262368, "MAXIMUM_VEHICLE_SPEED_55_89"),
        MAXIMUM_VEHICLE_SPEED_65_105(262369, "MAXIMUM_VEHICLE_SPEED_65_105"),
        MAXIMUM_VEHICLE_SPEED_70_113(262370, "MAXIMUM_VEHICLE_SPEED_70_113"),
        MAXIMUM_VEHICLE_SPEED_75_120(262371, "MAXIMUM_VEHICLE_SPEED_75_120"),
        MAXIMUM_VEHICLE_SPEED_80_129(262372, "MAXIMUM_VEHICLE_SPEED_80_129"),
        SELF_ADAPTING_PARAMETERS_RESET(262373, "SELF_ADAPTING_PARAMETERS_RESET"),
        INDUCEMENT_COUNTER_RESET_SERVICE(262467, "INDUCEMENT_COUNTER_RESET_SERVICE"),
        CLEAR_DTC_TRANSMISSION(655416, "CLEAR_DTC_TRANSMISSION"),
        BASIC_TRANSMISSION_PARAMETERS_RESET(655434, "BASIC_TRANSMISSION_PARAMETERS_RESET"),
        CALIBRATION_OF_CLUTCH_ENGAGEMENT_POINT(655435, "CALIBRATION_OF_CLUTCH_ENGAGEMENT_POINT"),
        CLUTCH_ACTUATOR_PURGE(655436, "CLUTCH_ACTUATOR_PURGE"),
        CLUTCH_CYLINDER_LEAK_TEST(655437, "CLUTCH_CYLINDER_LEAK_TEST"),
        CLUTCH_INITIALIZATION_TRANSMISSION(655438, "CLUTCH_INITIALIZATION_TRANSMISSION"),
        CLUTCH_SEAL_TEST_CLOSING(655439, "CLUTCH_SEAL_TEST_CLOSING"),
        CLUTCH_SEAL_TEST_OPENING(655440, "CLUTCH_SEAL_TEST_OPENING"),
        CLUTCH_TRAVEL_VALUE(655441, "CLUTCH_TRAVEL_VALUE"),
        CURRENT_CLUTCH_WEAR(655442, "CURRENT_CLUTCH_WEAR"),
        CUT_OFF_AND_FAULT_COUNTER_RESET(655443, "CUT_OFF_AND_FAULT_COUNTER_RESET"),
        ENGINE_TRANSMISSION_ADAPTATION(655444, "ENGINE_TRANSMISSION_ADAPTATION"),
        INITIALIZATION_OF_TRANSMISSION_AND_CLUTCH(655445, "INITIALIZATION_OF_TRANSMISSION_AND_CLUTCH"),
        TRANSMISSION_RESET(655446, "TRANSMISSION_RESET"),
        NATIVE_TEST_PROCEDURE(1048576, "NATIVE_TEST_PROCEDURE"),
        LUA_TEST_PROCEDURE(1048577, "LUA_TEST_PROCEDURE");

        private static final LongSparseArray<Procedure> dataIDMap = new LongSparseArray<>();
        private long mId;
        private String mName;

        static {
            for (Procedure procedure : values()) {
                dataIDMap.put(procedure.getId(), procedure);
            }
        }

        Procedure(long j, String str) {
            this.mId = j;
            this.mName = str;
        }

        public long getId() {
            return this.mId;
        }

        public String getName() {
            return this.mName;
        }

        public static Procedure findById(long j) {
            return dataIDMap.get(j);
        }
    }
}
