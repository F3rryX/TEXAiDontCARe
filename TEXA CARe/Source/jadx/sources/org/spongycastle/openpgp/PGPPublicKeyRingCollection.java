package org.spongycastle.openpgp;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.util.Iterable;
import org.spongycastle.util.Strings;

/* JADX INFO: loaded from: classes3.dex */
public class PGPPublicKeyRingCollection implements Iterable<PGPPublicKeyRing> {
    private List order;
    private Map pubRings;

    private PGPPublicKeyRingCollection(Map map, List list) {
        this.pubRings = new HashMap();
        this.order = new ArrayList();
        this.pubRings = map;
        this.order = list;
    }

    public PGPPublicKeyRingCollection(byte[] bArr, KeyFingerPrintCalculator keyFingerPrintCalculator) throws PGPException, IOException {
        this(new ByteArrayInputStream(bArr), keyFingerPrintCalculator);
    }

    public PGPPublicKeyRingCollection(InputStream inputStream, KeyFingerPrintCalculator keyFingerPrintCalculator) throws PGPException, IOException {
        this.pubRings = new HashMap();
        this.order = new ArrayList();
        PGPObjectFactory pGPObjectFactory = new PGPObjectFactory(inputStream, keyFingerPrintCalculator);
        while (true) {
            Object objNextObject = pGPObjectFactory.nextObject();
            if (objNextObject == null) {
                return;
            }
            if (!(objNextObject instanceof PGPPublicKeyRing)) {
                throw new PGPException(objNextObject.getClass().getName() + " found where PGPPublicKeyRing expected");
            }
            PGPPublicKeyRing pGPPublicKeyRing = (PGPPublicKeyRing) objNextObject;
            Long l = new Long(pGPPublicKeyRing.getPublicKey().getKeyID());
            this.pubRings.put(l, pGPPublicKeyRing);
            this.order.add(l);
        }
    }

    public PGPPublicKeyRingCollection(Collection<PGPPublicKeyRing> collection) throws PGPException, IOException {
        this.pubRings = new HashMap();
        this.order = new ArrayList();
        for (PGPPublicKeyRing pGPPublicKeyRing : collection) {
            Long l = new Long(pGPPublicKeyRing.getPublicKey().getKeyID());
            this.pubRings.put(l, pGPPublicKeyRing);
            this.order.add(l);
        }
    }

    public int size() {
        return this.order.size();
    }

    public Iterator<PGPPublicKeyRing> getKeyRings() {
        return this.pubRings.values().iterator();
    }

    public Iterator<PGPPublicKeyRing> getKeyRings(String str) throws PGPException {
        return getKeyRings(str, false, false);
    }

    public Iterator<PGPPublicKeyRing> getKeyRings(String str, boolean z) throws PGPException {
        return getKeyRings(str, z, false);
    }

    public Iterator<PGPPublicKeyRing> getKeyRings(String str, boolean z, boolean z2) throws PGPException {
        Iterator<PGPPublicKeyRing> keyRings = getKeyRings();
        ArrayList arrayList = new ArrayList();
        if (z2) {
            str = Strings.toLowerCase(str);
        }
        while (keyRings.hasNext()) {
            PGPPublicKeyRing next = keyRings.next();
            Iterator userIDs = next.getPublicKey().getUserIDs();
            while (userIDs.hasNext()) {
                String lowerCase = (String) userIDs.next();
                if (z2) {
                    lowerCase = Strings.toLowerCase(lowerCase);
                }
                if (z) {
                    if (lowerCase.indexOf(str) > -1) {
                        arrayList.add(next);
                    }
                } else if (lowerCase.equals(str)) {
                    arrayList.add(next);
                }
            }
        }
        return arrayList.iterator();
    }

    public PGPPublicKey getPublicKey(long j) throws PGPException {
        Iterator<PGPPublicKeyRing> keyRings = getKeyRings();
        while (keyRings.hasNext()) {
            PGPPublicKey publicKey = keyRings.next().getPublicKey(j);
            if (publicKey != null) {
                return publicKey;
            }
        }
        return null;
    }

    public PGPPublicKeyRing getPublicKeyRing(long j) throws PGPException {
        Long l = new Long(j);
        if (this.pubRings.containsKey(l)) {
            return (PGPPublicKeyRing) this.pubRings.get(l);
        }
        Iterator<PGPPublicKeyRing> keyRings = getKeyRings();
        while (keyRings.hasNext()) {
            PGPPublicKeyRing next = keyRings.next();
            if (next.getPublicKey(j) != null) {
                return next;
            }
        }
        return null;
    }

    public boolean contains(long j) throws PGPException {
        return getPublicKey(j) != null;
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        encode(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public void encode(OutputStream outputStream) throws IOException {
        BCPGOutputStream bCPGOutputStream;
        if (outputStream instanceof BCPGOutputStream) {
            bCPGOutputStream = (BCPGOutputStream) outputStream;
        } else {
            bCPGOutputStream = new BCPGOutputStream(outputStream);
        }
        Iterator it = this.order.iterator();
        while (it.hasNext()) {
            ((PGPPublicKeyRing) this.pubRings.get(it.next())).encode(bCPGOutputStream);
        }
    }

    public static PGPPublicKeyRingCollection addPublicKeyRing(PGPPublicKeyRingCollection pGPPublicKeyRingCollection, PGPPublicKeyRing pGPPublicKeyRing) {
        Long l = new Long(pGPPublicKeyRing.getPublicKey().getKeyID());
        if (pGPPublicKeyRingCollection.pubRings.containsKey(l)) {
            throw new IllegalArgumentException("Collection already contains a key with a keyID for the passed in ring.");
        }
        HashMap map = new HashMap(pGPPublicKeyRingCollection.pubRings);
        ArrayList arrayList = new ArrayList(pGPPublicKeyRingCollection.order);
        map.put(l, pGPPublicKeyRing);
        arrayList.add(l);
        return new PGPPublicKeyRingCollection(map, arrayList);
    }

    public static PGPPublicKeyRingCollection removePublicKeyRing(PGPPublicKeyRingCollection pGPPublicKeyRingCollection, PGPPublicKeyRing pGPPublicKeyRing) {
        Long l = new Long(pGPPublicKeyRing.getPublicKey().getKeyID());
        if (!pGPPublicKeyRingCollection.pubRings.containsKey(l)) {
            throw new IllegalArgumentException("Collection does not contain a key with a keyID for the passed in ring.");
        }
        HashMap map = new HashMap(pGPPublicKeyRingCollection.pubRings);
        ArrayList arrayList = new ArrayList(pGPPublicKeyRingCollection.order);
        map.remove(l);
        int i = 0;
        while (true) {
            if (i >= arrayList.size()) {
                break;
            }
            if (((Long) arrayList.get(i)).longValue() == l.longValue()) {
                arrayList.remove(i);
                break;
            }
            i++;
        }
        return new PGPPublicKeyRingCollection(map, arrayList);
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<PGPPublicKeyRing> iterator() {
        return this.pubRings.values().iterator();
    }
}
