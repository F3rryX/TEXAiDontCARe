package com.texa.carelib.communication.internal;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.Context;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.communication.internal.serial.BluetoothAdapterFactory;
import com.texa.carelib.communication.internal.serial.BluetoothCommunication;
import com.texa.carelib.communication.internal.serial.SlaveReconnectionController;
import com.texa.carelib.core.logging.CareLog;
import java.lang.Thread;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class SerialDeviceReconnectionService implements DeviceReconnectionService {
    private static final int MAX_INTERVAL_SECONDS = 30;
    private static final String TAG = "SerialDeviceReconnectionService";
    private BluetoothCommunication mBluetoothCommunication;
    private DeviceReconnectionServiceCallback mCallback;
    private ReconnectionThread mReconnectThread;

    public SerialDeviceReconnectionService(BluetoothCommunication bluetoothCommunication) {
        this.mBluetoothCommunication = bluetoothCommunication;
    }

    @Override // com.texa.carelib.communication.internal.DeviceReconnectionService
    public boolean reconnectToDevices(Context context, List<DeviceInfo> list) {
        if (isReconnecting()) {
            CareLog.e(TAG, "reconnection service is already running", new Object[0]);
            return false;
        }
        if (list.size() <= 0) {
            return false;
        }
        ReconnectionThread reconnectionThread = new ReconnectionThread(this.mBluetoothCommunication, new SlaveReconnectionController(list), this.mCallback);
        this.mReconnectThread = reconnectionThread;
        reconnectionThread.start();
        DeviceReconnectionServiceCallback deviceReconnectionServiceCallback = this.mCallback;
        if (deviceReconnectionServiceCallback == null) {
            return true;
        }
        deviceReconnectionServiceCallback.onReconnectionStart();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class ReconnectionThread extends Thread {
        private BluetoothCommunication mBluetoothCommunication;
        private final BluetoothSocketConnector mBluetoothSocketConnector;
        private final DeviceReconnectionServiceCallback mCallback;
        private int mInterval;
        private boolean mIsInterrupted;
        private SlaveReconnectionController mSlaveReconnectionController;

        enum ReconnectionState {
            PickDevice,
            VerifyBluetoothState,
            Connect,
            ConnectionSuccess,
            ConnectionFailed
        }

        ReconnectionThread(BluetoothCommunication bluetoothCommunication, SlaveReconnectionController slaveReconnectionController, DeviceReconnectionServiceCallback deviceReconnectionServiceCallback) {
            setName("ReconnectionThread");
            this.mBluetoothCommunication = bluetoothCommunication;
            this.mSlaveReconnectionController = slaveReconnectionController;
            this.mBluetoothSocketConnector = new BluetoothSocketConnector();
            this.mCallback = deviceReconnectionServiceCallback;
            this.mIsInterrupted = false;
            this.mInterval = 0;
            setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.texa.carelib.communication.internal.SerialDeviceReconnectionService$ReconnectionThread$$ExternalSyntheticLambda0
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th) {
                    this.f$0.m734x30f6faf3(thread, th);
                }
            });
        }

        /* JADX INFO: renamed from: lambda$new$0$com-texa-carelib-communication-internal-SerialDeviceReconnectionService$ReconnectionThread, reason: not valid java name */
        public /* synthetic */ void m734x30f6faf3(Thread thread, Throwable th) {
            if (th instanceof InterruptedException) {
                this.mCallback.onReconnectionStop();
            } else {
                this.mCallback.onReconnectionFails(th);
            }
        }

        @Override // java.lang.Thread
        public void interrupt() {
            this.mIsInterrupted = true;
            this.mBluetoothSocketConnector.abortConnection();
            super.interrupt();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ReconnectionState reconnectionState;
            boolean zIsSecureSocketEnabled = this.mBluetoothCommunication.isSecureSocketEnabled();
            BluetoothAdapter bluetoothAdapterCreate = BluetoothAdapterFactory.create();
            if (bluetoothAdapterCreate == null) {
                return;
            }
            bluetoothAdapterCreate.cancelDiscovery();
            ReconnectionState reconnectionState2 = ReconnectionState.PickDevice;
            DeviceInfo nextDevice = null;
            BluetoothDevice remoteDevice = null;
            BluetoothSocket bluetoothSocket = null;
            do {
                CareLog.v(SerialDeviceReconnectionService.TAG, "ReconnectionState: %1$s", reconnectionState2);
                int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$internal$SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState[reconnectionState2.ordinal()];
                if (i == 1) {
                    nextDevice = this.mSlaveReconnectionController.getNextDevice();
                    if (nextDevice != null && (remoteDevice = bluetoothAdapterCreate.getRemoteDevice(nextDevice.getAddress())) != null) {
                        reconnectionState2 = ReconnectionState.VerifyBluetoothState;
                    }
                } else if (i == 2) {
                    int state = bluetoothAdapterCreate.getState();
                    if (10 == state || 13 == state) {
                        throw new IllegalStateException(String.format(Locale.US, "Could not connect if bluetooth adapter state is %d(%s).", Integer.valueOf(state), BluetoothAdapterSupport.getStateName(state)));
                    }
                    reconnectionState2 = ReconnectionState.Connect;
                } else if (i == 3) {
                    CareLog.d(SerialDeviceReconnectionService.TAG, "Reconnecting to %s(%s).", nextDevice.getName(), nextDevice.getAddress());
                    BluetoothSocket bluetoothSocketConnect = this.mBluetoothSocketConnector.connect(remoteDevice, BluetoothCommunication.SPP_UUID, zIsSecureSocketEnabled, this.mBluetoothCommunication.isFallBackSocketEnabled());
                    if (bluetoothSocketConnect != null && bluetoothSocketConnect.isConnected()) {
                        reconnectionState = ReconnectionState.ConnectionSuccess;
                    } else {
                        reconnectionState = ReconnectionState.ConnectionFailed;
                    }
                    ReconnectionState reconnectionState3 = reconnectionState;
                    bluetoothSocket = bluetoothSocketConnect;
                    reconnectionState2 = reconnectionState3;
                } else if (i == 4) {
                    int i2 = this.mInterval;
                    if (i2 < 30) {
                        this.mInterval = i2 + 1;
                    }
                    CareLog.v(SerialDeviceReconnectionService.TAG, "Next connection attempt will start in %d seconds...", Integer.valueOf(this.mInterval));
                    try {
                        Thread.sleep(this.mInterval * 1000);
                    } catch (InterruptedException unused) {
                    }
                    reconnectionState2 = ReconnectionState.PickDevice;
                }
                if (ReconnectionState.ConnectionSuccess == reconnectionState2) {
                    break;
                }
            } while (!this.mIsInterrupted);
            if (this.mCallback != null) {
                if (remoteDevice != null && bluetoothSocket != null && bluetoothSocket.isConnected()) {
                    this.mCallback.onSocketReady(bluetoothSocket);
                } else {
                    this.mCallback.onReconnectionStop();
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.communication.internal.SerialDeviceReconnectionService$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$internal$SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

        static {
            int[] iArr = new int[ReconnectionThread.ReconnectionState.values().length];
            $SwitchMap$com$texa$carelib$communication$internal$SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState = iArr;
            try {
                iArr[ReconnectionThread.ReconnectionState.PickDevice.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState[ReconnectionThread.ReconnectionState.VerifyBluetoothState.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState[ReconnectionThread.ReconnectionState.Connect.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState[ReconnectionThread.ReconnectionState.ConnectionFailed.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.texa.carelib.communication.internal.DeviceReconnectionService
    public boolean stopReconnection(Context context) {
        if (!isReconnecting()) {
            CareLog.d(TAG, "Reconnection service is not alive!!", new Object[0]);
            return false;
        }
        ReconnectionThread reconnectionThread = this.mReconnectThread;
        if (reconnectionThread == null || !reconnectionThread.isAlive()) {
            return false;
        }
        if (this.mReconnectThread.isInterrupted()) {
            return true;
        }
        this.mReconnectThread.interrupt();
        return true;
    }

    @Override // com.texa.carelib.communication.internal.DeviceReconnectionService
    public boolean isReconnecting() {
        ReconnectionThread reconnectionThread = this.mReconnectThread;
        return reconnectionThread != null && reconnectionThread.isAlive();
    }

    @Override // com.texa.carelib.communication.internal.DeviceReconnectionService
    public void setCallback(DeviceReconnectionServiceCallback deviceReconnectionServiceCallback) {
        this.mCallback = deviceReconnectionServiceCallback;
    }
}
