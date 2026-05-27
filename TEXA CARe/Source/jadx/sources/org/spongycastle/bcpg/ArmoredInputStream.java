package org.spongycastle.bcpg;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import okio.Utf8;
import org.spongycastle.util.StringList;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes2.dex */
public class ArmoredInputStream extends InputStream {
    private static final byte[] decodingTable = new byte[128];
    int bufPtr;
    boolean clearText;
    CRC24 crc;
    boolean crcFound;
    boolean hasHeaders;
    String header;
    StringList headerList;
    InputStream in;
    boolean isEndOfStream;
    int lastC;
    boolean newLineFound;
    int[] outBuf;
    boolean restart;
    boolean start;

    static {
        for (int i = 65; i <= 90; i++) {
            decodingTable[i] = (byte) (i - 65);
        }
        for (int i2 = 97; i2 <= 122; i2++) {
            decodingTable[i2] = (byte) ((i2 - 97) + 26);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            decodingTable[i3] = (byte) ((i3 - 48) + 52);
        }
        byte[] bArr = decodingTable;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
    }

    private int decode(int i, int i2, int i3, int i4, int[] iArr) throws EOFException {
        if (i4 < 0) {
            throw new EOFException("unexpected end of file in armored stream.");
        }
        if (i3 == 61) {
            byte[] bArr = decodingTable;
            iArr[2] = (((bArr[i] & 255) << 2) | ((bArr[i2] & 255) >> 4)) & 255;
            return 2;
        }
        if (i4 == 61) {
            byte[] bArr2 = decodingTable;
            byte b = bArr2[i];
            byte b2 = bArr2[i2];
            byte b3 = bArr2[i3];
            iArr[1] = ((b << 2) | (b2 >> 4)) & 255;
            iArr[2] = ((b2 << 4) | (b3 >> 2)) & 255;
            return 1;
        }
        byte[] bArr3 = decodingTable;
        byte b4 = bArr3[i];
        byte b5 = bArr3[i2];
        byte b6 = bArr3[i3];
        byte b7 = bArr3[i4];
        iArr[0] = ((b4 << 2) | (b5 >> 4)) & 255;
        iArr[1] = ((b5 << 4) | (b6 >> 2)) & 255;
        iArr[2] = ((b6 << 6) | b7) & 255;
        return 0;
    }

    public ArmoredInputStream(InputStream inputStream) throws IOException {
        this(inputStream, true);
    }

    public ArmoredInputStream(InputStream inputStream, boolean z) throws IOException {
        this.start = true;
        this.outBuf = new int[3];
        this.bufPtr = 3;
        this.crc = new CRC24();
        this.crcFound = false;
        this.hasHeaders = true;
        this.header = null;
        this.newLineFound = false;
        this.clearText = false;
        this.restart = false;
        this.headerList = Strings.newList();
        this.lastC = 0;
        this.in = inputStream;
        this.hasHeaders = z;
        if (z) {
            parseHeaders();
        }
        this.start = false;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.in.available();
    }

    private boolean parseHeaders() throws IOException {
        int i;
        boolean z;
        this.header = null;
        this.headerList = Strings.newList();
        if (!this.restart) {
            i = 0;
            while (true) {
                int i2 = this.in.read();
                if (i2 < 0) {
                    z = false;
                    break;
                }
                if (i2 == 45 && (i == 0 || i == 10 || i == 13)) {
                    break;
                }
                i = i2;
            }
        } else {
            i = 0;
        }
        z = true;
        if (z) {
            StringBuffer stringBuffer = new StringBuffer("-");
            if (this.restart) {
                stringBuffer.append('-');
            }
            boolean z2 = false;
            boolean z3 = false;
            while (true) {
                int i3 = this.in.read();
                if (i3 >= 0) {
                    if (i == 13 && i3 == 10) {
                        z3 = true;
                    }
                    if ((z2 && i != 13 && i3 == 10) || (z2 && i3 == 13)) {
                        break;
                    }
                    if (i3 == 13 || (i != 13 && i3 == 10)) {
                        String string = stringBuffer.toString();
                        if (string.trim().length() == 0) {
                            break;
                        }
                        this.headerList.add(string);
                        stringBuffer.setLength(0);
                    }
                    if (i3 != 10 && i3 != 13) {
                        stringBuffer.append((char) i3);
                        z2 = false;
                    } else if (i3 == 13 || (i != 13 && i3 == 10)) {
                        z2 = true;
                    }
                    i = i3;
                } else {
                    break;
                }
            }
            if (z3) {
                this.in.read();
            }
        }
        if (this.headerList.size() > 0) {
            this.header = this.headerList.get(0);
        }
        this.clearText = "-----BEGIN PGP SIGNED MESSAGE-----".equals(this.header);
        this.newLineFound = true;
        return z;
    }

    public boolean isClearText() {
        return this.clearText;
    }

    public boolean isEndOfStream() {
        return this.isEndOfStream;
    }

    public String getArmorHeaderLine() {
        return this.header;
    }

    public String[] getArmorHeaders() {
        if (this.headerList.size() <= 1) {
            return null;
        }
        StringList stringList = this.headerList;
        return stringList.toStringArray(1, stringList.size());
    }

    private int readIgnoreSpace() throws IOException {
        int i = this.in.read();
        while (true) {
            if (i != 32 && i != 9) {
                return i;
            }
            i = this.in.read();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i;
        if (this.start) {
            if (this.hasHeaders) {
                parseHeaders();
            }
            this.crc.reset();
            this.start = false;
        }
        if (this.clearText) {
            int i2 = this.in.read();
            if (i2 == 13 || (i2 == 10 && this.lastC != 13)) {
                this.newLineFound = true;
            } else if (this.newLineFound && i2 == 45) {
                i2 = this.in.read();
                if (i2 == 45) {
                    this.clearText = false;
                    this.start = true;
                    this.restart = true;
                } else {
                    i2 = this.in.read();
                }
                this.newLineFound = false;
            } else if (i2 != 10 && this.lastC != 13) {
                this.newLineFound = false;
            }
            this.lastC = i2;
            if (i2 < 0) {
                this.isEndOfStream = true;
            }
            return i2;
        }
        if (this.bufPtr > 2 || this.crcFound) {
            int ignoreSpace = readIgnoreSpace();
            if (ignoreSpace == 13 || ignoreSpace == 10) {
                int ignoreSpace2 = readIgnoreSpace();
                while (true) {
                    if (ignoreSpace2 != 10 && ignoreSpace2 != 13) {
                        break;
                    }
                    ignoreSpace2 = readIgnoreSpace();
                }
                if (ignoreSpace2 < 0) {
                    this.isEndOfStream = true;
                    return -1;
                }
                if (ignoreSpace2 == 61) {
                    int iDecode = decode(readIgnoreSpace(), readIgnoreSpace(), readIgnoreSpace(), readIgnoreSpace(), this.outBuf);
                    this.bufPtr = iDecode;
                    if (iDecode == 0) {
                        int[] iArr = this.outBuf;
                        int i3 = (iArr[2] & 255) | ((iArr[0] & 255) << 16) | ((iArr[1] & 255) << 8);
                        this.crcFound = true;
                        if (i3 != this.crc.getValue()) {
                            throw new IOException("crc check failed in armored message.");
                        }
                        return read();
                    }
                    throw new IOException("no crc found in armored message.");
                }
                if (ignoreSpace2 == 45) {
                    do {
                        i = this.in.read();
                        if (i < 0 || i == 10) {
                            break;
                        }
                    } while (i != 13);
                    if (!this.crcFound) {
                        throw new IOException("crc check not found.");
                    }
                    this.crcFound = false;
                    this.start = true;
                    this.bufPtr = 3;
                    if (i < 0) {
                        this.isEndOfStream = true;
                    }
                    return -1;
                }
                this.bufPtr = decode(ignoreSpace2, readIgnoreSpace(), readIgnoreSpace(), readIgnoreSpace(), this.outBuf);
            } else if (ignoreSpace >= 0) {
                this.bufPtr = decode(ignoreSpace, readIgnoreSpace(), readIgnoreSpace(), readIgnoreSpace(), this.outBuf);
            } else {
                this.isEndOfStream = true;
                return -1;
            }
        }
        int[] iArr2 = this.outBuf;
        int i4 = this.bufPtr;
        this.bufPtr = i4 + 1;
        int i5 = iArr2[i4];
        this.crc.update(i5);
        return i5;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }
}
