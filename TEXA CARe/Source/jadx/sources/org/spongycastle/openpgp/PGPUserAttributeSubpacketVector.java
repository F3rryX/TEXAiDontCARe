package org.spongycastle.openpgp;

import org.spongycastle.bcpg.UserAttributeSubpacket;
import org.spongycastle.bcpg.attr.ImageAttribute;

/* JADX INFO: loaded from: classes3.dex */
public class PGPUserAttributeSubpacketVector {
    UserAttributeSubpacket[] packets;

    PGPUserAttributeSubpacketVector(UserAttributeSubpacket[] userAttributeSubpacketArr) {
        this.packets = userAttributeSubpacketArr;
    }

    public UserAttributeSubpacket getSubpacket(int i) {
        int i2 = 0;
        while (true) {
            UserAttributeSubpacket[] userAttributeSubpacketArr = this.packets;
            if (i2 == userAttributeSubpacketArr.length) {
                return null;
            }
            if (userAttributeSubpacketArr[i2].getType() == i) {
                return this.packets[i2];
            }
            i2++;
        }
    }

    public ImageAttribute getImageAttribute() {
        UserAttributeSubpacket subpacket = getSubpacket(1);
        if (subpacket == null) {
            return null;
        }
        return (ImageAttribute) subpacket;
    }

    UserAttributeSubpacket[] toSubpacketArray() {
        return this.packets;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PGPUserAttributeSubpacketVector)) {
            return false;
        }
        PGPUserAttributeSubpacketVector pGPUserAttributeSubpacketVector = (PGPUserAttributeSubpacketVector) obj;
        if (pGPUserAttributeSubpacketVector.packets.length != this.packets.length) {
            return false;
        }
        int i = 0;
        while (true) {
            UserAttributeSubpacket[] userAttributeSubpacketArr = this.packets;
            if (i == userAttributeSubpacketArr.length) {
                return true;
            }
            if (!pGPUserAttributeSubpacketVector.packets[i].equals(userAttributeSubpacketArr[i])) {
                return false;
            }
            i++;
        }
    }

    public int hashCode() {
        int i = 0;
        int iHashCode = 0;
        while (true) {
            UserAttributeSubpacket[] userAttributeSubpacketArr = this.packets;
            if (i == userAttributeSubpacketArr.length) {
                return iHashCode;
            }
            iHashCode ^= userAttributeSubpacketArr[i].hashCode();
            i++;
        }
    }
}
