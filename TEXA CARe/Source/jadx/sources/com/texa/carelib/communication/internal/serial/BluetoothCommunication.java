package com.texa.carelib.communication.internal.serial;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import com.texa.carelib.android.PermissionUtils;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceFilter;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.communication.KnownDeviceHistory;
import com.texa.carelib.communication.internal.BluetoothAdapterSupport;
import com.texa.carelib.communication.internal.BluetoothDeviceCompat;
import com.texa.carelib.communication.internal.BluetoothSocketConnector;
import com.texa.carelib.communication.internal.CommunicationBase;
import com.texa.carelib.communication.internal.DeviceReconnectionServiceCallback;
import com.texa.carelib.communication.internal.DeviceScannerCallback;
import com.texa.carelib.communication.internal.SerialDeviceReconnectionService;
import com.texa.carelib.communication.internal.SerialDeviceScanner;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.UUIDHelper;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.core.utils.internal.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothCommunication extends CommunicationBase {
    private static final long DEFAULT_MAX_CONNECTION_INTERVAL = 30000;
    static final boolean DEFAULT_USE_FALLBACK_SOCKET = true;
    static final boolean DEFAULT_USE_SECURE_SOCKET = true;
    private static final int SLEEP_CONNECTION_ERROR_TIME = 5000;
    private final BluetoothDeviceFactory mBluetoothDeviceFactory;
    private BluetoothSocket mBluetoothSocket;
    private BluetoothStateBroadcastReceiver mBluetoothStateBroadcastReceiver;
    private ConnectAsyncTask mConnectAsyncTask;
    private final Context mContext;
    private DeviceFilter mDeviceFilter;
    private SerialDeviceReconnectionService mDeviceReconnectionService;
    private final Map<String, DeviceInfo> mDevices;
    private KnownDeviceHistory mExtKnownDeviceHistory;
    private volatile boolean mIsConnectionLost;
    private final KnownDeviceHistory mKnownDeviceHistory;
    private final SlaveReconnectionController mSlaveReconnectionController;
    public static final UUID SPP_UUID = UUIDHelper.fromString("00001101-0000-1000-8000-00805F9B34FB");
    private static final ScheduledExecutorService mConnectExecutor = Executors.newSingleThreadScheduledExecutor();
    static final String TAG = "BluetoothCommunication";
    private final DeviceScannerCallback mDeviceScannerCallback = new DeviceScannerCallback() { // from class: com.texa.carelib.communication.internal.serial.BluetoothCommunication.2
        @Override // com.texa.carelib.communication.internal.DeviceScannerCallback
        public void onDeviceNameChanged(BluetoothDevice bluetoothDevice) {
            super.onDeviceNameChanged(bluetoothDevice);
            if (BluetoothCommunication.this.isConnected() || CommunicationStatus.SCANNING != BluetoothCommunication.this.getStatus()) {
                return;
            }
            DeviceInfo deviceInfo = (DeviceInfo) BluetoothCommunication.this.mDevices.get(bluetoothDevice.getAddress());
            int deviceType = BluetoothDeviceCompat.getDeviceType(bluetoothDevice);
            if (deviceInfo != null) {
                DeviceInfo.Builder builder = deviceInfo.builder();
                boolean z = false;
                if (!StringUtils.isNullOrEmpty(bluetoothDevice.getName()) && !StringUtils.equals(deviceInfo.getName(), bluetoothDevice.getName())) {
                    z = true;
                    builder.setName(bluetoothDevice.getName());
                }
                if (!Utils.equals(Integer.valueOf(deviceType), Integer.valueOf(deviceInfo.getType()))) {
                    builder.setType(deviceType);
                }
                if (z) {
                    BluetoothCommunication.this.fireDeviceNameChanged(builder.build());
                    return;
                }
                return;
            }
            DeviceInfo deviceInfo2 = new DeviceInfo(bluetoothDevice);
            BluetoothCommunication.this.mDevices.put(bluetoothDevice.getAddress(), deviceInfo2);
            BluetoothCommunication.this.fireDeviceFound(deviceInfo2);
        }

        @Override // com.texa.carelib.communication.internal.DeviceScannerCallback
        public void onDeviceFound(BluetoothDevice bluetoothDevice, Integer num) {
            DeviceInfo.Builder type;
            super.onDeviceFound(bluetoothDevice, num);
            if (BluetoothCommunication.this.isConnected() || CommunicationStatus.SCANNING != BluetoothCommunication.this.getStatus()) {
                return;
            }
            boolean z = false;
            DeviceInfo deviceInfo = (DeviceInfo) BluetoothCommunication.this.mDevices.get(bluetoothDevice.getAddress());
            int deviceType = BluetoothDeviceCompat.getDeviceType(bluetoothDevice);
            boolean z2 = true;
            if (deviceInfo != null) {
                type = deviceInfo.builder();
                if (num != null && !Utils.equals(num, deviceInfo.getRSSI())) {
                    type.setRSSI(num);
                    z = true;
                }
                if (Utils.equals(Integer.valueOf(deviceType), Integer.valueOf(deviceInfo.getType()))) {
                    z2 = z;
                } else {
                    type.setType(deviceType);
                }
            } else {
                type = new DeviceInfo.Builder(bluetoothDevice).setRSSI(num).setType(deviceType);
            }
            if (z2) {
                DeviceInfo deviceInfoBuild = type.build();
                BluetoothCommunication.this.mDevices.put(deviceInfoBuild.getAddress(), deviceInfoBuild);
                BluetoothCommunication.this.fireDeviceFound(deviceInfoBuild);
            }
        }

        @Override // com.texa.carelib.communication.internal.DeviceScannerCallback
        public void onScanStarted() {
            super.onScanStarted();
            if (BluetoothCommunication.this.isConnected()) {
                return;
            }
            BluetoothCommunication.this.setStatus(CommunicationStatus.SCANNING);
        }

        @Override // com.texa.carelib.communication.internal.DeviceScannerCallback
        public void onScanFinished() {
            super.onScanFinished();
            if (BluetoothCommunication.this.isConnected() || CommunicationStatus.SCANNING != BluetoothCommunication.this.getStatus()) {
                return;
            }
            BluetoothCommunication.this.setStatus(CommunicationStatus.SCANNING_FINISHED);
            BluetoothCommunication.this.setStatus(CommunicationStatus.IDLE);
        }
    };
    private SerialDeviceScanner mDeviceScanner = new SerialDeviceScanner();

    boolean isBluetoothSupported(BluetoothAdapter bluetoothAdapter) {
        return bluetoothAdapter != null;
    }

    public BluetoothCommunication(Context context, KnownDeviceHistory knownDeviceHistory) {
        this.mContext = context;
        this.mKnownDeviceHistory = knownDeviceHistory;
        SerialDeviceReconnectionService serialDeviceReconnectionService = new SerialDeviceReconnectionService(this);
        this.mDeviceReconnectionService = serialDeviceReconnectionService;
        serialDeviceReconnectionService.setCallback(new DeviceReconnectionServiceCallback() { // from class: com.texa.carelib.communication.internal.serial.BluetoothCommunication.1
            @Override // com.texa.carelib.communication.internal.DeviceReconnectionServiceCallback
            public void onReconnectionStart() {
                if (BluetoothCommunication.this.isConnected()) {
                    return;
                }
                BluetoothCommunication.this.setStatus(CommunicationStatus.RECONNECTING);
            }

            @Override // com.texa.carelib.communication.internal.DeviceReconnectionServiceCallback
            public void onReconnectionStop() {
                if (CommunicationStatus.RECONNECTING == BluetoothCommunication.this.getStatus()) {
                    BluetoothCommunication.this.setStatus(CommunicationStatus.IDLE);
                }
            }

            @Override // com.texa.carelib.communication.internal.DeviceReconnectionServiceCallback
            public void onSocketReady(BluetoothSocket bluetoothSocket) {
                BluetoothCommunication.this.onSocketConnected(bluetoothSocket);
            }

            @Override // com.texa.carelib.communication.internal.DeviceReconnectionServiceCallback
            public void onReconnectionFails(Throwable th) {
                if (CommunicationStatus.RECONNECTING == BluetoothCommunication.this.getStatus()) {
                    BluetoothCommunication.this.setStatus(CommunicationStatus.IDLE);
                }
            }
        });
        this.mBluetoothDeviceFactory = new BluetoothDeviceFactory(this);
        this.mDevices = new HashMap();
        this.mSlaveReconnectionController = new SlaveReconnectionController();
        this.mIsConnectionLost = false;
        initSocketConnectionMode(Build.VERSION.SDK_INT);
        registerBluetoothStateBroadcastReceiver(context);
        start();
    }

    @Override // com.texa.carelib.communication.Communication
    public boolean isConnected() {
        return isConnected(this.mBluetoothSocket);
    }

    @Override // com.texa.carelib.communication.Communication
    public Object getRemote() {
        return this.mBluetoothSocket;
    }

    @Override // com.texa.carelib.communication.Communication
    public void removeBond(String str) throws CareLibException {
        BluetoothAdapter bluetoothAdapterCreate = BluetoothAdapterFactory.create();
        if (bluetoothAdapterCreate == null) {
            throw new CareLibException("BluetoothAdapter is null.");
        }
        BluetoothDevice remoteDevice = bluetoothAdapterCreate.getRemoteDevice(str);
        if (remoteDevice != null) {
            CareLog.d(TAG, "Trying to remove the bond for the device: %1$s...", str);
            try {
                remoteDevice.getClass().getMethod("removeBond", (Class[]) null).invoke(remoteDevice, (Object[]) null);
                fireDeviceBondStateChanged(new DeviceInfo(remoteDevice));
            } catch (Exception e) {
                throw new CareLibException("Cannot remove device bond.", e);
            }
        }
    }

    @Override // com.texa.carelib.communication.Communication
    public void setDeviceFilter(DeviceFilter deviceFilter) {
        this.mDeviceFilter = deviceFilter;
        this.mDeviceScanner.setFilter(deviceFilter);
    }

    @Override // com.texa.carelib.communication.Communication
    public void stopReconnect() throws CareLibException {
        CareLog.i(TAG, "stopReconnect()", new Object[0]);
        this.mDeviceReconnectionService.stopReconnection(this.mContext);
    }

    public boolean isFallBackSocketEnabled() {
        return getArguments().getBoolean(Communication.EXTRA_USE_FALLBACK_SOCKET, true);
    }

    public boolean isSecureSocketEnabled() {
        return getArguments().getBoolean(Communication.EXTRA_USE_SECURE_SOCKET, true);
    }

    boolean isBluetoothEnabled(BluetoothAdapter bluetoothAdapter) {
        return bluetoothAdapter != null && bluetoothAdapter.isEnabled();
    }

    private boolean isScanning() {
        return CommunicationStatus.SCANNING == getStatus();
    }

    @Override // com.texa.carelib.communication.Communication
    public void reconnect() throws CareLibException {
        reconnectToDevices(getKnownDeviceHistory().getItems());
    }

    @Override // com.texa.carelib.communication.Communication
    public void reconnectToDevices(List<DeviceInfo> list) throws CareLibException {
        CommunicationStatus status = getStatus();
        if (status != CommunicationStatus.IDLE && status != CommunicationStatus.SCANNING) {
            throw new CareLibException(String.format("Could not reconnect at this moment. Wrong state: %1$s", status));
        }
        if (isConnected()) {
            throw new CareLibException("Could not reconnect at this moment. Connection is already established.");
        }
        if (list.isEmpty()) {
            throw new CareLibException("Cannot start reconnection procedure with an empty device list.");
        }
        BluetoothAdapter bluetoothAdapterCreate = BluetoothAdapterFactory.create();
        if (!isBluetoothSupported(bluetoothAdapterCreate)) {
            CareLog.wtf(TAG, "Could not reconnect at this moment. Bluetooth is not supported.", new Object[0]);
            setStatus(CommunicationStatus.NOT_SUPPORTED);
            throw new CareLibException("Bluetooth technology is not supported by the device.");
        }
        if (!isBluetoothEnabled(bluetoothAdapterCreate)) {
            CareLog.w(TAG, "Could not reconnect at this moment. Bluetooth is not active.", new Object[0]);
            setStatus(CommunicationStatus.NO_MEDIUM_ACTIVE);
            throw new CareLibException("Bluetooth radio state is off.");
        }
        if (CommunicationStatus.SCANNING == status) {
            this.mDeviceScanner.stopScan(getCommunicationDelegate().getApplicationContext());
        }
        CareLog.d(TAG, "reconnect procedure to provided devices begins...", new Object[0]);
        if (!this.mDeviceReconnectionService.reconnectToDevices(this.mContext, list)) {
            throw new CareLibException("Could not reconnect at this moment.");
        }
    }

    @Override // com.texa.carelib.communication.Communication
    public void connect(DeviceInfo deviceInfo) throws CareLibException {
        internalConnect(BluetoothAdapterFactory.create(), deviceInfo, isEndLessConnection());
    }

    void internalConnect(BluetoothAdapter bluetoothAdapter, DeviceInfo deviceInfo, boolean z) throws CareLibException {
        if (!isBluetoothSupported(bluetoothAdapter)) {
            setStatus(CommunicationStatus.NOT_SUPPORTED);
            throw new CareLibException("Could not connect. Smartphone does not support bluetooth technology.");
        }
        if (!isBluetoothEnabled(bluetoothAdapter)) {
            setStatus(CommunicationStatus.NO_MEDIUM_ACTIVE);
            throw new CareLibException("Could not connect. Bluetooth is turned off.");
        }
        if (StringUtils.isNullOrEmpty(deviceInfo.getAddress())) {
            throw new CareLibException("Could not connect. Device address cannot be null or empty.");
        }
        if (isConnected() || CommunicationStatus.CONNECTED == getStatus()) {
            throw new CareLibException("Could not connect. Another dongle is already connected!");
        }
        if (CommunicationStatus.CONNECTING == getStatus()) {
            throw new CareLibException("Operation is already in progress!");
        }
        if (this.mConnectAsyncTask != null && AsyncTask.Status.PENDING == this.mConnectAsyncTask.getStatus()) {
            throw new CareLibException("Operation is already in progress!");
        }
        CareLog.d(TAG, "Trying to connect to: %s(%s)", deviceInfo.getName(), deviceInfo.getAddress());
        setCurrentDevice(deviceInfo);
        setStatus(CommunicationStatus.CONNECTING);
        ConnectAsyncTask connectAsyncTask = new ConnectAsyncTask(deviceInfo.getAddress(), getMaxConnectionInterval(), z, isSecureSocketEnabled(), isFallBackSocketEnabled());
        this.mConnectAsyncTask = connectAsyncTask;
        connectAsyncTask.executeOnExecutor(mConnectExecutor, new Void[0]);
    }

    protected boolean isConnected(BluetoothSocket bluetoothSocket) {
        return bluetoothSocket != null && bluetoothSocket.isConnected();
    }

    void onSocketConnected(BluetoothSocket bluetoothSocket) {
        DeviceInfo deviceInfo;
        BluetoothDevice remoteDevice;
        String str = TAG;
        CareLog.d(str, "onSocketConnected", new Object[0]);
        this.mBluetoothSocket = bluetoothSocket;
        if (bluetoothSocket.getRemoteDevice().getName() != null && !"CARE".equalsIgnoreCase(bluetoothSocket.getRemoteDevice().getName())) {
            deviceInfo = new DeviceInfo(bluetoothSocket.getRemoteDevice());
        } else {
            BluetoothAdapter bluetoothAdapterCreate = BluetoothAdapterFactory.create();
            deviceInfo = (bluetoothAdapterCreate == null || (remoteDevice = bluetoothAdapterCreate.getRemoteDevice(bluetoothSocket.getRemoteDevice().getAddress())) == null) ? null : new DeviceInfo(remoteDevice);
        }
        if (deviceInfo != null) {
            setCurrentDevice(deviceInfo);
            getKnownDeviceHistory().add(deviceInfo);
        }
        CareLog.v(str, "Device added to device history collection.", new Object[0]);
        setStatus(CommunicationStatus.CONNECTED);
        CareLog.i(str, "Connected!", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectionFailed() {
        setStatus(CommunicationStatus.CONNECTION_FAILED);
        setCurrentDevice(null);
        start();
    }

    @Override // com.texa.carelib.communication.Communication
    public void disconnect() throws CareLibException {
        CareLog.d(TAG, "disconnect bt comm", new Object[0]);
        if (CommunicationStatus.RECONNECTING == getStatus()) {
            stopReconnect();
        } else if (CommunicationStatus.CONNECTED == getStatus()) {
            setStatus(CommunicationStatus.DISCONNECTING);
            if (_disconnect()) {
                resetThreads();
            }
        }
    }

    @Override // com.texa.carelib.communication.Communication
    public void startScan() throws CareLibException {
        CareLog.i(TAG, "startScan()", new Object[0]);
        if (PermissionUtils.checkSelfPermission(getCommunicationDelegate().getApplicationContext(), "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            throw new SecurityException("Permission denied (missing android.permission.ACCESS_COARSE_LOCATION permission?)");
        }
        this.mDevices.clear();
        this.mDeviceScanner.setCallback(this.mDeviceScannerCallback);
        if (!this.mDeviceScanner.startScan(getCommunicationDelegate().getApplicationContext())) {
            throw new CareLibException("Could not start scan at this moment.");
        }
    }

    @Override // com.texa.carelib.communication.Communication
    public void stopScan() throws CareLibException {
        CareLog.i(TAG, "stopScan()", new Object[0]);
        if (CommunicationStatus.NOT_SUPPORTED != getStatus() && !this.mDeviceScanner.stopScan(getCommunicationDelegate().getApplicationContext())) {
            throw new CareLibException("Could not stop scan at this moment.");
        }
    }

    @Override // com.texa.carelib.communication.Communication
    public List<DeviceInfo> getDevices() {
        CareLog.d(TAG, "getDevices()", new Object[0]);
        return new ArrayList(this.mDevices.values());
    }

    @Override // com.texa.carelib.communication.Communication
    public List<DeviceInfo> getKnownDevices() {
        return new ArrayList(getKnownDeviceHistory().getItems());
    }

    protected void finalize() throws Throwable {
        super.finalize();
        shutdown();
    }

    @Override // com.texa.carelib.communication.Communication
    public void shutdown() throws CareLibException {
        unregisterBluetoothStateBroadcastReceiver(this.mContext);
        stopReconnect();
        disconnect();
    }

    @Override // com.texa.carelib.communication.Communication
    public void forgetKnownDevices() {
        getKnownDeviceHistory().clear();
    }

    @Override // com.texa.carelib.communication.Communication
    public void stop() throws CareLibException {
        if (isScanning()) {
            stopScan();
        } else {
            _disconnect();
        }
    }

    @Override // com.texa.carelib.communication.Communication
    public void setKnownDeviceHistory(KnownDeviceHistory knownDeviceHistory) {
        if (CommunicationStatus.RECONNECTING == getStatus()) {
            throw new IllegalStateException("Cannot change the known device history.");
        }
        this.mExtKnownDeviceHistory = knownDeviceHistory;
    }

    public static void closeSocket(BluetoothSocket bluetoothSocket) {
        String str = TAG;
        CareLog.d(str, "Closing socket.", new Object[0]);
        if (bluetoothSocket == null || !bluetoothSocket.isConnected()) {
            return;
        }
        try {
            bluetoothSocket.close();
            CareLog.d(str, "Socket closed.", new Object[0]);
        } catch (IOException e) {
            CareLog.e(TAG, e, "Close socket IOException.", new Object[0]);
        }
    }

    void initSocketConnectionMode(int i) {
        if (i == 15 || i == 16) {
            getArguments().putBoolean(Communication.EXTRA_USE_SECURE_SOCKET, false);
        } else {
            getArguments().putBoolean(Communication.EXTRA_USE_SECURE_SOCKET, true);
        }
    }

    private boolean _disconnect() {
        closeSocket(this.mBluetoothSocket);
        return true;
    }

    private KnownDeviceHistory getKnownDeviceHistory() {
        KnownDeviceHistory knownDeviceHistory = this.mExtKnownDeviceHistory;
        return knownDeviceHistory == null ? this.mKnownDeviceHistory : knownDeviceHistory;
    }

    private long getMaxConnectionInterval() {
        long j = getArguments().getLong(Communication.EXTRA_MAX_CONNECTION_INTERVAL, 30000L);
        if (j < 0) {
            return 0L;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectionLost(BluetoothAdapter bluetoothAdapter) {
        String str = TAG;
        CareLog.d(str, "connectionLost detected!", new Object[0]);
        this.mIsConnectionLost = true;
        this.mBluetoothSocket = null;
        setStatus(CommunicationStatus.CONNECTION_LOST);
        resetConnectThread();
        if (!isBluetoothSupported(bluetoothAdapter)) {
            setStatus(CommunicationStatus.NOT_SUPPORTED);
            return;
        }
        if (!isBluetoothEnabled(bluetoothAdapter)) {
            setStatus(CommunicationStatus.NO_MEDIUM_ACTIVE);
            return;
        }
        boolean zIsAutoReconnectOnCommunicationLostEnabled = isAutoReconnectOnCommunicationLostEnabled();
        CareLog.d(str, "Is auto-reconnect on connection lost enabled? %b", Boolean.valueOf(zIsAutoReconnectOnCommunicationLostEnabled));
        DeviceInfo currentDevice = getCurrentDevice();
        if (zIsAutoReconnectOnCommunicationLostEnabled && currentDevice != null) {
            setCurrentDevice(null);
            try {
                internalConnect(bluetoothAdapter, currentDevice, true);
                return;
            } catch (CareLibException unused) {
                setStatus(CommunicationStatus.IDLE);
                return;
            }
        }
        setStatus(CommunicationStatus.IDLE);
    }

    private boolean isEndLessConnection() {
        if (getArguments().containsKey(Communication.EXTRA_ENDLESS_CONNECTION)) {
            return getArguments().getBoolean(Communication.EXTRA_ENDLESS_CONNECTION);
        }
        return true;
    }

    private boolean registerBluetoothStateBroadcastReceiver(Context context) {
        if (this.mBluetoothStateBroadcastReceiver != null) {
            return true;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
        BluetoothStateBroadcastReceiver bluetoothStateBroadcastReceiver = new BluetoothStateBroadcastReceiver(this);
        this.mBluetoothStateBroadcastReceiver = bluetoothStateBroadcastReceiver;
        context.registerReceiver(bluetoothStateBroadcastReceiver, intentFilter);
        return true;
    }

    private void resetThreads() {
        resetConnectThread();
    }

    private void resetConnectThread() {
        if (this.mConnectAsyncTask == null || AsyncTask.Status.RUNNING != this.mConnectAsyncTask.getStatus()) {
            return;
        }
        this.mConnectAsyncTask.cancel(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void start() {
        CareLog.d(TAG, "start()", new Object[0]);
        closeSocket(this.mBluetoothSocket);
        this.mBluetoothSocket = null;
        if (isScanning()) {
            try {
                stopScan();
            } catch (CareLibException e) {
                CareLog.e(TAG, e, "Could not stop scan...", new Object[0]);
            }
        }
        BluetoothAdapter bluetoothAdapterCreate = BluetoothAdapterFactory.create();
        if (!isBluetoothSupported(bluetoothAdapterCreate)) {
            setStatus(CommunicationStatus.NOT_SUPPORTED);
        } else {
            if (!isBluetoothEnabled(bluetoothAdapterCreate)) {
                setStatus(CommunicationStatus.NO_MEDIUM_ACTIVE);
                return;
            }
            setStatus(CommunicationStatus.IDLE);
            setCurrentDevice(null);
            resetConnectThread();
        }
    }

    private boolean unregisterBluetoothStateBroadcastReceiver(Context context) {
        BluetoothStateBroadcastReceiver bluetoothStateBroadcastReceiver = this.mBluetoothStateBroadcastReceiver;
        if (bluetoothStateBroadcastReceiver == null) {
            return true;
        }
        try {
            context.unregisterReceiver(bluetoothStateBroadcastReceiver);
            this.mBluetoothStateBroadcastReceiver = null;
        } catch (IllegalArgumentException e) {
            CareLog.e(TAG, e, "Argument is not valid.", new Object[0]);
        } catch (Exception e2) {
            CareLog.e(TAG, e2, "Generic error.", new Object[0]);
        }
        return true;
    }

    private class ConnectionStateMonitorAsyncTask extends AsyncTask<Void, Void, Void> {
        private ConnectionStateMonitorAsyncTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            CareLog.d(BluetoothCommunication.TAG, "ConnectionStateMonitorAsyncTask started.", new Object[0]);
            while (BluetoothCommunication.this.mBluetoothSocket != null && BluetoothCommunication.this.mBluetoothSocket.isConnected()) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException unused) {
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            super.onPostExecute(r3);
            CareLog.d(BluetoothCommunication.TAG, "ConnectionStateMonitorAsyncTask has terminated.", new Object[0]);
            if (CommunicationStatus.CONNECTED == BluetoothCommunication.this.getStatus()) {
                BluetoothCommunication.this.setStatus(CommunicationStatus.CONNECTION_LOST);
            }
        }
    }

    private static final class ConnectAsyncTask extends AsyncTask<Void, Object, Boolean> {
        private static final long SLEEP_CONNECTION_ERROR_TIME_INCREMENT = 1000;
        private final String _TAG;
        private final BluetoothCommunication mBluetoothCommunication;
        private BluetoothSocket mBluetoothSocket;
        private final BluetoothSocketConnector mBluetoothSocketConnector;
        private long mConnectionInterval;
        private final String mDeviceAddress;
        private final boolean mIsConnectionEndLess;
        private final boolean mIsFallbackModeEnabled;
        private final boolean mIsSecureModeSupported;
        private final long mMaxConnectionInterval;

        private ConnectAsyncTask(BluetoothCommunication bluetoothCommunication, String str, long j, boolean z, boolean z2, boolean z3) {
            this._TAG = BluetoothCommunication.TAG + "#" + ConnectAsyncTask.class.getSimpleName();
            this.mBluetoothCommunication = bluetoothCommunication;
            this.mDeviceAddress = str;
            this.mMaxConnectionInterval = j;
            this.mIsConnectionEndLess = z;
            this.mIsSecureModeSupported = z2;
            this.mIsFallbackModeEnabled = z3;
            this.mBluetoothSocketConnector = new BluetoothSocketConnector();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... voidArr) {
            CareLog.d(this._TAG, "ConnectAsyncTask doInBackground()", new Object[0]);
            this.mBluetoothCommunication.mDeviceScanner.stopScan(this.mBluetoothCommunication.getCommunicationDelegate().getApplicationContext());
            this.mConnectionInterval = 5000L;
            CareLog.d(this._TAG, "Begin Connect loop.", new Object[0]);
            CareLog.d(this._TAG, "Interrupt device discovery if needed..", new Object[0]);
            BluetoothAdapter bluetoothAdapterCreate = BluetoothAdapterFactory.create();
            while (bluetoothAdapterCreate != null) {
                if (bluetoothAdapterCreate.isDiscovering()) {
                    bluetoothAdapterCreate.cancelDiscovery();
                }
                CareLog.v(this._TAG, "Bluetooth Adapter state: %d(%s)", Integer.valueOf(bluetoothAdapterCreate.getState()), BluetoothAdapterSupport.getStateName(bluetoothAdapterCreate.getState()));
                BluetoothDevice remoteDevice = bluetoothAdapterCreate.getRemoteDevice(this.mDeviceAddress);
                if (remoteDevice == null) {
                    CareLog.w(this._TAG, "Connect aborted due bluetooth device NULL!!!", new Object[0]);
                } else if (BluetoothCommunication.SPP_UUID == null) {
                    CareLog.w(this._TAG, "Connect aborted due BT service UUID NULL!!!", new Object[0]);
                } else {
                    this.mBluetoothSocket = this.mBluetoothSocketConnector.connect(remoteDevice, BluetoothCommunication.SPP_UUID, this.mIsSecureModeSupported, this.mIsFallbackModeEnabled);
                    if (!isCancelled()) {
                        BluetoothSocket bluetoothSocket = this.mBluetoothSocket;
                        if (bluetoothSocket != null && bluetoothSocket.isConnected()) {
                            CareLog.d(this._TAG, "Socket connected established.", new Object[0]);
                            return true;
                        }
                        if (this.mIsConnectionEndLess) {
                            CareLog.v(this._TAG, "Waiting %d(ms) before trying to connect again.", Long.valueOf(this.mConnectionInterval));
                            internalWaitConnection(this.mConnectionInterval);
                            long j = this.mConnectionInterval;
                            if (j < this.mMaxConnectionInterval) {
                                this.mConnectionInterval = j + 1000;
                            }
                        }
                        if (isCancelled() || !this.mIsConnectionEndLess) {
                        }
                    }
                }
                CareLog.d(this._TAG, "Connect loop Ended.", new Object[0]);
                return false;
            }
            CareLog.wtf(this._TAG, "Bluetooth Adapter is null!!!", new Object[0]);
            return false;
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            Log.d(this._TAG, "ConnectAsyncTask#onCancelled()");
            this.mBluetoothSocketConnector.abortConnection();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onCancelled(Boolean bool) {
            super.onCancelled(bool);
            Log.d(this._TAG, "ConnectAsyncTask#onCancelled(Boolean connected)");
            this.mBluetoothSocketConnector.abortConnection();
            this.mBluetoothCommunication.start();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            Log.d(this._TAG, "ConnectAsyncTask#onPostExecute");
            if (bool.booleanValue()) {
                this.mBluetoothCommunication.onSocketConnected(this.mBluetoothSocket);
            } else {
                if (isCancelled()) {
                    return;
                }
                this.mBluetoothCommunication.connectionFailed();
            }
        }

        private void internalWaitConnection(long j) {
            try {
                Thread.sleep(j);
            } catch (InterruptedException e) {
                CareLog.e(this._TAG, e, "Could not wait.", new Object[0]);
            }
        }
    }

    private static class BluetoothStateBroadcastReceiver extends BroadcastReceiver {
        private final BluetoothCommunication mCommunication;

        BluetoothStateBroadcastReceiver(BluetoothCommunication bluetoothCommunication) {
            this.mCommunication = bluetoothCommunication;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1);
                if (12 == intExtra) {
                    CareLog.d(BluetoothCommunication.TAG, "Current bluetooth state is changed. New state: ON", new Object[0]);
                    if (CommunicationStatus.NO_MEDIUM_ACTIVE == this.mCommunication.getStatus()) {
                        this.mCommunication.setStatus(CommunicationStatus.IDLE);
                        return;
                    }
                    return;
                }
                if (10 == intExtra) {
                    CareLog.d(BluetoothCommunication.TAG, "Current bluetooth state is changed. New state: OFF", new Object[0]);
                    if (CommunicationStatus.NOT_SUPPORTED != this.mCommunication.getStatus()) {
                        this.mCommunication.start();
                        return;
                    }
                    return;
                }
                return;
            }
            if ("android.bluetooth.device.action.ACL_DISCONNECTED".equals(intent.getAction())) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                CareLog.d(BluetoothCommunication.TAG, "BluetoothDevice.ACTION_ACL_DISCONNECTED device: {%1$s}(%2$s)", bluetoothDevice.getName(), bluetoothDevice.getAddress());
                if (this.mCommunication.mBluetoothSocket == null || this.mCommunication.mBluetoothSocket.getRemoteDevice() == null || this.mCommunication.mBluetoothSocket.getRemoteDevice().getAddress() == null || !this.mCommunication.mBluetoothSocket.getRemoteDevice().getAddress().equals(bluetoothDevice.getAddress())) {
                    return;
                }
                if (CommunicationStatus.CONNECTED == this.mCommunication.getStatus()) {
                    this.mCommunication.connectionLost(BluetoothAdapter.getDefaultAdapter());
                    return;
                } else {
                    if (CommunicationStatus.DISCONNECTING == this.mCommunication.getStatus()) {
                        this.mCommunication.setStatus(CommunicationStatus.DISCONNECTED);
                        this.mCommunication.start();
                        return;
                    }
                    return;
                }
            }
            if ("android.bluetooth.device.action.ACL_CONNECTED".equals(intent.getAction())) {
                BluetoothDevice bluetoothDevice2 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                CareLog.d(BluetoothCommunication.TAG, "BluetoothDevice.ACTION_ACL_CONNECTED device: {%1$s}(%2$s)", bluetoothDevice2.getName(), bluetoothDevice2.getAddress());
            }
        }
    }
}
