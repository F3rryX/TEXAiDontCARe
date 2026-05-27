package org.spongycastle.apache.bzip2;

import androidx.core.view.InputDeviceCompat;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public class CBZip2InputStream extends InputStream implements BZip2Constants {
    private static final int NO_RAND_PART_A_STATE = 5;
    private static final int NO_RAND_PART_B_STATE = 6;
    private static final int NO_RAND_PART_C_STATE = 7;
    private static final int RAND_PART_A_STATE = 2;
    private static final int RAND_PART_B_STATE = 3;
    private static final int RAND_PART_C_STATE = 4;
    private static final int START_BLOCK_STATE = 1;
    private boolean blockRandomised;
    private int blockSize100k;
    private int bsBuff;
    private int bsLive;
    private InputStream bsStream;
    int ch2;
    int chPrev;
    private int computedBlockCRC;
    private int computedCombinedCRC;
    int count;
    int i;
    int i2;
    int j2;
    private int last;
    private int nInUse;
    private int origPtr;
    private int storedBlockCRC;
    private int storedCombinedCRC;
    int tPos;
    char z;
    private CRC mCrc = new CRC();
    private boolean[] inUse = new boolean[256];
    private char[] seqToUnseq = new char[256];
    private char[] unseqToSeq = new char[256];
    private char[] selector = new char[BZip2Constants.MAX_SELECTORS];
    private char[] selectorMtf = new char[BZip2Constants.MAX_SELECTORS];
    private int[] unzftab = new int[256];
    private int[][] limit = (int[][]) Array.newInstance((Class<?>) int.class, 6, BZip2Constants.MAX_ALPHA_SIZE);
    private int[][] base = (int[][]) Array.newInstance((Class<?>) int.class, 6, BZip2Constants.MAX_ALPHA_SIZE);
    private int[][] perm = (int[][]) Array.newInstance((Class<?>) int.class, 6, BZip2Constants.MAX_ALPHA_SIZE);
    private int[] minLens = new int[6];
    private boolean streamEnd = false;
    private int currentChar = -1;
    private int currentState = 1;
    int rNToGo = 0;
    int rTPos = 0;
    private char[] ll8 = null;
    private int[] tt = null;

    private static void cadvise() {
        System.out.println("CRC Error");
    }

    private static void compressedStreamEOF() {
        cadvise();
    }

    private void makeMaps() {
        this.nInUse = 0;
        for (int i = 0; i < 256; i++) {
            if (this.inUse[i]) {
                char[] cArr = this.seqToUnseq;
                int i2 = this.nInUse;
                cArr[i2] = (char) i;
                this.unseqToSeq[i] = (char) i2;
                this.nInUse = i2 + 1;
            }
        }
    }

    public CBZip2InputStream(InputStream inputStream) throws IOException {
        bsSetStream(inputStream);
        initialize();
        initBlock();
        setupBlock();
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.streamEnd) {
            return -1;
        }
        int i = this.currentChar;
        int i2 = this.currentState;
        if (i2 == 3) {
            setupRandPartB();
        } else if (i2 == 4) {
            setupRandPartC();
        } else if (i2 == 6) {
            setupNoRandPartB();
        } else if (i2 == 7) {
            setupNoRandPartC();
        }
        return i;
    }

    private void initialize() throws IOException {
        char cBsGetUChar = bsGetUChar();
        char cBsGetUChar2 = bsGetUChar();
        if (cBsGetUChar != 'B' && cBsGetUChar2 != 'Z') {
            throw new IOException("Not a BZIP2 marked stream");
        }
        char cBsGetUChar3 = bsGetUChar();
        char cBsGetUChar4 = bsGetUChar();
        if (cBsGetUChar3 != 'h' || cBsGetUChar4 < '1' || cBsGetUChar4 > '9') {
            bsFinishedWithStream();
            this.streamEnd = true;
        } else {
            setDecompressStructureSizes(cBsGetUChar4 - '0');
            this.computedCombinedCRC = 0;
        }
    }

    private void initBlock() {
        char cBsGetUChar = bsGetUChar();
        char cBsGetUChar2 = bsGetUChar();
        char cBsGetUChar3 = bsGetUChar();
        char cBsGetUChar4 = bsGetUChar();
        char cBsGetUChar5 = bsGetUChar();
        char cBsGetUChar6 = bsGetUChar();
        if (cBsGetUChar == 23 && cBsGetUChar2 == 'r' && cBsGetUChar3 == 'E' && cBsGetUChar4 == '8' && cBsGetUChar5 == 'P' && cBsGetUChar6 == 144) {
            complete();
            return;
        }
        if (cBsGetUChar != '1' || cBsGetUChar2 != 'A' || cBsGetUChar3 != 'Y' || cBsGetUChar4 != '&' || cBsGetUChar5 != 'S' || cBsGetUChar6 != 'Y') {
            badBlockHeader();
            this.streamEnd = true;
            return;
        }
        this.storedBlockCRC = bsGetInt32();
        if (bsR(1) == 1) {
            this.blockRandomised = true;
        } else {
            this.blockRandomised = false;
        }
        getAndMoveToFrontDecode();
        this.mCrc.initialiseCRC();
        this.currentState = 1;
    }

    private void endBlock() {
        int finalCRC = this.mCrc.getFinalCRC();
        this.computedBlockCRC = finalCRC;
        if (this.storedBlockCRC != finalCRC) {
            crcError();
        }
        int i = this.computedCombinedCRC;
        int i2 = (i >>> 31) | (i << 1);
        this.computedCombinedCRC = i2;
        this.computedCombinedCRC = i2 ^ this.computedBlockCRC;
    }

    private void complete() {
        int iBsGetInt32 = bsGetInt32();
        this.storedCombinedCRC = iBsGetInt32;
        if (iBsGetInt32 != this.computedCombinedCRC) {
            crcError();
        }
        bsFinishedWithStream();
        this.streamEnd = true;
    }

    private static void blockOverrun() {
        cadvise();
    }

    private static void badBlockHeader() {
        cadvise();
    }

    private static void crcError() {
        cadvise();
    }

    private void bsFinishedWithStream() {
        try {
            InputStream inputStream = this.bsStream;
            if (inputStream == null || inputStream == System.in) {
                return;
            }
            this.bsStream.close();
            this.bsStream = null;
        } catch (IOException unused) {
        }
    }

    private void bsSetStream(InputStream inputStream) {
        this.bsStream = inputStream;
        this.bsLive = 0;
        this.bsBuff = 0;
    }

    private int bsR(int i) {
        while (true) {
            int i2 = this.bsLive;
            if (i2 < i) {
                char c = 0;
                try {
                    c = (char) this.bsStream.read();
                } catch (IOException unused) {
                    compressedStreamEOF();
                }
                if (c == 65535) {
                    compressedStreamEOF();
                }
                this.bsBuff = (c & 255) | (this.bsBuff << 8);
                this.bsLive += 8;
            } else {
                int i3 = (this.bsBuff >> (i2 - i)) & ((1 << i) - 1);
                this.bsLive = i2 - i;
                return i3;
            }
        }
    }

    private char bsGetUChar() {
        return (char) bsR(8);
    }

    private int bsGetint() {
        return bsR(8) | ((((((bsR(8) | 0) << 8) | bsR(8)) << 8) | bsR(8)) << 8);
    }

    private int bsGetIntVS(int i) {
        return bsR(i);
    }

    private int bsGetInt32() {
        return bsGetint();
    }

    private void hbCreateDecodeTables(int[] iArr, int[] iArr2, int[] iArr3, char[] cArr, int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 <= i2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                if (cArr[i7] == i6) {
                    iArr3[i5] = i7;
                    i5++;
                }
            }
        }
        for (int i8 = 0; i8 < 23; i8++) {
            iArr2[i8] = 0;
        }
        for (int i9 = 0; i9 < i3; i9++) {
            int i10 = cArr[i9] + 1;
            iArr2[i10] = iArr2[i10] + 1;
        }
        for (int i11 = 1; i11 < 23; i11++) {
            iArr2[i11] = iArr2[i11] + iArr2[i11 - 1];
        }
        for (int i12 = 0; i12 < 23; i12++) {
            iArr[i12] = 0;
        }
        int i13 = i;
        while (i13 <= i2) {
            int i14 = i13 + 1;
            int i15 = i4 + (iArr2[i14] - iArr2[i13]);
            iArr[i13] = i15 - 1;
            i4 = i15 << 1;
            i13 = i14;
        }
        for (int i16 = i + 1; i16 <= i2; i16++) {
            iArr2[i16] = ((iArr[i16 - 1] + 1) << 1) - iArr2[i16];
        }
    }

    private void recvDecodingTables() {
        char[][] cArr = (char[][]) Array.newInstance((Class<?>) char.class, 6, BZip2Constants.MAX_ALPHA_SIZE);
        boolean[] zArr = new boolean[16];
        for (int i = 0; i < 16; i++) {
            if (bsR(1) == 1) {
                zArr[i] = true;
            } else {
                zArr[i] = false;
            }
        }
        for (int i2 = 0; i2 < 256; i2++) {
            this.inUse[i2] = false;
        }
        for (int i3 = 0; i3 < 16; i3++) {
            if (zArr[i3]) {
                for (int i4 = 0; i4 < 16; i4++) {
                    if (bsR(1) == 1) {
                        this.inUse[(i3 * 16) + i4] = true;
                    }
                }
            }
        }
        makeMaps();
        int i5 = this.nInUse + 2;
        int iBsR = bsR(3);
        int iBsR2 = bsR(15);
        for (int i6 = 0; i6 < iBsR2; i6++) {
            int i7 = 0;
            while (bsR(1) == 1) {
                i7++;
            }
            this.selectorMtf[i6] = (char) i7;
        }
        char[] cArr2 = new char[6];
        for (char c = 0; c < iBsR; c = (char) (c + 1)) {
            cArr2[c] = c;
        }
        for (int i8 = 0; i8 < iBsR2; i8++) {
            char c2 = this.selectorMtf[i8];
            char c3 = cArr2[c2];
            while (c2 > 0) {
                int i9 = c2 - 1;
                cArr2[c2] = cArr2[i9];
                c2 = (char) i9;
            }
            cArr2[0] = c3;
            this.selector[i8] = c3;
        }
        for (int i10 = 0; i10 < iBsR; i10++) {
            int iBsR3 = bsR(5);
            for (int i11 = 0; i11 < i5; i11++) {
                while (bsR(1) == 1) {
                    iBsR3 = bsR(1) == 0 ? iBsR3 + 1 : iBsR3 - 1;
                }
                cArr[i10][i11] = (char) iBsR3;
            }
        }
        for (int i12 = 0; i12 < iBsR; i12++) {
            char c4 = ' ';
            char c5 = 0;
            for (int i13 = 0; i13 < i5; i13++) {
                if (cArr[i12][i13] > c5) {
                    c5 = cArr[i12][i13];
                }
                if (cArr[i12][i13] < c4) {
                    c4 = cArr[i12][i13];
                }
            }
            hbCreateDecodeTables(this.limit[i12], this.base[i12], this.perm[i12], cArr[i12], c4, c5, i5);
            this.minLens[i12] = c4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void getAndMoveToFrontDecode() {
        char c;
        int i;
        char c2;
        int i2;
        int iBsR;
        int i3;
        char c3;
        int i4;
        char c4;
        int i5;
        char c5;
        char[] cArr = new char[256];
        int i6 = this.blockSize100k * BZip2Constants.baseBlockSize;
        this.origPtr = bsGetIntVS(24);
        recvDecodingTables();
        int i7 = this.nInUse + 1;
        int i8 = 0;
        while (true) {
            c = 255;
            if (i8 > 255) {
                break;
            }
            this.unzftab[i8] = 0;
            i8++;
        }
        for (int i9 = 0; i9 <= 255; i9++) {
            cArr[i9] = (char) i9;
        }
        int i10 = -1;
        this.last = -1;
        int i11 = 49;
        char c6 = this.selector[0];
        int i12 = this.minLens[c6];
        int iBsR2 = bsR(i12);
        while (iBsR2 > this.limit[c6][i12]) {
            i12++;
            while (true) {
                i5 = this.bsLive;
                if (i5 < 1) {
                    try {
                        c5 = (char) this.bsStream.read();
                    } catch (IOException unused) {
                        compressedStreamEOF();
                        c5 = 0;
                    }
                    if (c5 == 65535) {
                        compressedStreamEOF();
                    }
                    this.bsBuff = (c5 & 255) | (this.bsBuff << 8);
                    this.bsLive += 8;
                }
            }
            int i13 = (this.bsBuff >> (i5 - 1)) & 1;
            this.bsLive = i5 - 1;
            iBsR2 = (iBsR2 << 1) | i13;
        }
        int i14 = this.perm[c6][iBsR2 - this.base[c6][i12]];
        int i15 = 0;
        while (i14 != i7) {
            if (i14 == 0 || i14 == 1) {
                int i16 = -1;
                int i17 = 1;
                while (true) {
                    if (i14 != 0) {
                        if (i14 == 1) {
                            i = i17 * 2;
                        }
                        i17 *= 2;
                        if (i11 == 0) {
                            i15++;
                            i11 = 50;
                        }
                        i11 += i10;
                        c2 = this.selector[i15];
                        i2 = this.minLens[c2];
                        iBsR = bsR(i2);
                        while (iBsR > this.limit[c2][i2]) {
                            i2++;
                            while (true) {
                                i3 = this.bsLive;
                                if (i3 < 1) {
                                    try {
                                        c3 = (char) this.bsStream.read();
                                    } catch (IOException unused2) {
                                        compressedStreamEOF();
                                        c3 = 0;
                                    }
                                    if (c3 == i10) {
                                        compressedStreamEOF();
                                    }
                                    this.bsBuff = (this.bsBuff << 8) | (c3 & 255);
                                    this.bsLive += 8;
                                    i10 = -1;
                                }
                            }
                            int i18 = (this.bsBuff >> (i3 - 1)) & 1;
                            this.bsLive = i3 - 1;
                            iBsR = (iBsR << 1) | i18;
                            i10 = -1;
                        }
                        i14 = this.perm[c2][iBsR - this.base[c2][i2]];
                        if (i14 == 0 && i14 != 1) {
                            break;
                        } else {
                            i10 = -1;
                        }
                    } else {
                        i = i17 * 1;
                    }
                    i16 += i;
                    i17 *= 2;
                    if (i11 == 0) {
                    }
                    i11 += i10;
                    c2 = this.selector[i15];
                    i2 = this.minLens[c2];
                    iBsR = bsR(i2);
                    while (iBsR > this.limit[c2][i2]) {
                    }
                    i14 = this.perm[c2][iBsR - this.base[c2][i2]];
                    if (i14 == 0) {
                    }
                    i10 = -1;
                }
                int i19 = i16 + 1;
                char c7 = this.seqToUnseq[cArr[0]];
                int[] iArr = this.unzftab;
                iArr[c7] = iArr[c7] + i19;
                while (i19 > 0) {
                    int i20 = this.last + 1;
                    this.last = i20;
                    this.ll8[i20] = c7;
                    i19--;
                }
                if (this.last >= i6) {
                    blockOverrun();
                }
                i10 = -1;
                c = 255;
            } else {
                int i21 = this.last + 1;
                this.last = i21;
                if (i21 >= i6) {
                    blockOverrun();
                }
                int i22 = i14 - 1;
                char c8 = cArr[i22];
                int[] iArr2 = this.unzftab;
                char[] cArr2 = this.seqToUnseq;
                char c9 = cArr2[c8];
                iArr2[c9] = iArr2[c9] + 1;
                this.ll8[this.last] = cArr2[c8];
                while (i22 > 3) {
                    int i23 = i22 - 1;
                    cArr[i22] = cArr[i23];
                    int i24 = i22 - 2;
                    cArr[i23] = cArr[i24];
                    int i25 = i22 - 3;
                    cArr[i24] = cArr[i25];
                    cArr[i25] = cArr[i22 - 4];
                    i22 -= 4;
                }
                while (i22 > 0) {
                    cArr[i22] = cArr[i22 - 1];
                    i22--;
                }
                cArr[0] = c8;
                if (i11 == 0) {
                    i15++;
                    i11 = 50;
                }
                i11 += i10;
                char c10 = this.selector[i15];
                int i26 = this.minLens[c10];
                int iBsR3 = bsR(i26);
                while (iBsR3 > this.limit[c10][i26]) {
                    i26++;
                    while (true) {
                        i4 = this.bsLive;
                        if (i4 < 1) {
                            try {
                                c4 = (char) this.bsStream.read();
                            } catch (IOException unused3) {
                                compressedStreamEOF();
                                c4 = 0;
                            }
                            this.bsBuff = (c4 & c) | (this.bsBuff << 8);
                            this.bsLive += 8;
                        }
                    }
                    int i27 = (this.bsBuff >> (i4 - 1)) & 1;
                    this.bsLive = i4 - 1;
                    iBsR3 = (iBsR3 << 1) | i27;
                }
                i14 = this.perm[c10][iBsR3 - this.base[c10][i26]];
            }
        }
    }

    private void setupBlock() {
        int[] iArr = new int[InputDeviceCompat.SOURCE_KEYBOARD];
        iArr[0] = 0;
        this.i = 1;
        while (true) {
            int i = this.i;
            if (i > 256) {
                break;
            }
            iArr[i] = this.unzftab[i - 1];
            this.i = i + 1;
        }
        this.i = 1;
        while (true) {
            int i2 = this.i;
            if (i2 > 256) {
                break;
            }
            iArr[i2] = iArr[i2] + iArr[i2 - 1];
            this.i = i2 + 1;
        }
        this.i = 0;
        while (true) {
            int i3 = this.i;
            if (i3 > this.last) {
                break;
            }
            char c = this.ll8[i3];
            this.tt[iArr[c]] = i3;
            iArr[c] = iArr[c] + 1;
            this.i = i3 + 1;
        }
        this.tPos = this.tt[this.origPtr];
        this.count = 0;
        this.i2 = 0;
        this.ch2 = 256;
        if (this.blockRandomised) {
            this.rNToGo = 0;
            this.rTPos = 0;
            setupRandPartA();
            return;
        }
        setupNoRandPartA();
    }

    private void setupRandPartA() {
        if (this.i2 <= this.last) {
            this.chPrev = this.ch2;
            char[] cArr = this.ll8;
            int i = this.tPos;
            this.ch2 = cArr[i];
            this.tPos = this.tt[i];
            if (this.rNToGo == 0) {
                int[] iArr = rNums;
                int i2 = this.rTPos;
                this.rNToGo = iArr[i2];
                int i3 = i2 + 1;
                this.rTPos = i3;
                if (i3 == 512) {
                    this.rTPos = 0;
                }
            }
            int i4 = this.rNToGo - 1;
            this.rNToGo = i4;
            int i5 = this.ch2 ^ (i4 == 1 ? 1 : 0);
            this.ch2 = i5;
            this.i2++;
            this.currentChar = i5;
            this.currentState = 3;
            this.mCrc.updateCRC(i5);
            return;
        }
        endBlock();
        initBlock();
        setupBlock();
    }

    private void setupNoRandPartA() {
        int i = this.i2;
        if (i <= this.last) {
            this.chPrev = this.ch2;
            char[] cArr = this.ll8;
            int i2 = this.tPos;
            char c = cArr[i2];
            this.ch2 = c;
            this.tPos = this.tt[i2];
            this.i2 = i + 1;
            this.currentChar = c;
            this.currentState = 6;
            this.mCrc.updateCRC(c);
            return;
        }
        endBlock();
        initBlock();
        setupBlock();
    }

    private void setupRandPartB() {
        if (this.ch2 != this.chPrev) {
            this.currentState = 2;
            this.count = 1;
            setupRandPartA();
            return;
        }
        int i = this.count + 1;
        this.count = i;
        if (i >= 4) {
            char[] cArr = this.ll8;
            int i2 = this.tPos;
            this.z = cArr[i2];
            this.tPos = this.tt[i2];
            if (this.rNToGo == 0) {
                int[] iArr = rNums;
                int i3 = this.rTPos;
                this.rNToGo = iArr[i3];
                int i4 = i3 + 1;
                this.rTPos = i4;
                if (i4 == 512) {
                    this.rTPos = 0;
                }
            }
            int i5 = this.rNToGo - 1;
            this.rNToGo = i5;
            this.z = (char) (this.z ^ (i5 != 1 ? (char) 0 : (char) 1));
            this.j2 = 0;
            this.currentState = 4;
            setupRandPartC();
            return;
        }
        this.currentState = 2;
        setupRandPartA();
    }

    private void setupRandPartC() {
        if (this.j2 < this.z) {
            int i = this.ch2;
            this.currentChar = i;
            this.mCrc.updateCRC(i);
            this.j2++;
            return;
        }
        this.currentState = 2;
        this.i2++;
        this.count = 0;
        setupRandPartA();
    }

    private void setupNoRandPartB() {
        if (this.ch2 != this.chPrev) {
            this.currentState = 5;
            this.count = 1;
            setupNoRandPartA();
            return;
        }
        int i = this.count + 1;
        this.count = i;
        if (i >= 4) {
            char[] cArr = this.ll8;
            int i2 = this.tPos;
            this.z = cArr[i2];
            this.tPos = this.tt[i2];
            this.currentState = 7;
            this.j2 = 0;
            setupNoRandPartC();
            return;
        }
        this.currentState = 5;
        setupNoRandPartA();
    }

    private void setupNoRandPartC() {
        if (this.j2 < this.z) {
            int i = this.ch2;
            this.currentChar = i;
            this.mCrc.updateCRC(i);
            this.j2++;
            return;
        }
        this.currentState = 5;
        this.i2++;
        this.count = 0;
        setupNoRandPartA();
    }

    private void setDecompressStructureSizes(int i) {
        if (i >= 0) {
        }
        this.blockSize100k = i;
        if (i == 0) {
            return;
        }
        int i2 = i * BZip2Constants.baseBlockSize;
        this.ll8 = new char[i2];
        this.tt = new int[i2];
    }
}
