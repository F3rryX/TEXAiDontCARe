package com.texa.carelib.communication.internal;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import com.texa.carelib.core.logging.CareLog;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothSocketBuilder {
    private static final String TAG = "BluetoothSocketBuilder";
    private BluetoothDevice mBluetoothDevice;
    private BluetoothSocketType mBluetoothSocketType;
    private UUID mUUID;
    private boolean mUseSecureCommunication = true;
    private int mChannel = 1;

    public enum BluetoothSocketType {
        Normal,
        Fallback
    }

    BluetoothSocketBuilder() {
    }

    public BluetoothSocketBuilder useSecureCommunication(boolean z) {
        this.mUseSecureCommunication = z;
        return this;
    }

    public BluetoothSocketBuilder setChannel(int i) {
        this.mChannel = i;
        return this;
    }

    public BluetoothSocketBuilder setUUID(UUID uuid) {
        this.mUUID = uuid;
        return this;
    }

    public BluetoothSocketBuilder setBluetoothDevice(BluetoothDevice bluetoothDevice) {
        this.mBluetoothDevice = bluetoothDevice;
        return this;
    }

    public BluetoothSocketBuilder setBluetoothSocketWrapperType(BluetoothSocketType bluetoothSocketType) {
        this.mBluetoothSocketType = bluetoothSocketType;
        return this;
    }

    public BluetoothSocket build() throws IOException {
        String name;
        if (this.mBluetoothDevice == null) {
            throw new IllegalStateException("bluetoothDevice not yet set.");
        }
        if (this.mBluetoothSocketType == null) {
            throw new IllegalStateException("Bluetooth socket wrapper type not yet set.");
        }
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketBuilder$BluetoothSocketType[this.mBluetoothSocketType.ordinal()];
        if (i == 1) {
            UUID uuid = this.mUUID;
            if (uuid == null) {
                throw new IllegalStateException("UUID not yet set.");
            }
            if (this.mUseSecureCommunication) {
                return this.mBluetoothDevice.createRfcommSocketToServiceRecord(uuid);
            }
            return this.mBluetoothDevice.createInsecureRfcommSocketToServiceRecord(uuid);
        }
        if (i == 2) {
            Class<?> cls = this.mBluetoothDevice.getClass();
            Class<?>[] clsArr = {Integer.TYPE};
            try {
                Method[] declaredMethods = cls.getDeclaredMethods();
                int length = declaredMethods.length;
                int i2 = 0;
                while (true) {
                    name = "createRfcommSocket";
                    if (i2 >= length) {
                        break;
                    }
                    Method method = declaredMethods[i2];
                    if ("createRfcommSocket".equalsIgnoreCase(method.getName())) {
                        name = method.getName();
                        break;
                    }
                    i2++;
                }
                return (BluetoothSocket) cls.getMethod(name, clsArr).invoke(this.mBluetoothDevice, Integer.valueOf(this.mChannel));
            } catch (Exception e) {
                CareLog.e(TAG, e, "Generic error", new Object[0]);
                throw new IOException("Could not create the fallback socket.", e);
            }
        }
        throw new IllegalArgumentException("Bluetooth socket wrapper type not known.");
    }

    /* JADX INFO: renamed from: com.texa.carelib.communication.internal.BluetoothSocketBuilder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketBuilder$BluetoothSocketType;

        static {
            int[] iArr = new int[BluetoothSocketType.values().length];
            $SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketBuilder$BluetoothSocketType = iArr;
            try {
                iArr[BluetoothSocketType.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketBuilder$BluetoothSocketType[BluetoothSocketType.Fallback.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
