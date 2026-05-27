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
import org.spongycastle.bcpg.PublicSubkeyPacket;
import org.spongycastle.bcpg.SecretKeyPacket;
import org.spongycastle.bcpg.SecretSubkeyPacket;
import org.spongycastle.bcpg.TrustPacket;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.openpgp.operator.PBESecretKeyDecryptor;
import org.spongycastle.openpgp.operator.PBESecretKeyEncryptor;
import org.spongycastle.util.Iterable;

/* JADX INFO: loaded from: classes3.dex */
public class PGPSecretKeyRing extends PGPKeyRing implements Iterable<PGPSecretKey> {
    List extraPubKeys;
    List keys;

    PGPSecretKeyRing(List list) {
        this(list, new ArrayList());
    }

    private PGPSecretKeyRing(List list, List list2) {
        this.keys = list;
        this.extraPubKeys = list2;
    }

    public PGPSecretKeyRing(byte[] bArr, KeyFingerPrintCalculator keyFingerPrintCalculator) throws PGPException, IOException {
        this(new ByteArrayInputStream(bArr), keyFingerPrintCalculator);
    }

    public PGPSecretKeyRing(InputStream inputStream, KeyFingerPrintCalculator keyFingerPrintCalculator) throws PGPException, IOException {
        this.keys = new ArrayList();
        this.extraPubKeys = new ArrayList();
        BCPGInputStream bCPGInputStreamWrap = wrap(inputStream);
        int iNextPacketTag = bCPGInputStreamWrap.nextPacketTag();
        if (iNextPacketTag != 5 && iNextPacketTag != 7) {
            throw new IOException("secret key ring doesn't start with secret key tag: tag 0x" + Integer.toHexString(iNextPacketTag));
        }
        SecretKeyPacket secretKeyPacket = (SecretKeyPacket) bCPGInputStreamWrap.readPacket();
        while (bCPGInputStreamWrap.nextPacketTag() == 61) {
            bCPGInputStreamWrap.readPacket();
        }
        TrustPacket optionalTrustPacket = readOptionalTrustPacket(bCPGInputStreamWrap);
        List signaturesAndTrust = readSignaturesAndTrust(bCPGInputStreamWrap);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        readUserIDs(bCPGInputStreamWrap, arrayList, arrayList2, arrayList3);
        this.keys.add(new PGPSecretKey(secretKeyPacket, new PGPPublicKey(secretKeyPacket.getPublicKeyPacket(), optionalTrustPacket, signaturesAndTrust, arrayList, arrayList2, arrayList3, keyFingerPrintCalculator)));
        while (true) {
            if (bCPGInputStreamWrap.nextPacketTag() != 7 && bCPGInputStreamWrap.nextPacketTag() != 14) {
                return;
            }
            if (bCPGInputStreamWrap.nextPacketTag() == 7) {
                SecretSubkeyPacket secretSubkeyPacket = (SecretSubkeyPacket) bCPGInputStreamWrap.readPacket();
                while (bCPGInputStreamWrap.nextPacketTag() == 61) {
                    bCPGInputStreamWrap.readPacket();
                }
                this.keys.add(new PGPSecretKey(secretSubkeyPacket, new PGPPublicKey(secretSubkeyPacket.getPublicKeyPacket(), readOptionalTrustPacket(bCPGInputStreamWrap), readSignaturesAndTrust(bCPGInputStreamWrap), keyFingerPrintCalculator)));
            } else {
                this.extraPubKeys.add(new PGPPublicKey((PublicSubkeyPacket) bCPGInputStreamWrap.readPacket(), readOptionalTrustPacket(bCPGInputStreamWrap), readSignaturesAndTrust(bCPGInputStreamWrap), keyFingerPrintCalculator));
            }
        }
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public PGPPublicKey getPublicKey() {
        return ((PGPSecretKey) this.keys.get(0)).getPublicKey();
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public PGPPublicKey getPublicKey(long j) {
        PGPSecretKey secretKey = getSecretKey(j);
        if (secretKey != null) {
            return secretKey.getPublicKey();
        }
        for (int i = 0; i != this.extraPubKeys.size(); i++) {
            PGPPublicKey pGPPublicKey = (PGPPublicKey) this.keys.get(i);
            if (j == pGPPublicKey.getKeyID()) {
                return pGPPublicKey;
            }
        }
        return null;
    }

    @Override // org.spongycastle.openpgp.PGPKeyRing
    public Iterator<PGPPublicKey> getPublicKeys() {
        ArrayList arrayList = new ArrayList();
        Iterator<PGPSecretKey> secretKeys = getSecretKeys();
        while (secretKeys.hasNext()) {
            arrayList.add(secretKeys.next().getPublicKey());
        }
        arrayList.addAll(this.extraPubKeys);
        return Collections.unmodifiableList(arrayList).iterator();
    }

    public PGPSecretKey getSecretKey() {
        return (PGPSecretKey) this.keys.get(0);
    }

    public Iterator<PGPSecretKey> getSecretKeys() {
        return Collections.unmodifiableList(this.keys).iterator();
    }

    public PGPSecretKey getSecretKey(long j) {
        for (int i = 0; i != this.keys.size(); i++) {
            PGPSecretKey pGPSecretKey = (PGPSecretKey) this.keys.get(i);
            if (j == pGPSecretKey.getKeyID()) {
                return pGPSecretKey;
            }
        }
        return null;
    }

    public Iterator<PGPPublicKey> getExtraPublicKeys() {
        return this.extraPubKeys.iterator();
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
            ((PGPSecretKey) this.keys.get(i)).encode(outputStream);
        }
        for (int i2 = 0; i2 != this.extraPubKeys.size(); i2++) {
            ((PGPPublicKey) this.extraPubKeys.get(i2)).encode(outputStream);
        }
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<PGPSecretKey> iterator() {
        return getSecretKeys();
    }

    public static PGPSecretKeyRing replacePublicKeys(PGPSecretKeyRing pGPSecretKeyRing, PGPPublicKeyRing pGPPublicKeyRing) {
        ArrayList arrayList = new ArrayList(pGPSecretKeyRing.keys.size());
        for (PGPSecretKey pGPSecretKey : pGPSecretKeyRing.keys) {
            arrayList.add(PGPSecretKey.replacePublicKey(pGPSecretKey, pGPPublicKeyRing.getPublicKey(pGPSecretKey.getKeyID())));
        }
        return new PGPSecretKeyRing(arrayList);
    }

    public static PGPSecretKeyRing copyWithNewPassword(PGPSecretKeyRing pGPSecretKeyRing, PBESecretKeyDecryptor pBESecretKeyDecryptor, PBESecretKeyEncryptor pBESecretKeyEncryptor) throws PGPException {
        ArrayList arrayList = new ArrayList(pGPSecretKeyRing.keys.size());
        Iterator<PGPSecretKey> secretKeys = pGPSecretKeyRing.getSecretKeys();
        while (secretKeys.hasNext()) {
            PGPSecretKey next = secretKeys.next();
            if (next.isPrivateKeyEmpty()) {
                arrayList.add(next);
            } else {
                arrayList.add(PGPSecretKey.copyWithNewPassword(next, pBESecretKeyDecryptor, pBESecretKeyEncryptor));
            }
        }
        return new PGPSecretKeyRing(arrayList, pGPSecretKeyRing.extraPubKeys);
    }

    public static PGPSecretKeyRing insertSecretKey(PGPSecretKeyRing pGPSecretKeyRing, PGPSecretKey pGPSecretKey) {
        ArrayList arrayList = new ArrayList(pGPSecretKeyRing.keys);
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i != arrayList.size(); i++) {
            PGPSecretKey pGPSecretKey2 = (PGPSecretKey) arrayList.get(i);
            if (pGPSecretKey2.getKeyID() == pGPSecretKey.getKeyID()) {
                arrayList.set(i, pGPSecretKey);
                z = true;
            }
            if (pGPSecretKey2.isMasterKey()) {
                z2 = true;
            }
        }
        if (!z) {
            if (pGPSecretKey.isMasterKey()) {
                if (z2) {
                    throw new IllegalArgumentException("cannot add a master key to a ring that already has one");
                }
                arrayList.add(0, pGPSecretKey);
            } else {
                arrayList.add(pGPSecretKey);
            }
        }
        return new PGPSecretKeyRing(arrayList, pGPSecretKeyRing.extraPubKeys);
    }

    public static PGPSecretKeyRing removeSecretKey(PGPSecretKeyRing pGPSecretKeyRing, PGPSecretKey pGPSecretKey) {
        ArrayList arrayList = new ArrayList(pGPSecretKeyRing.keys);
        boolean z = false;
        for (int i = 0; i < arrayList.size(); i++) {
            if (((PGPSecretKey) arrayList.get(i)).getKeyID() == pGPSecretKey.getKeyID()) {
                arrayList.remove(i);
                z = true;
            }
        }
        if (z) {
            return new PGPSecretKeyRing(arrayList, pGPSecretKeyRing.extraPubKeys);
        }
        return null;
    }
}
