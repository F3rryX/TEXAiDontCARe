package org.spongycastle.crypto.engines;

import androidx.core.view.ViewCompat;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerParameterID;
import java.util.Enumeration;
import java.util.Hashtable;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithSBox;
import org.spongycastle.math.ec.Tnaf;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes3.dex */
public class GOST28147Engine implements BlockCipher {
    protected static final int BLOCK_SIZE = 8;
    private boolean forEncryption;
    private static byte[] Sbox_Default = {4, 10, 9, 2, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 8, 0, DataManagerParameterID.LED_ALWAYS_ON, 6, DataManagerParameterID.ACCELERATION_MAX_RANGE, 1, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 7, 15, 5, 3, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.ACCELERATION_MAX_RANGE, 4, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 6, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 15, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 10, 3, 4, 2, DataManagerParameterID.LED_ALWAYS_ON, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 7, 6, 0, 9, DataManagerParameterID.ACCELERATION_MAX_RANGE, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 10, 1, 0, 8, 9, 15, DataManagerParameterID.LED_ALWAYS_ON, 4, 6, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 2, 5, 3, 6, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 7, 1, 5, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 8, 4, 10, 9, DataManagerParameterID.LED_ALWAYS_ON, 0, 3, DataManagerParameterID.ACCELERATION_MAX_RANGE, 2, 4, DataManagerParameterID.ACCELERATION_MAX_RANGE, 10, 0, 7, 2, 1, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 3, 6, 8, 5, 9, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 15, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 4, 1, 3, 15, 5, 9, 0, 10, DataManagerParameterID.LED_ALWAYS_ON, 7, 6, 8, 2, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 1, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 0, 5, 7, 10, 4, 9, 2, 3, DataManagerParameterID.LED_ALWAYS_ON, 6, DataManagerParameterID.ACCELERATION_MAX_RANGE, 8, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD};
    private static byte[] ESbox_Test = {4, 2, 15, 5, 9, 1, 0, 8, DataManagerParameterID.LED_ALWAYS_ON, 3, DataManagerParameterID.ACCELERATION_MAX_RANGE, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 7, 10, 6, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 9, 15, DataManagerParameterID.LED_ALWAYS_ON, 8, 1, 3, 10, 2, 7, 4, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 6, 0, DataManagerParameterID.ACCELERATION_MAX_RANGE, 5, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 8, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 7, 3, 9, 10, 1, 5, 2, 4, 6, 15, 0, DataManagerParameterID.ACCELERATION_MAX_RANGE, DataManagerParameterID.LED_ALWAYS_ON, 9, DataManagerParameterID.ACCELERATION_MAX_RANGE, 2, 5, 15, 7, 1, 0, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 6, 10, 4, 3, 8, 3, DataManagerParameterID.LED_ALWAYS_ON, 5, 9, 6, 8, 0, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 10, DataManagerParameterID.ACCELERATION_MAX_RANGE, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 2, 1, 15, 4, 8, 15, 6, DataManagerParameterID.ACCELERATION_MAX_RANGE, 1, 9, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 5, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 3, 7, 10, 0, DataManagerParameterID.LED_ALWAYS_ON, 2, 4, 9, DataManagerParameterID.ACCELERATION_MAX_RANGE, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 0, 3, 6, 7, 5, 4, 8, DataManagerParameterID.LED_ALWAYS_ON, 15, 1, 10, 2, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 6, 5, 2, DataManagerParameterID.ACCELERATION_MAX_RANGE, 0, 9, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 3, DataManagerParameterID.LED_ALWAYS_ON, 7, 10, 15, 4, 1, 8};
    private static byte[] ESbox_A = {9, 6, 3, 2, 8, DataManagerParameterID.ACCELERATION_MAX_RANGE, 1, 7, 10, 4, DataManagerParameterID.LED_ALWAYS_ON, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 0, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 5, 3, 7, DataManagerParameterID.LED_ALWAYS_ON, 9, 8, 10, 15, 0, 5, 2, 6, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 4, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 1, DataManagerParameterID.LED_ALWAYS_ON, 4, 6, 2, DataManagerParameterID.ACCELERATION_MAX_RANGE, 3, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 8, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 15, 5, 10, 0, 7, 1, 9, DataManagerParameterID.LED_ALWAYS_ON, 7, 10, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 1, 3, 9, 0, 2, DataManagerParameterID.ACCELERATION_MAX_RANGE, 4, 15, 8, 5, 6, DataManagerParameterID.ACCELERATION_MAX_RANGE, 5, 1, 9, 8, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 15, 0, DataManagerParameterID.LED_ALWAYS_ON, 4, 2, 3, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 7, 10, 6, 3, 10, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 1, 2, 0, DataManagerParameterID.ACCELERATION_MAX_RANGE, 7, 5, 9, 4, 8, 15, DataManagerParameterID.LED_ALWAYS_ON, 6, 1, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 2, 9, 7, 10, 6, 0, 8, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 4, 5, 15, 3, DataManagerParameterID.ACCELERATION_MAX_RANGE, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.ACCELERATION_MAX_RANGE, 10, 15, 5, 0, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.LED_ALWAYS_ON, 8, 6, 2, 3, 9, 1, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 4};
    private static byte[] ESbox_B = {8, 4, DataManagerParameterID.ACCELERATION_MAX_RANGE, 1, 3, 5, 0, 9, 2, DataManagerParameterID.LED_ALWAYS_ON, 10, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 6, 7, 15, 0, 1, 2, 10, 4, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 5, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 9, 7, 3, 15, DataManagerParameterID.ACCELERATION_MAX_RANGE, 8, 6, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 0, 10, 9, 2, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 7, 5, 8, 15, 3, 6, 1, 4, 7, 5, 0, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 6, 1, 2, 3, 10, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 15, 4, DataManagerParameterID.LED_ALWAYS_ON, 9, 8, 2, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 15, 9, 5, 10, DataManagerParameterID.ACCELERATION_MAX_RANGE, 1, 4, 0, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 6, 8, DataManagerParameterID.LED_ALWAYS_ON, 3, 8, 3, 2, 6, 4, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.ACCELERATION_MAX_RANGE, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 1, 7, 15, 10, 0, 9, 5, 5, 2, 10, DataManagerParameterID.ACCELERATION_MAX_RANGE, 9, 1, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 3, 7, 4, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 0, 6, 15, 8, DataManagerParameterID.LED_ALWAYS_ON, 0, 4, DataManagerParameterID.ACCELERATION_MAX_RANGE, DataManagerParameterID.LED_ALWAYS_ON, 8, 3, 7, 1, 10, 2, 9, 6, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 5, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD};
    private static byte[] ESbox_C = {1, DataManagerParameterID.ACCELERATION_MAX_RANGE, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 2, 9, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 0, 15, 4, 5, 8, DataManagerParameterID.LED_ALWAYS_ON, 10, 7, 6, 3, 0, 1, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 4, 5, 2, 8, DataManagerParameterID.LED_ALWAYS_ON, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 9, 10, 6, 3, 8, 2, 5, 0, 4, 9, 15, 10, 3, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 6, DataManagerParameterID.LED_ALWAYS_ON, 1, DataManagerParameterID.ACCELERATION_MAX_RANGE, 3, 6, 0, 1, 5, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 10, 8, DataManagerParameterID.ACCELERATION_MAX_RANGE, 2, 9, 7, DataManagerParameterID.LED_ALWAYS_ON, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 4, 8, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 0, 4, 5, 1, 2, 9, 3, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.LED_ALWAYS_ON, 6, 15, 10, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 9, DataManagerParameterID.ACCELERATION_MAX_RANGE, 1, 8, DataManagerParameterID.LED_ALWAYS_ON, 2, 4, 7, 3, 6, 5, 10, 0, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 10, 9, 6, 8, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.LED_ALWAYS_ON, 2, 0, 15, 3, 5, DataManagerParameterID.ACCELERATION_MAX_RANGE, 4, 1, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 7, 7, 4, 0, 5, 10, 2, 15, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 6, 1, DataManagerParameterID.ACCELERATION_MAX_RANGE, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 9, 3, 8};
    private static byte[] ESbox_D = {15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 2, 10, 6, 4, 5, 0, 7, 9, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 1, DataManagerParameterID.ACCELERATION_MAX_RANGE, 8, 3, DataManagerParameterID.ACCELERATION_MAX_RANGE, 6, 3, 4, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 15, DataManagerParameterID.LED_ALWAYS_ON, 2, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 8, 0, 5, 10, 9, 1, 1, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 0, 15, DataManagerParameterID.LED_ALWAYS_ON, 6, 5, 10, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 4, 8, 9, 3, 7, 2, 1, 5, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 10, 7, 0, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 6, 2, DataManagerParameterID.ACCELERATION_MAX_RANGE, 4, 9, 3, 15, 8, 0, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 8, 9, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 2, 10, DataManagerParameterID.ACCELERATION_MAX_RANGE, 7, 3, 6, 5, 4, DataManagerParameterID.LED_ALWAYS_ON, 15, 1, 8, 0, 15, 3, 2, 5, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.ACCELERATION_MAX_RANGE, 1, 10, 4, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 9, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 6, 3, 0, 6, 15, 1, DataManagerParameterID.LED_ALWAYS_ON, 9, 2, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 8, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 4, DataManagerParameterID.ACCELERATION_MAX_RANGE, 10, 5, 7, 1, 10, 6, 8, 15, DataManagerParameterID.ACCELERATION_MAX_RANGE, 0, 4, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 3, 5, 9, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 2, DataManagerParameterID.LED_ALWAYS_ON};
    private static byte[] DSbox_Test = {4, 10, 9, 2, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 8, 0, DataManagerParameterID.LED_ALWAYS_ON, 6, DataManagerParameterID.ACCELERATION_MAX_RANGE, 1, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 7, 15, 5, 3, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.ACCELERATION_MAX_RANGE, 4, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 6, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 15, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 10, 3, 4, 2, DataManagerParameterID.LED_ALWAYS_ON, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 7, 6, 0, 9, DataManagerParameterID.ACCELERATION_MAX_RANGE, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 10, 1, 0, 8, 9, 15, DataManagerParameterID.LED_ALWAYS_ON, 4, 6, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 2, 5, 3, 6, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 7, 1, 5, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 8, 4, 10, 9, DataManagerParameterID.LED_ALWAYS_ON, 0, 3, DataManagerParameterID.ACCELERATION_MAX_RANGE, 2, 4, DataManagerParameterID.ACCELERATION_MAX_RANGE, 10, 0, 7, 2, 1, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 3, 6, 8, 5, 9, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 15, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 4, 1, 3, 15, 5, 9, 0, 10, DataManagerParameterID.LED_ALWAYS_ON, 7, 6, 8, 2, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 1, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 0, 5, 7, 10, 4, 9, 2, 3, DataManagerParameterID.LED_ALWAYS_ON, 6, DataManagerParameterID.ACCELERATION_MAX_RANGE, 8, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD};
    private static byte[] DSbox_A = {10, 4, 5, 6, 8, 1, 3, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.LED_ALWAYS_ON, 0, 9, 2, DataManagerParameterID.ACCELERATION_MAX_RANGE, 15, 5, 15, 4, 0, 2, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 9, 1, 7, 6, 3, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.LED_ALWAYS_ON, 10, 8, 7, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, DataManagerParameterID.LED_ALWAYS_ON, 9, 4, 1, 0, 3, DataManagerParameterID.ACCELERATION_MAX_RANGE, 5, 2, 6, 10, 8, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 4, 10, 7, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 0, 15, 2, 8, DataManagerParameterID.LED_ALWAYS_ON, 1, 6, 5, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.ACCELERATION_MAX_RANGE, 9, 3, 7, 6, 4, DataManagerParameterID.ACCELERATION_MAX_RANGE, 9, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 2, 10, 1, 8, 0, DataManagerParameterID.LED_ALWAYS_ON, 15, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 3, 5, 7, 6, 2, 4, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 9, 15, 0, 10, 1, 5, DataManagerParameterID.ACCELERATION_MAX_RANGE, 8, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 3, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, DataManagerParameterID.LED_ALWAYS_ON, 4, 1, 7, 0, 5, 10, 3, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD, 8, 15, 6, 2, 9, DataManagerParameterID.ACCELERATION_MAX_RANGE, 1, 3, 10, 9, 5, DataManagerParameterID.ACCELERATION_MAX_RANGE, 4, 15, 8, 6, 7, DataManagerParameterID.LED_ALWAYS_ON, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MAX_THRESHOLD, 0, 2, DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD};
    private static Hashtable sBoxes = new Hashtable();
    private int[] workingKey = null;
    private byte[] S = Sbox_Default;

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "GOST28147";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
    }

    static {
        addSBox("Default", Sbox_Default);
        addSBox("E-TEST", ESbox_Test);
        addSBox("E-A", ESbox_A);
        addSBox("E-B", ESbox_B);
        addSBox("E-C", ESbox_C);
        addSBox("E-D", ESbox_D);
        addSBox("D-TEST", DSbox_Test);
        addSBox("D-A", DSbox_A);
    }

    private static void addSBox(String str, byte[] bArr) {
        sBoxes.put(Strings.toUpperCase(str), bArr);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithSBox) {
            ParametersWithSBox parametersWithSBox = (ParametersWithSBox) cipherParameters;
            byte[] sBox = parametersWithSBox.getSBox();
            if (sBox.length != Sbox_Default.length) {
                throw new IllegalArgumentException("invalid S-box passed to GOST28147 init");
            }
            this.S = Arrays.clone(sBox);
            if (parametersWithSBox.getParameters() != null) {
                this.workingKey = generateWorkingKey(z, ((KeyParameter) parametersWithSBox.getParameters()).getKey());
                return;
            }
            return;
        }
        if (cipherParameters instanceof KeyParameter) {
            this.workingKey = generateWorkingKey(z, ((KeyParameter) cipherParameters).getKey());
        } else {
            if (cipherParameters == null) {
                return;
            }
            throw new IllegalArgumentException("invalid parameter passed to GOST28147 init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = this.workingKey;
        if (iArr == null) {
            throw new IllegalStateException("GOST28147 engine not initialised");
        }
        if (i + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i2 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        GOST28147Func(iArr, bArr, i, bArr2, i2);
        return 8;
    }

    private int[] generateWorkingKey(boolean z, byte[] bArr) {
        this.forEncryption = z;
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        int[] iArr = new int[8];
        for (int i = 0; i != 8; i++) {
            iArr[i] = bytesToint(bArr, i * 4);
        }
        return iArr;
    }

    private int GOST28147_mainStep(int i, int i2) {
        int i3 = i2 + i;
        byte[] bArr = this.S;
        int i4 = (bArr[((i3 >> 0) & 15) + 0] << 0) + (bArr[((i3 >> 4) & 15) + 16] << 4) + (bArr[((i3 >> 8) & 15) + 32] << 8) + (bArr[((i3 >> 12) & 15) + 48] << DataManagerParameterID.DRIVING_TIME_LOW_RPM_MIN_THRESHOLD) + (bArr[((i3 >> 16) & 15) + 64] << Tnaf.POW_2_WIDTH) + (bArr[((i3 >> 20) & 15) + 80] << 20) + (bArr[((i3 >> 24) & 15) + 96] << 24) + (bArr[((i3 >> 28) & 15) + 112] << 28);
        return (i4 << 11) | (i4 >>> 21);
    }

    private void GOST28147Func(int[] iArr, byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4;
        int iBytesToint = bytesToint(bArr, i);
        int iBytesToint2 = bytesToint(bArr, i + 4);
        int i5 = 7;
        if (this.forEncryption) {
            for (int i6 = 0; i6 < 3; i6++) {
                int i7 = 0;
                while (i7 < 8) {
                    int iGOST28147_mainStep = iBytesToint2 ^ GOST28147_mainStep(iBytesToint, iArr[i7]);
                    i7++;
                    int i8 = iBytesToint;
                    iBytesToint = iGOST28147_mainStep;
                    iBytesToint2 = i8;
                }
            }
            i3 = iBytesToint2;
            i4 = iBytesToint;
            while (i5 > 0) {
                int iGOST28147_mainStep2 = i3 ^ GOST28147_mainStep(i4, iArr[i5]);
                i5--;
                i3 = i4;
                i4 = iGOST28147_mainStep2;
            }
        } else {
            int i9 = 0;
            while (i9 < 8) {
                int iGOST28147_mainStep3 = iBytesToint2 ^ GOST28147_mainStep(iBytesToint, iArr[i9]);
                i9++;
                int i10 = iBytesToint;
                iBytesToint = iGOST28147_mainStep3;
                iBytesToint2 = i10;
            }
            i3 = iBytesToint2;
            i4 = iBytesToint;
            for (int i11 = 0; i11 < 3; i11++) {
                int i12 = 7;
                while (i12 >= 0 && (i11 != 2 || i12 != 0)) {
                    int iGOST28147_mainStep4 = i3 ^ GOST28147_mainStep(i4, iArr[i12]);
                    i12--;
                    i3 = i4;
                    i4 = iGOST28147_mainStep4;
                }
            }
        }
        int iGOST28147_mainStep5 = GOST28147_mainStep(i4, iArr[0]) ^ i3;
        intTobytes(i4, bArr2, i2);
        intTobytes(iGOST28147_mainStep5, bArr2, i2 + 4);
    }

    private int bytesToint(byte[] bArr, int i) {
        return ((bArr[i + 3] << 24) & ViewCompat.MEASURED_STATE_MASK) + ((bArr[i + 2] << Tnaf.POW_2_WIDTH) & 16711680) + ((bArr[i + 1] << 8) & 65280) + (bArr[i] & 255);
    }

    private void intTobytes(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >>> 24);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2] = (byte) i;
    }

    public static byte[] getSBox(String str) {
        byte[] bArr = (byte[]) sBoxes.get(Strings.toUpperCase(str));
        if (bArr == null) {
            throw new IllegalArgumentException("Unknown S-Box - possible types: \"Default\", \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"D-Test\", \"D-A\".");
        }
        return Arrays.clone(bArr);
    }

    public static String getSBoxName(byte[] bArr) {
        Enumeration enumerationKeys = sBoxes.keys();
        while (enumerationKeys.hasMoreElements()) {
            String str = (String) enumerationKeys.nextElement();
            if (Arrays.areEqual((byte[]) sBoxes.get(str), bArr)) {
                return str;
            }
        }
        throw new IllegalArgumentException("SBOX provided did not map to a known one");
    }
}
