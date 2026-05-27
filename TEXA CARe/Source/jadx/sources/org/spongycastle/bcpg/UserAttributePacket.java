package org.spongycastle.bcpg;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class UserAttributePacket extends ContainedPacket {
    private UserAttributeSubpacket[] subpackets;

    public UserAttributePacket(BCPGInputStream bCPGInputStream) throws IOException {
        UserAttributeSubpacketInputStream userAttributeSubpacketInputStream = new UserAttributeSubpacketInputStream(bCPGInputStream);
        Vector vector = new Vector();
        while (true) {
            UserAttributeSubpacket packet = userAttributeSubpacketInputStream.readPacket();
            if (packet == null) {
                break;
            } else {
                vector.addElement(packet);
            }
        }
        this.subpackets = new UserAttributeSubpacket[vector.size()];
        int i = 0;
        while (true) {
            UserAttributeSubpacket[] userAttributeSubpacketArr = this.subpackets;
            if (i == userAttributeSubpacketArr.length) {
                return;
            }
            userAttributeSubpacketArr[i] = (UserAttributeSubpacket) vector.elementAt(i);
            i++;
        }
    }

    public UserAttributePacket(UserAttributeSubpacket[] userAttributeSubpacketArr) {
        this.subpackets = userAttributeSubpacketArr;
    }

    public UserAttributeSubpacket[] getSubpackets() {
        return this.subpackets;
    }

    @Override // org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (true) {
            UserAttributeSubpacket[] userAttributeSubpacketArr = this.subpackets;
            if (i != userAttributeSubpacketArr.length) {
                userAttributeSubpacketArr[i].encode(byteArrayOutputStream);
                i++;
            } else {
                bCPGOutputStream.writePacket(17, byteArrayOutputStream.toByteArray(), false);
                return;
            }
        }
    }
}
