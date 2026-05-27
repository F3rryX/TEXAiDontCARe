package org.spongycastle.openpgp;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.bcpg.PublicKeyPacket;
import org.spongycastle.bcpg.TrustPacket;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.util.Iterable;

/* JADX INFO: loaded from: classes3.dex */
public class PGPPublicKeyRing extends PGPKeyRing implements Iterable<PGPPublicKey> {
    List keys;

    public PGPPublicKeyRing(byte[] bArr, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException {
        this(new ByteArrayInputStream(bArr), keyFingerPrintCalculator);
    }

    PGPPublicKeyRing(List list) {
        this.keys = list;
    }

    public PGPPublicKeyRing(InputStream inputStream, KeyFingerPrintCalculator keyFingerPrintCalculator) throws IOException {
        this.keys = new ArrayList();
        BCPGInputStream bCPGInputStreamWrap = wrap(inputStream);
        int iNextPacketTag = bCPGInputStreamWrap.nextPacketTag();
        if (iNextPacketTag != 6 && iNextPacketTag != 14) {
            throw new IOException("public key ring doesn't start with public key tag: tag 0x" + Integer.toHexString(iNextPacketTag));
        }
        PublicKeyPacket publicKeyPacket = (PublicKeyPacket) bCPGInputStreamWrap.readPacket();
        TrustPacket optionalTrustPacket = readOptionalTrustPacket(bCPGInputStreamWrap);
        List signaturesAndTrust = readSignaturesAndTrust(bCPGInputStreamWrap);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        readUserIDs(bCPGInputStreamWrap, arrayList, arrayList2, arrayList3);
        try {
            this.keys.add(new PGPPublicKey(publicKeyPacket, optionalTrustPacket, signaturesAndTrust, arrayList, arrayList2, arrayList3, keyFingerPrintCalculator));
            while (bCPGInputStreamWrap.nextPacketTag() == 14) {
                this.keys.add(readSubkey(bCPGInputStreamWrap, keyFingerPrintCalculator));
            }
        } catch (PGPException e) {
            throw new IOException("processing exception: " + e.toString());
        }
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public PGPPublicKey getPublicKey() {
        return (PGPPublicKey) this.keys.get(0);
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public PGPPublicKey getPublicKey(long j) {
        for (int i = 0; i != this.keys.size(); i++) {
            PGPPublicKey pGPPublicKey = (PGPPublicKey) this.keys.get(i);
            if (j == pGPPublicKey.getKeyID()) {
                return pGPPublicKey;
            }
        }
        return null;
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public Iterator<PGPPublicKey> getPublicKeys() {
        return Collections.unmodifiableList(this.keys).iterator();
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<PGPPublicKey> iterator() {
        return getPublicKeys();
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        encode(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public void encode(OutputStream outputStream) throws IOException {
        for (int i = 0; i != this.keys.size(); i++) {
            ((PGPPublicKey) this.keys.get(i)).encode(outputStream);
        }
    }

    public static PGPPublicKeyRing insertPublicKey(PGPPublicKeyRing pGPPublicKeyRing, PGPPublicKey pGPPublicKey) {
        ArrayList arrayList = new ArrayList(pGPPublicKeyRing.keys);
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i != arrayList.size(); i++) {
            PGPPublicKey pGPPublicKey2 = (PGPPublicKey) arrayList.get(i);
            if (pGPPublicKey2.getKeyID() == pGPPublicKey.getKeyID()) {
                arrayList.set(i, pGPPublicKey);
                z = true;
            }
            if (pGPPublicKey2.isMasterKey()) {
                z2 = true;
            }
        }
        if (!z) {
            if (pGPPublicKey.isMasterKey()) {
                if (z2) {
                    throw new IllegalArgumentException("cannot add a master key to a ring that already has one");
                }
                arrayList.add(0, pGPPublicKey);
            } else {
                arrayList.add(pGPPublicKey);
            }
        }
        return new PGPPublicKeyRing(arrayList);
    }

    public static PGPPublicKeyRing removePublicKey(PGPPublicKeyRing pGPPublicKeyRing, PGPPublicKey pGPPublicKey) {
        ArrayList arrayList = new ArrayList(pGPPublicKeyRing.keys);
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            if (((PGPPublicKey) arrayList.get(i)).getKeyID() == pGPPublicKey.getKeyID()) {
                arrayList.remove(i);
                z = true;
            }
        }
        if (z) {
            return new PGPPublicKeyRing(arrayList);
        }
        return null;
    }

    static PGPPublicKey readSubkey(BCPGInputStream bCPGInputStream, KeyFingerPrintCalculator keyFingerPrintCalculator) throws PGPException, IOException {
        return new PGPPublicKey((PublicKeyPacket) bCPGInputStream.readPacket(), readOptionalTrustPacket(bCPGInputStream), readSignaturesAndTrust(bCPGInputStream), keyFingerPrintCalculator);
    }
}
