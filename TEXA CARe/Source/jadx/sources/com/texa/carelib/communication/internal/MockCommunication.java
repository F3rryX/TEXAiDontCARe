package com.texa.carelib.communication.internal;

import android.os.AsyncTask;
import android.util.Log;
import com.texa.carelib.care.vehicleinfo.internal.MockVehicleInfo;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceFilter;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.communication.KnownDeviceHistory;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class MockCommunication extends CommunicationBase {
    private static final int CONNECT_DELAY = 2000;
    private static final int DISCONNECT_DELAY = 2000;
    private static final int REBOOT_DELAY = 5000;
    public static final String TAG = "MockCommunication";
    private final List<DeviceInfo> mDevices = new ArrayList();
    private boolean mIsConnected;
    private final List<DeviceInfo> mKnownDevices;
    private AsyncTask<Object, DeviceInfo, Object> mScanDevicesTask;

    @Override // com.texa.carelib.communication.Communication
    public Object getRemote() {
        return null;
    }

    @Override // com.texa.carelib.communication.Communication
    public void setDeviceFilter(DeviceFilter deviceFilter) {
    }

    @Override // com.texa.carelib.communication.Communication
    public void setKnownDeviceHistory(KnownDeviceHistory knownDeviceHistory) {
    }

    public MockCommunication() {
        ArrayList arrayList = new ArrayList();
        this.mKnownDevices = arrayList;
        arrayList.add(new DeviceInfo.Builder("00-08-74-4C-7F-01").setName("VCI 11111111").setBondState(12).setType(1).build());
        start();
    }

    @Override // com.texa.carelib.communication.Communication
    public boolean isConnected() {
        return this.mIsConnected;
    }

    @Override // com.texa.carelib.communication.Communication
    public void forgetKnownDevices() {
        this.mKnownDevices.clear();
    }

    @Override // com.texa.carelib.communication.Communication
    public void reconnect() throws CareLibException {
        List<DeviceInfo> list = this.mKnownDevices;
        if (list != null && list.size() > 0) {
            setStatus(CommunicationStatus.RECONNECTING);
            connect(this.mKnownDevices.get(0));
            return;
        }
        throw new CareLibException("Device list is empty.");
    }

    @Override // com.texa.carelib.communication.Communication
    public void reconnectToDevices(List<DeviceInfo> list) throws CareLibException {
        if (list.size() > 0) {
            setStatus(CommunicationStatus.RECONNECTING);
            connect(list.get(0));
            return;
        }
        throw new CareLibException("Device list is empty.");
    }

    @Override // com.texa.carelib.communication.Communication
    public void stopReconnect() {
        if (CommunicationStatus.RECONNECTING == getStatus()) {
            setStatus(CommunicationStatus.IDLE);
        }
    }

    @Override // com.texa.carelib.communication.Communication
    public void connect(final DeviceInfo deviceInfo) throws CareLibException {
        if (getStatus() == CommunicationStatus.CONNECTED) {
            throw new CareLibException("Dongle is already connected!");
        }
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.communication.internal.MockCommunication$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m732xf8b2ade8(deviceInfo);
            }
        }, TAG + "_thread_connect");
        thread.setPriority(1);
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$connect$0$com-texa-carelib-communication-internal-MockCommunication, reason: not valid java name */
    public /* synthetic */ void m732xf8b2ade8(DeviceInfo deviceInfo) {
        if (getStatus() == CommunicationStatus.SCANNING) {
            try {
                stopScan();
            } catch (CareLibException unused) {
            }
            AsyncTask<Object, DeviceInfo, Object> asyncTask = this.mScanDevicesTask;
            if (asyncTask != null && asyncTask.getStatus() != AsyncTask.Status.FINISHED) {
                try {
                    this.mScanDevicesTask.get(5000L, TimeUnit.MILLISECONDS);
                } catch (CancellationException unused2) {
                } catch (Exception e) {
                    CareLog.e(TAG, e, "Generic error.", new Object[0]);
                }
            }
        }
        Log.d(TAG, "Connecting to " + deviceInfo.getName() + "...");
        setCurrentDevice(deviceInfo);
        setStatus(CommunicationStatus.CONNECTING);
        int i = MockVehicleInfo.DELAY_DATA_UPDATED;
        if (getStatus() == CommunicationStatus.CONNECTION_LOST) {
            i = 7000;
        }
        try {
            Thread.sleep(i);
        } catch (InterruptedException unused3) {
        }
        if (!this.mKnownDevices.contains(deviceInfo)) {
            this.mKnownDevices.add(deviceInfo);
        }
        setStatus(CommunicationStatus.CONNECTED);
        this.mIsConnected = true;
    }

    @Override // com.texa.carelib.communication.Communication
    public void disconnect() throws CareLibException {
        if (getStatus() != CommunicationStatus.CONNECTED) {
            throw new CareLibException("No dongle connected!");
        }
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.communication.internal.MockCommunication$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m733x6997b135();
            }
        }, TAG + "_thread_connect");
        thread.setPriority(1);
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$disconnect$1$com-texa-carelib-communication-internal-MockCommunication, reason: not valid java name */
    public /* synthetic */ void m733x6997b135() {
        Log.d(TAG, "disconnect()");
        setStatus(CommunicationStatus.DISCONNECTING);
        try {
            Thread.sleep(2000L);
        } catch (InterruptedException unused) {
        }
        setCurrentDevice(null);
        setStatus(CommunicationStatus.DISCONNECTED);
        this.mIsConnected = false;
        start();
    }

    @Override // com.texa.carelib.communication.Communication
    public void startScan() throws CareLibException {
        String str = TAG;
        Log.d(str, "startScan()");
        AsyncTask<Object, DeviceInfo, Object> asyncTask = this.mScanDevicesTask;
        if (asyncTask != null && asyncTask.getStatus() != AsyncTask.Status.FINISHED) {
            CareLog.w(str, "Scan task is already pending...", new Object[0]);
            throw new CareLibException("Discovery scan is already in progress.");
        }
        AsyncTask<Object, DeviceInfo, Object> asyncTask2 = new AsyncTask<Object, DeviceInfo, Object>() { // from class: com.texa.carelib.communication.internal.MockCommunication.1
            @Override // android.os.AsyncTask
            protected void onCancelled() {
                MockCommunication.this.setStatus(CommunicationStatus.SCANNING_FINISHED);
                super.onCancelled();
            }

            @Override // android.os.AsyncTask
            protected void onPreExecute() {
                super.onPreExecute();
                MockCommunication.this.mDevices.clear();
                MockCommunication.this.setStatus(CommunicationStatus.SCANNING);
            }

            private void shuffleArray(DeviceInfo[] deviceInfoArr) {
                Random random = new Random();
                for (int length = deviceInfoArr.length - 1; length > 0; length--) {
                    int iNextInt = random.nextInt(length + 1);
                    DeviceInfo deviceInfo = deviceInfoArr[iNextInt];
                    deviceInfoArr[iNextInt] = deviceInfoArr[length];
                    deviceInfoArr[length] = deviceInfo;
                }
            }

            @Override // android.os.AsyncTask
            protected Object doInBackground(Object... objArr) {
                DeviceInfo[] deviceInfoArr = {new DeviceInfo.Builder("00-08-74-4C-7F-00").setName("VCI 00000000").setRSSI(-100).setType(1).build(), new DeviceInfo.Builder("00-08-74-4C-7F-01").setName("VCI 11111111").setRSSI(-90).setType(1).build(), new DeviceInfo.Builder("00-08-74-4C-7F-02").setName("VCI 22222222").setRSSI(-80).setType(1).build(), new DeviceInfo.Builder("00-08-74-4C-7F-03").setName("VCI 33333333").setRSSI(-70).setType(3).build(), new DeviceInfo.Builder("00-08-74-4C-7F-04").setName("VCI 44444444").setRSSI(-60).setType(3).build(), new DeviceInfo.Builder("00-08-74-4C-7F-05").setName("VCI 55555555").setRSSI(-50).setType(1).build(), new DeviceInfo.Builder("00-08-74-4C-7F-06").setName("VCI 66666666").setRSSI(-40).setType(1).build(), new DeviceInfo.Builder("00-08-74-4C-7F-07").setName("VCI 77777777").setRSSI(-30).setType(3).build(), new DeviceInfo.Builder("00-08-74-4C-7F-08").setName("VCI 88888888").setRSSI(-20).setType(1).build(), new DeviceInfo.Builder("00-08-74-4C-7F-09").setName("VCI 99999999").setRSSI(-10).setType(1).build()};
                shuffleArray(deviceInfoArr);
                for (int i = 0; i < 10; i++) {
                    DeviceInfo deviceInfo = deviceInfoArr[i];
                    if (isCancelled()) {
                        return null;
                    }
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    publishProgress(deviceInfo);
                }
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onProgressUpdate(DeviceInfo... deviceInfoArr) {
                super.onProgressUpdate((Object[]) deviceInfoArr);
                try {
                    if (MockCommunication.this.getStatus() == CommunicationStatus.SCANNING) {
                        MockCommunication.this.mDevices.add(deviceInfoArr[0]);
                        MockCommunication.this.fireDeviceFound(deviceInfoArr[0]);
                    }
                } catch (Exception e) {
                    CareLog.e(MockCommunication.TAG, e, "Generic error.", new Object[0]);
                }
            }

            @Override // android.os.AsyncTask
            protected void onPostExecute(Object obj) {
                MockCommunication.this.setStatus(CommunicationStatus.SCANNING_FINISHED);
            }
        };
        this.mScanDevicesTask = asyncTask2;
        asyncTask2.execute(new Object[0]);
    }

    @Override // com.texa.carelib.communication.Communication
    public void stopScan() throws CareLibException {
        Log.d(TAG, "stopScan()");
        AsyncTask<Object, DeviceInfo, Object> asyncTask = this.mScanDevicesTask;
        if (asyncTask != null) {
            asyncTask.cancel(false);
            setStatus(CommunicationStatus.SCANNING_FINISHED);
        }
        start();
    }

    public void start() {
        setCurrentDevice(null);
        this.mIsConnected = false;
        setStatus(CommunicationStatus.IDLE);
    }

    @Override // com.texa.carelib.communication.Communication
    public void shutdown() {
        setCurrentDevice(null);
    }

    @Override // com.texa.carelib.communication.Communication
    public void stop() throws CareLibException {
        if (CommunicationStatus.SCANNING == getStatus()) {
            stopScan();
        } else {
            disconnect();
        }
    }

    @Override // com.texa.carelib.communication.Communication
    public List<DeviceInfo> getDevices() {
        return this.mDevices;
    }

    @Override // com.texa.carelib.communication.Communication
    public List<DeviceInfo> getKnownDevices() {
        return this.mKnownDevices;
    }

    public void simulateConnectionLost() throws CareLibException {
        setStatus(CommunicationStatus.CONNECTION_LOST);
        DeviceInfo currentDevice = getCurrentDevice();
        if (currentDevice == null) {
            throw new CareLibException("Dongle is null!");
        }
        connect(currentDevice);
    }

    @Override // com.texa.carelib.communication.Communication
    public void removeBond(String str) {
        for (DeviceInfo deviceInfo : this.mDevices) {
            if (str.equals(deviceInfo.getAddress())) {
                deviceInfo.builder().setBondState(10);
                return;
            }
        }
    }
}
