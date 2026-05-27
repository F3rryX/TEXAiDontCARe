package com.texa.careapp.impactdetection;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ImpactReportCreator {
    public String create(Context context, ImpactEvent impactEvent) throws IOException {
        return Base64.encodeToString(compress(createReport(context, impactEvent)), 2);
    }

    protected String createReport(Context context, ImpactEvent impactEvent) {
        StringBuilder sb = new StringBuilder();
        sb.append("----------\n");
        Object[] objArr = new Object[1];
        objArr[0] = impactEvent.getIntensity() != null ? String.format("%.0f", Double.valueOf(Math.sqrt(impactEvent.getIntensity().longValue()))) : "N.A.";
        sb.append(String.format("intensity: %s\n", objArr));
        Object[] objArr2 = new Object[1];
        objArr2[0] = impactEvent.getImpactTime() != null ? new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z", Locale.US).format(new Date(impactEvent.getImpactTime().longValue())) : "N.A.";
        sb.append(String.format("impact-date: %s\n", objArr2));
        sb.append(String.format("source-sensor: %s\n", getSensorName(context, impactEvent.getSourceSensorType())));
        sb.append("----------\n");
        for (AccelerationEvent accelerationEvent : impactEvent.getAccelerationData()) {
            sb.append(String.format("%1$s,%2$.0f,%3$.0f,%4$.0f\n", impactEvent.getImpactTime() != null ? String.format("%d", Long.valueOf(accelerationEvent.getTimeInMillis() - impactEvent.getImpactTime().longValue())) : "N.A.", Float.valueOf(accelerationEvent.getX()), Float.valueOf(accelerationEvent.getY()), Float.valueOf(accelerationEvent.getZ())));
        }
        return sb.toString();
    }

    protected String getSensorName(Context context, int i) {
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        if (sensorManager == null) {
            return "";
        }
        for (Sensor sensor : sensorManager.getSensorList(-1)) {
            if (i == sensor.getType()) {
                return sensor.getName();
            }
        }
        return "";
    }

    protected byte[] compress(String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return byteArray;
    }
}
