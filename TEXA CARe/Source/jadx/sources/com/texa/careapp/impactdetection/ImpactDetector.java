package com.texa.careapp.impactdetection;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ImpactDetector {
    public static final long DELAY_STOP_ACCELERATION_LISTENER = 10000;
    protected static final long INTENSITY_3_8_G;
    private static final int INTERVAL_AFTER_DISCONNECTION = 10000;
    protected static final long INTERVAL_CACHE_IMPACT_DATA = 10000;
    protected static final long INTERVAL_CHECK_COMMUNICATION_STATUS_1 = 20000;
    protected static final long INTERVAL_CHECK_COMMUNICATION_STATUS_2 = 20000;
    protected static final long LINEAR_ACCELERATION_THRESHOLD_UG;
    protected static final int MESSAGE_CACHE_IMPACT_DATA = 4;
    protected static final int MESSAGE_CHECK_COMMUNICATION_STATUS_1 = 2;
    protected static final int MESSAGE_CHECK_COMMUNICATION_STATUS_2 = 3;
    private static final int MESSAGE_STOP_SENSOR_LISTENERS = 1;
    private static final int NUMBER_OF_CONSECUTIVE_OVER_THRESHOLD_EVENTS = 2;
    protected static final long QUEUE_DURATION_IN_MILLISECONDS = 15000;
    private static final int SAMPLE_FREQUENCY = 50;
    protected static final long TIME_AFTER_FIRST_SAMPLE_OVER_THRESHOLD = 25;
    public static final int VALIDATION_STATUS_ABORTED = 2;
    public static final int VALIDATION_STATUS_DETECTED = 1;
    public static final int VALIDATION_STATUS_UNDEFINED = 0;
    private final Communication mCommunication;
    private PropertyChangeListener mCommunicationListener;
    private ImpactDetectorListener mImpactDetectorListener;
    private DeviceInfo mImpactDevice;
    private Long mImpactIntensity;
    private Long mImpactTime;
    private DeviceInfo mLastConnectedDevice;
    private final Sensor mSensorGameRotationVector;
    private SensorEventListener mSensorGameRotationVectorListener;
    private final Sensor mSensorLinearAcceleration;
    private SensorEventListener mSensorLinearAccelerationListener;
    private final SensorManager mSensorManager;
    private Long mTimeLastDisconnection;
    protected static final long INTENSITY_ONE_G = (long) Math.pow(1000000.0d, 2.0d);
    protected static final long INTENSITY_FOUR_G = (long) Math.pow(4000000.0d, 2.0d);
    private final Object mAccelerationEventQueueLock = new Object();
    private final ReadWriteLock mRotationMatrixLock = new ReentrantReadWriteLock();
    private final MyHandler mHandler = new MyHandler(new WeakReference(this));
    private final AccelerationEventQueue mAccelerationEventQueue = new AccelerationEventQueue(QUEUE_DURATION_IN_MILLISECONDS);
    private LinkedList<AccelerationEvent> mImpactAccelerationEvents = new LinkedList<>();
    private float[] mRotationMatrix = null;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ValidationStatus {
    }

    protected static float convertFromUgToG(float f) {
        return f / 1000000.0f;
    }

    static {
        long jPow = (long) Math.pow(3800000.0d, 2.0d);
        INTENSITY_3_8_G = jPow;
        LINEAR_ACCELERATION_THRESHOLD_UG = jPow;
    }

    public ImpactDetector(Communication communication, SensorManager sensorManager) {
        this.mCommunication = communication;
        this.mSensorManager = sensorManager;
        this.mSensorGameRotationVector = getSensorGameRotationVector(sensorManager);
        this.mSensorLinearAcceleration = getSensorLinearAcceleration(sensorManager);
    }

    public boolean isSupported() {
        return hasSensorLinearAcceleration() && hasSensorGameRotationVector() && isBluetoothSupported();
    }

    public void onCareImpactDetected() {
        if (isImpactDetected()) {
            deleteAllScheduledTasks();
            discardLastImpact();
        }
    }

    public void setImpactDetectorListener(ImpactDetectorListener impactDetectorListener) {
        this.mImpactDetectorListener = impactDetectorListener;
    }

    public void startDetection() {
        if (!isSupported()) {
            throw new IllegalStateException("Required sensor not available.");
        }
        discardLastImpact();
        listenOnCommunicationStatusChanges(this.mCommunication);
    }

    public void stopDetection() {
        stopListenOnCommunicationStatusChanges(this.mCommunication);
    }

    protected boolean checkCommunicationStatusDelayed(int i, long j) {
        return this.mHandler.sendEmptyMessageDelayed(i, j);
    }

    protected boolean cacheImpactDataDelayed(long j) {
        return this.mHandler.sendEmptyMessageDelayed(4, j);
    }

    protected static int convertFromAccelerationToUg(float f) {
        return Math.round((f / 9.80665f) * 1000000.0f);
    }

    protected static int convertFromGToUg(float f) {
        return Math.round(f * 1000000.0f);
    }

    protected static int convertFromGToUg(double d) {
        return (int) Math.round(d * 1000000.0d);
    }

    protected SensorEventListener createSensorEventListener(Sensor sensor) {
        if (sensor == null) {
            return null;
        }
        if (10 == sensor.getType()) {
            return new LinearAccelerationSensorEventListener(new WeakReference(this));
        }
        if (15 == sensor.getType()) {
            return new GameRotationVectorSensorEventListener(new WeakReference(this));
        }
        return null;
    }

    protected void deleteImpactAccelerationEvents() {
        this.mImpactAccelerationEvents.clear();
    }

    protected void deleteAllScheduledTasks() {
        Timber.d("deleteAllScheduledTasks()", new Object[0]);
        this.mHandler.removeCallbacksAndMessages(null);
    }

    protected void discardLastImpact() {
        setImpactTime(null);
        setImpactDevice(null);
        setImpactIntensity(null);
        deleteImpactAccelerationEvents();
    }

    protected void fireImpactDetected(int i, int i2, DeviceInfo deviceInfo, Long l, Long l2, Long l3, List<AccelerationEvent> list) {
        Timber.i("Firing impact event with status: %d", Integer.valueOf(i));
        if (this.mImpactDetectorListener != null) {
            this.mImpactDetectorListener.onImpactDetected(new ImpactEvent(deviceInfo, i, l, i2, l2, l3, list == null ? Collections.emptyList() : list));
        }
    }

    protected List<AccelerationEvent> getAccelerationData() {
        LinkedList linkedList;
        synchronized (this.mAccelerationEventQueueLock) {
            linkedList = new LinkedList(this.mAccelerationEventQueue);
        }
        return linkedList;
    }

    protected List<AccelerationEvent> getImpactAccelerationEvents() {
        return this.mImpactAccelerationEvents;
    }

    protected DeviceInfo getImpactDevice() {
        return this.mImpactDevice;
    }

    protected long getIntensityXY(AccelerationEvent accelerationEvent) {
        return (long) (Math.pow(accelerationEvent.getX(), 2.0d) + Math.pow(accelerationEvent.getY(), 2.0d));
    }

    protected Long getImpactTime() {
        return this.mImpactTime;
    }

    protected Long getImpactIntensity() {
        return this.mImpactIntensity;
    }

    protected DeviceInfo getLastConnectedDevice() {
        return this.mLastConnectedDevice;
    }

    protected Sensor getSensorGameRotationVector(SensorManager sensorManager) {
        if (Build.VERSION.SDK_INT < 18) {
            return null;
        }
        return sensorManager.getDefaultSensor(15);
    }

    protected Sensor getSensorLinearAcceleration(SensorManager sensorManager) {
        Sensor defaultSensor = sensorManager.getDefaultSensor(10);
        if (defaultSensor == null) {
            return null;
        }
        if (Math.pow((defaultSensor.getMaximumRange() / 9.80665f) * 1000000.0f, 2.0d) > LINEAR_ACCELERATION_THRESHOLD_UG) {
            return defaultSensor;
        }
        Timber.w("Sensor discarded due to invalid resolution.", new Object[0]);
        return null;
    }

    protected SensorManager getSensorManager() {
        return this.mSensorManager;
    }

    protected int getUsFromFrequency(int i) {
        return Math.round(1000000.0f / i);
    }

    protected boolean hasSensorGameRotationVector() {
        return this.mSensorGameRotationVector != null;
    }

    protected boolean hasSensorLinearAcceleration() {
        return this.mSensorLinearAcceleration != null;
    }

    protected boolean isBluetoothSupported() {
        return CommunicationStatus.NOT_SUPPORTED != this.mCommunication.getStatus();
    }

    protected boolean isImpactDetected() {
        return this.mImpactTime != null;
    }

    protected boolean isListeningOnAccelerationEvents() {
        return this.mSensorLinearAccelerationListener != null;
    }

    protected boolean isListeningOnCommunicationStatusChanges() {
        return this.mCommunicationListener != null;
    }

    protected void listenForLinearAccelerationSensorEvents(SensorManager sensorManager, int i) {
        if (sensorManager != null) {
            unregisterSensorLinearAccelerationEventListener(sensorManager);
            SensorEventListener sensorEventListenerCreateSensorEventListener = createSensorEventListener(this.mSensorLinearAcceleration);
            this.mSensorLinearAccelerationListener = sensorEventListenerCreateSensorEventListener;
            if (sensorEventListenerCreateSensorEventListener != null) {
                registerListener(sensorManager, this.mSensorLinearAcceleration, sensorEventListenerCreateSensorEventListener, i);
            }
        }
    }

    protected void listenForGameRotationVectorSensorEvents(SensorManager sensorManager, int i) {
        if (sensorManager != null) {
            unregisterSensorGameRotationVectorEventListener(sensorManager);
            SensorEventListener sensorEventListenerCreateSensorEventListener = createSensorEventListener(this.mSensorGameRotationVector);
            this.mSensorGameRotationVectorListener = sensorEventListenerCreateSensorEventListener;
            if (sensorEventListenerCreateSensorEventListener != null) {
                registerListener(sensorManager, this.mSensorGameRotationVector, sensorEventListenerCreateSensorEventListener, i);
            }
        }
    }

    protected void listenForSensorsEvents(SensorManager sensorManager, int i) {
        listenForGameRotationVectorSensorEvents(sensorManager, i);
        listenForLinearAccelerationSensorEvents(sensorManager, i);
    }

    protected void listenOnCommunicationStatusChanges(Communication communication) {
        stopListenOnCommunicationStatusChanges(communication);
        this.mCommunicationListener = new PropertyChangeListener() { // from class: com.texa.careapp.impactdetection.ImpactDetector.1
            @Override // java.beans.PropertyChangeListener
            public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                Communication communication2 = (Communication) propertyChangeEvent.getSource();
                if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
                    ImpactDetector.this.onCommunicationStatusChanged(communication2.getStatus(), communication2.getCurrentDevice());
                }
            }
        };
        Timber.d("listenOnCommunicationStatusChanges()", new Object[0]);
        communication.addPropertyChangeListener(this.mCommunicationListener);
        onCommunicationStatusChanged(communication.getStatus(), communication.getCurrentDevice());
    }

    protected void onAccelerationEvent(AccelerationEvent accelerationEvent) {
        this.mRotationMatrixLock.readLock().lock();
        try {
            float[] fArr = this.mRotationMatrix;
            if (fArr == null) {
                return;
            }
            accelerationEvent.alignZAxis(fArr);
            long intensityXY = getIntensityXY(accelerationEvent);
            synchronized (this.mAccelerationEventQueueLock) {
                this.mAccelerationEventQueue.add(accelerationEvent);
            }
            boolean z = intensityXY >= LINEAR_ACCELERATION_THRESHOLD_UG;
            if (isImpactDetected()) {
                if (getImpactIntensity() == null || intensityXY > getImpactIntensity().longValue()) {
                    setImpactIntensity(Long.valueOf(intensityXY));
                    return;
                }
                return;
            }
            if (z) {
                onAccelerationEventOverThresholdDetected(accelerationEvent);
            } else {
                setImpactIntensity(null);
            }
        } finally {
            this.mRotationMatrixLock.readLock().unlock();
        }
    }

    protected void onRotationMatrixChanged(RotationMatrixChangedEvent rotationMatrixChangedEvent) {
        this.mRotationMatrixLock.writeLock().lock();
        try {
            this.mRotationMatrix = rotationMatrixChangedEvent.getRotationMatrix();
        } finally {
            this.mRotationMatrixLock.writeLock().unlock();
        }
    }

    protected boolean isValidImpactEvent() {
        synchronized (this.mAccelerationEventQueueLock) {
            Iterator<AccelerationEvent> itDescendingIterator = this.mAccelerationEventQueue.descendingIterator();
            if (itDescendingIterator.hasNext()) {
                AccelerationEvent next = itDescendingIterator.next();
                while (itDescendingIterator.hasNext()) {
                    AccelerationEvent next2 = itDescendingIterator.next();
                    if (getIntensityXY(next2) < LINEAR_ACCELERATION_THRESHOLD_UG) {
                        return false;
                    }
                    if (next.getTimeInMillis() - next2.getTimeInMillis() >= TIME_AFTER_FIRST_SAMPLE_OVER_THRESHOLD) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    protected void onAccelerationEventOverThresholdDetected(AccelerationEvent accelerationEvent) {
        if (isValidImpactEvent()) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(accelerationEvent.getTimeInMillis());
            Timber.d("Detected valid consecutive accelerations over threshold at %1$s(%2$d)! Start validation procedure...", calendar.getTime(), Long.valueOf(calendar.getTimeInMillis()));
            try {
                validateCommunicationStatus(this.mCommunication, this.mTimeLastDisconnection, Calendar.getInstance().getTimeInMillis());
                setImpactIntensity(Long.valueOf(getIntensityXY(accelerationEvent)));
                setImpactTime(Long.valueOf(accelerationEvent.getTimeInMillis()));
                setImpactDevice(getLastConnectedDevice());
                cacheImpactDataDelayed(10000L);
                checkCommunicationStatusDelayed(2, 20000L);
            } catch (IllegalStateException e) {
                Timber.w(e, "Impact discarded.", new Object[0]);
                discardLastImpact();
            }
        }
    }

    protected void onBluetoothDisabled() {
        if (isImpactDetected()) {
            Timber.w("Discarding impact: Bluetooth has turned off by user.", new Object[0]);
            try {
                fireImpactDetected(2, this.mSensorLinearAcceleration.getType(), this.mImpactDevice, this.mTimeLastDisconnection, this.mImpactIntensity, this.mImpactTime, this.mImpactAccelerationEvents);
            } finally {
                discardLastImpact();
            }
        }
        stopListenOnSensorsEvents(getSensorManager());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCacheImpactData() {
        Timber.d("onCacheImpactData()", new Object[0]);
        synchronized (this.mAccelerationEventQueueLock) {
            this.mImpactAccelerationEvents = new LinkedList<>(this.mAccelerationEventQueue);
        }
    }

    protected void onCAReConnected(DeviceInfo deviceInfo, DeviceInfo deviceInfo2) {
        if (deviceInfo2 == null || deviceInfo.getAddress().equals(deviceInfo2.getAddress())) {
            if (isImpactDetected()) {
                Timber.w("Impact discarded due to reconnection to the same device.", new Object[0]);
                discardLastImpact();
            }
            deleteAllScheduledTasks();
        }
        setLastConnectedDevice(deviceInfo);
        if (isSupported()) {
            listenForSensorsEvents(this.mSensorManager, 50);
        }
    }

    protected void onCAReDisconnected() {
        setTimeLastDisconnection(Long.valueOf(Calendar.getInstance().getTimeInMillis()));
        if (isImpactDetected()) {
            return;
        }
        stopListenOnSensorsEventsDelayed(getSensorManager(), 10000L);
    }

    protected void onCheckCommunicationStatus1() {
        Timber.d("onCheckCommunicationStatus1() %s", this.mCommunication.getStatus());
        int i = AnonymousClass2.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[this.mCommunication.getStatus().ordinal()];
        if (i == 1 || i == 2) {
            stopListenOnSensorsEvents(getSensorManager());
            if (isImpactDetected()) {
                Timber.w("Impact discarded due to invalid communication state.", new Object[0]);
                try {
                    fireImpactDetected(2, this.mSensorLinearAcceleration.getType(), this.mImpactDevice, this.mTimeLastDisconnection, this.mImpactIntensity, this.mImpactTime, this.mImpactAccelerationEvents);
                    return;
                } finally {
                }
            }
            return;
        }
        if (i == 3) {
            if (isImpactDetected()) {
                Timber.w("Impact discarded due to invalid communication state.", new Object[0]);
                try {
                    fireImpactDetected(2, this.mSensorLinearAcceleration.getType(), this.mImpactDevice, this.mTimeLastDisconnection, this.mImpactIntensity, this.mImpactTime, this.mImpactAccelerationEvents);
                    return;
                } finally {
                }
            }
            return;
        }
        checkCommunicationStatusDelayed(3, 20000L);
    }

    /* JADX INFO: renamed from: com.texa.careapp.impactdetection.ImpactDetector$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTION_LOST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected void onCheckCommunicationStatus2() {
        Timber.d("onCheckCommunicationStatus2() %s", this.mCommunication.getStatus());
        int i = AnonymousClass2.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[this.mCommunication.getStatus().ordinal()];
        if (i == 1 || i == 2) {
            stopListenOnSensorsEvents(getSensorManager());
            Timber.w("Discarding impact due to BluetoothState: %s", this.mCommunication.getStatus());
            try {
                fireImpactDetected(2, this.mSensorLinearAcceleration.getType(), this.mImpactDevice, this.mTimeLastDisconnection, this.mImpactIntensity, this.mImpactTime, this.mImpactAccelerationEvents);
                return;
            } finally {
            }
        }
        if (isImpactDetected()) {
            if (this.mImpactDevice == null) {
                throw new IllegalStateException("Impact device cannot be null at this time!");
            }
            stopListenOnSensorsEvents(getSensorManager());
            try {
                fireImpactDetected(1, this.mSensorLinearAcceleration.getType(), this.mImpactDevice, this.mTimeLastDisconnection, getImpactIntensity(), this.mImpactTime, this.mImpactAccelerationEvents);
            } finally {
            }
        }
    }

    protected void onCommunicationStatusChanged(CommunicationStatus communicationStatus, DeviceInfo deviceInfo) {
        Timber.d("Communication status: Status=%1$s Device=%2$s", communicationStatus, deviceInfo);
        int i = AnonymousClass2.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatus.ordinal()];
        if (i == 1) {
            onBluetoothDisabled();
            return;
        }
        if (i != 3) {
            if (i == 4 || i == 5) {
                onCAReDisconnected();
                return;
            }
            return;
        }
        if (deviceInfo != null) {
            onCAReConnected(deviceInfo, getLastConnectedDevice());
        } else {
            Timber.wtf("Could not be connected to a null device!", new Object[0]);
        }
    }

    protected void onStopListenOnSensorsEvents() {
        if (isImpactDetected()) {
            return;
        }
        stopListenOnSensorsEvents(getSensorManager());
    }

    protected void registerListener(SensorManager sensorManager, Sensor sensor, SensorEventListener sensorEventListener, int i) {
        int usFromFrequency = getUsFromFrequency(i);
        if (Build.VERSION.SDK_INT >= 19) {
            sensorManager.registerListener(sensorEventListener, sensor, usFromFrequency, usFromFrequency);
        } else {
            sensorManager.registerListener(sensorEventListener, sensor, usFromFrequency);
        }
    }

    protected void setImpactTime(Long l) {
        this.mImpactTime = l;
    }

    protected void setImpactIntensity(Long l) {
        this.mImpactIntensity = l;
    }

    protected void setImpactDevice(DeviceInfo deviceInfo) {
        this.mImpactDevice = deviceInfo;
    }

    protected void setLastConnectedDevice(DeviceInfo deviceInfo) {
        this.mLastConnectedDevice = deviceInfo;
    }

    protected void setTimeLastDisconnection(Long l) {
        this.mTimeLastDisconnection = l;
    }

    protected void unregisterSensorListener(SensorManager sensorManager, SensorEventListener sensorEventListener) {
        if (sensorManager == null || sensorEventListener == null) {
            return;
        }
        sensorManager.unregisterListener(sensorEventListener);
    }

    protected void unregisterSensorGameRotationVectorEventListener(SensorManager sensorManager) {
        unregisterSensorListener(sensorManager, this.mSensorGameRotationVectorListener);
        this.mSensorGameRotationVectorListener = null;
    }

    protected void unregisterSensorLinearAccelerationEventListener(SensorManager sensorManager) {
        unregisterSensorListener(sensorManager, this.mSensorLinearAccelerationListener);
        this.mSensorLinearAccelerationListener = null;
    }

    protected void stopListenOnSensorsEvents(SensorManager sensorManager) {
        unregisterSensorGameRotationVectorEventListener(sensorManager);
        unregisterSensorLinearAccelerationEventListener(sensorManager);
    }

    protected void stopListenOnSensorsEventsDelayed(SensorManager sensorManager, long j) {
        if (this.mHandler.sendEmptyMessageDelayed(1, j)) {
            return;
        }
        stopListenOnSensorsEvents(sensorManager);
    }

    protected void stopListenOnCommunicationStatusChanges(Communication communication) {
        Timber.d("stopListenOnCommunicationStatusChanges()", new Object[0]);
        PropertyChangeListener propertyChangeListener = this.mCommunicationListener;
        if (propertyChangeListener != null) {
            communication.removePropertyChangeListener(propertyChangeListener);
            this.mCommunicationListener = null;
        }
    }

    protected void validateCommunicationStatus(Communication communication, Long l, long j) {
        if (CommunicationStatus.CONNECTED == communication.getStatus()) {
            return;
        }
        if (l == null || j - l.longValue() >= 10000) {
            throw new IllegalStateException("CARe is not connected.");
        }
    }

    static class MyHandler extends Handler {
        private final WeakReference<ImpactDetector> mImpactDetector;

        public MyHandler(WeakReference<ImpactDetector> weakReference) {
            this.mImpactDetector = weakReference;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 1) {
                if (this.mImpactDetector.get() != null) {
                    this.mImpactDetector.get().onStopListenOnSensorsEvents();
                }
            } else if (i == 2) {
                if (this.mImpactDetector.get() != null) {
                    this.mImpactDetector.get().onCheckCommunicationStatus1();
                }
            } else if (i == 3) {
                if (this.mImpactDetector.get() != null) {
                    this.mImpactDetector.get().onCheckCommunicationStatus2();
                }
            } else if (i == 4 && this.mImpactDetector.get() != null) {
                this.mImpactDetector.get().onCacheImpactData();
            }
        }
    }

    static class GameRotationVectorSensorEventListener implements SensorEventListener {
        private final WeakReference<ImpactDetector> mImpactDetector;

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        GameRotationVectorSensorEventListener(WeakReference<ImpactDetector> weakReference) {
            this.mImpactDetector = weakReference;
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (this.mImpactDetector.get() != null) {
                float[] fArr = new float[16];
                SensorManager.getRotationMatrixFromVector(fArr, sensorEvent.values);
                this.mImpactDetector.get().onRotationMatrixChanged(new RotationMatrixChangedEvent(sensorEvent.sensor, fArr));
            }
        }
    }

    static class LinearAccelerationSensorEventListener implements SensorEventListener {
        private final WeakReference<ImpactDetector> mImpactDetector;

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        LinearAccelerationSensorEventListener(WeakReference<ImpactDetector> weakReference) {
            this.mImpactDetector = weakReference;
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (this.mImpactDetector.get() != null) {
                this.mImpactDetector.get().onAccelerationEvent(new AccelerationEvent(sensorEvent.sensor, sensorEvent.accuracy, Calendar.getInstance().getTimeInMillis(), ImpactDetector.convertFromAccelerationToUg(sensorEvent.values[0]), ImpactDetector.convertFromAccelerationToUg(sensorEvent.values[1]), ImpactDetector.convertFromAccelerationToUg(sensorEvent.values[2])));
            }
        }
    }

    static class AccelerationEventQueue extends LinkedList<AccelerationEvent> {
        final long mQueueTimePeriodInMilliseconds;

        public AccelerationEventQueue(long j) {
            this.mQueueTimePeriodInMilliseconds = j;
        }

        @Override // java.util.LinkedList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Deque, java.util.Queue
        public boolean add(AccelerationEvent accelerationEvent) {
            boolean zAdd = super.add(accelerationEvent);
            while (accelerationEvent.getTimeInMillis() - peekFirst().getTimeInMillis() >= this.mQueueTimePeriodInMilliseconds) {
                pollFirst();
            }
            return zAdd;
        }
    }
}
