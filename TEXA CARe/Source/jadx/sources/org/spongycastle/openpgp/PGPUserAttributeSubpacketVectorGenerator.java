package org.spongycastle.openpgp;

import java.util.ArrayList;
import java.util.List;
import org.spongycastle.bcpg.UserAttributeSubpacket;
import org.spongycastle.bcpg.attr.ImageAttribute;

/* JADX INFO: loaded from: classes3.dex */
public class PGPUserAttributeSubpacketVectorGenerator {
    private List list = new ArrayList();

    public void setImageAttribute(int i, byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("attempt to set null image");
        }
        this.list.add(new ImageAttribute(i, bArr));
    }

    public PGPUserAttributeSubpacketVector generate() {
        List list = this.list;
        return new PGPUserAttributeSubpacketVector((UserAttributeSubpacket[]) list.toArray(new UserAttributeSubpacket[list.size()]));
    }
}
