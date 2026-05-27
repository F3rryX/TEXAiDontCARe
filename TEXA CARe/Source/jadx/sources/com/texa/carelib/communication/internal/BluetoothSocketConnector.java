package com.texa.carelib.communication.internal;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import com.texa.carelib.communication.internal.BluetoothSocketBuilder;
import com.texa.carelib.communication.internal.serial.BluetoothCommunication;
import com.texa.carelib.core.logging.CareLog;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothSocketConnector {
    static final String EXCEPTION_MESSAGE_CONNECTION_REFUSED = "Connection refused";
    static final String EXCEPTION_MESSAGE_PERMISSION_DENIED = "Permission denied";
    private static final int INTERVAL_TIME = 250;
    private static final String TAG = "BluetoothSocketConnector";
    private BluetoothSocket mBluetoothSocket;
    private volatile boolean mIsInterrupted;

    enum ConnectionState {
        Init,
        ConnectSecure,
        ConnectInsecure,
        ConnectFallback,
        End
    }

    public BluetoothSocket connect(BluetoothDevice bluetoothDevice, UUID uuid, boolean z, boolean z2) {
        this.mIsInterrupted = false;
        CareLog.d(TAG, "Connecting to: %1$s", bluetoothDevice);
        ConnectionState connectionState = ConnectionState.Init;
        while (ConnectionState.End != connectionState && !this.mIsInterrupted) {
            String str = TAG;
            CareLog.d(str, "Connection state: " + connectionState, new Object[0]);
            int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketConnector$ConnectionState[connectionState.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    try {
                        BluetoothSocket bluetoothSocketCreateDefaultSocket = createDefaultSocket(bluetoothDevice, uuid, true);
                        this.mBluetoothSocket = bluetoothSocketCreateDefaultSocket;
                        bluetoothSocketCreateDefaultSocket.connect();
                        connectionState = ConnectionState.End;
                    } catch (IOException e) {
                        if (!this.mIsInterrupted) {
                            BluetoothSocket bluetoothSocket = this.mBluetoothSocket;
                            if (bluetoothSocket != null) {
                                try {
                                    bluetoothSocket.close();
                                } catch (IOException unused) {
                                }
                                this.mBluetoothSocket = null;
                            }
                            CareLog.e(TAG, e, "connect in SECURE mode throws an exception.", new Object[0]);
                            if (isSecureSocketException(e)) {
                                connectionState = ConnectionState.ConnectInsecure;
                            } else {
                                connectionState = ConnectionState.ConnectFallback;
                            }
                            Thread.sleep(250L);
                        }
                    }
                } else if (i == 3) {
                    try {
                        BluetoothSocket bluetoothSocketCreateDefaultSocket2 = createDefaultSocket(bluetoothDevice, uuid, false);
                        this.mBluetoothSocket = bluetoothSocketCreateDefaultSocket2;
                        bluetoothSocketCreateDefaultSocket2.connect();
                        connectionState = ConnectionState.End;
                    } catch (IOException e2) {
                        if (!this.mIsInterrupted) {
                            CareLog.e(TAG, e2, "connect in INSECURE mode throws an exception.", new Object[0]);
                            BluetoothSocket bluetoothSocket2 = this.mBluetoothSocket;
                            if (bluetoothSocket2 != null) {
                                try {
                                    bluetoothSocket2.close();
                                } catch (IOException unused2) {
                                }
                                this.mBluetoothSocket = null;
                            }
                            try {
                                Thread.sleep(250L);
                            } catch (InterruptedException unused3) {
                            }
                        }
                    }
                } else if (i == 4) {
                    try {
                        CareLog.v(str, "Fallback channel %d", 1);
                        BluetoothSocket bluetoothSocketCreateFallbackSocket = createFallbackSocket(bluetoothDevice, 1);
                        this.mBluetoothSocket = bluetoothSocketCreateFallbackSocket;
                        bluetoothSocketCreateFallbackSocket.connect();
                    } catch (IOException e3) {
                        if (!this.mIsInterrupted) {
                            CareLog.e(TAG, e3, "connect with fallback method throws an exception.", new Object[0]);
                            BluetoothSocket bluetoothSocket3 = this.mBluetoothSocket;
                            if (bluetoothSocket3 != null) {
                                try {
                                    bluetoothSocket3.close();
                                } catch (IOException unused4) {
                                }
                                this.mBluetoothSocket = null;
                            }
                        }
                    }
                    connectionState = ConnectionState.End;
                }
            } else if (z) {
                connectionState = ConnectionState.ConnectSecure;
            } else {
                connectionState = ConnectionState.ConnectInsecure;
            }
        }
        BluetoothSocket bluetoothSocket4 = this.mBluetoothSocket;
        if (bluetoothSocket4 == null || !bluetoothSocket4.isConnected()) {
            return null;
        }
        return this.mBluetoothSocket;
    }

    /* JADX INFO: renamed from: com.texa.carelib.communication.internal.BluetoothSocketConnector$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketConnector$ConnectionState;

        static {
            int[] iArr = new int[ConnectionState.values().length];
            $SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketConnector$ConnectionState = iArr;
            try {
                iArr[ConnectionState.Init.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketConnector$ConnectionState[ConnectionState.ConnectSecure.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketConnector$ConnectionState[ConnectionState.ConnectInsecure.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketConnector$ConnectionState[ConnectionState.ConnectFallback.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public void abortConnection() {
        this.mIsInterrupted = true;
        BluetoothCommunication.closeSocket(this.mBluetoothSocket);
        this.mBluetoothSocket = null;
    }

    private BluetoothSocket createDefaultSocket(BluetoothDevice bluetoothDevice, UUID uuid, boolean z) throws IOException {
        return new BluetoothSocketBuilder().setBluetoothDevice(bluetoothDevice).useSecureCommunication(z).setUUID(uuid).setBluetoothSocketWrapperType(BluetoothSocketBuilder.BluetoothSocketType.Normal).build();
    }

    private BluetoothSocket createFallbackSocket(BluetoothDevice bluetoothDevice, int i) throws IOException {
        return new BluetoothSocketBuilder().setBluetoothDevice(bluetoothDevice).setChannel(i).setBluetoothSocketWrapperType(BluetoothSocketBuilder.BluetoothSocketType.Fallback).build();
    }

    boolean isSecureSocketException(IOException iOException) {
        return EXCEPTION_MESSAGE_PERMISSION_DENIED.equals(iOException.getMessage()) || EXCEPTION_MESSAGE_CONNECTION_REFUSED.equals(iOException.getMessage());
    }
}
