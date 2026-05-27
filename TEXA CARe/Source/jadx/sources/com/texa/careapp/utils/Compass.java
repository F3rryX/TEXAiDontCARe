package com.texa.careapp.utils;

import android.content.Context;
import android.hardware.GeomagneticField;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import android.util.Log;
import android.view.View;
import android.view.animation.RotateAnimation;
import com.google.android.gms.maps.model.LatLng;

/* JADX INFO: loaded from: classes2.dex */
public class Compass {
    private static final int DEGREES_360 = 360;
    private static final String TAG = "Compass";
    private float azimuth;
    private Sensor mAccelerometer;
    private Context mContext;
    private Sensor mField;
    private SensorManager mSensorManager;
    private float DELAY_DEGREES = 5.0f;
    private float[] temporaryRotationMatrix = new float[9];
    private float[] rotationMatrix = new float[9];
    private float[] accelerometerData = new float[3];
    private float[] magneticData = new float[3];
    private float[] orientationData = new float[3];
    private float currentRotation = 0.0f;

    public float getAzimuth() {
        return this.azimuth;
    }

    public Compass(Context context) {
        this.mContext = context;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.mSensorManager = sensorManager;
        this.mAccelerometer = sensorManager.getDefaultSensor(1);
        this.mField = this.mSensorManager.getDefaultSensor(2);
    }

    public void registerSensors() {
        this.mSensorManager.registerListener((SensorEventListener) this.mContext, this.mAccelerometer, 3);
        this.mSensorManager.registerListener((SensorEventListener) this.mContext, this.mField, 3);
    }

    public void unregisterSensors() {
        this.mSensorManager.unregisterListener((SensorEventListener) this.mContext, this.mAccelerometer);
        this.mSensorManager.unregisterListener((SensorEventListener) this.mContext, this.mField);
    }

    public float startRotation(Location location, Location location2) {
        if (location != null && location2 != null) {
            float azimuth = getAzimuth() - new GeomagneticField((float) location.getLatitude(), (float) location.getLongitude(), (float) location.getAltitude(), System.currentTimeMillis()).getDeclination();
            float fBearingTo = location.bearingTo(location2);
            if (fBearingTo < 0.0f) {
                fBearingTo += 360.0f;
            }
            float f = fBearingTo - azimuth;
            if (f < 0.0f) {
                f += 360.0f;
            }
            Log.i(TAG, "rotation: " + f);
            return f;
        }
        Log.e(TAG, "userLocation or objectLocation cant be null");
        return -1.0f;
    }

    public void rotateView(View view, float f) {
        if (Math.abs(this.currentRotation - f) > this.DELAY_DEGREES) {
            RotateAnimation rotateAnimation = new RotateAnimation(this.currentRotation, f, 1, 0.5f, 1, 0.5f);
            this.currentRotation = f;
            rotateAnimation.setFillAfter(true);
            view.startAnimation(rotateAnimation);
        }
    }

    public float startRotation(Location location, LatLng latLng) {
        if (latLng != null) {
            Location location2 = new Location("wrapper Location");
            location2.setLatitude(latLng.latitude);
            location2.setLongitude(latLng.longitude);
            return startRotation(location, location2);
        }
        Log.e(TAG, "LatLng location cant be null");
        return -1.0f;
    }

    private void loadSensorData(SensorEvent sensorEvent) {
        int type = sensorEvent.sensor.getType();
        if (type == 1) {
            this.accelerometerData = sensorEvent.values;
        } else if (type == 2) {
            this.magneticData = sensorEvent.values;
        }
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        loadSensorData(sensorEvent);
        SensorManager.getRotationMatrix(this.temporaryRotationMatrix, null, this.accelerometerData, this.magneticData);
        configureDeviceAngle();
        SensorManager.getOrientation(this.rotationMatrix, this.orientationData);
        this.azimuth = (float) Math.toDegrees(this.orientationData[0]);
        Log.i(TAG, "azimuth: " + getAzimuth());
    }

    private void configureDeviceAngle() {
        SensorManager.remapCoordinateSystem(this.temporaryRotationMatrix, 3, 2, this.rotationMatrix);
    }
}
