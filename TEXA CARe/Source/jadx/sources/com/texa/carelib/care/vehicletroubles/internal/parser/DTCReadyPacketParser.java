package com.texa.carelib.care.vehicletroubles.internal.parser;

import androidx.core.view.ViewCompat;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.utils.internal.Base64Helper;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import org.spongycastle.math.ec.Tnaf;

/* JADX INFO: loaded from: classes2.dex */
public class DTCReadyPacketParser {
    public static final int DTCID_SIZE = 16;
    public static final int FIELD_SIZE = 20;
    public static final int STATUS_SIZE = 4;
    public static final String TAG = "DTCReadyPacketParser";

    public Map<String, Integer> parse(Message message) {
        if (message == null || message.getData() == null) {
            return null;
        }
        if (message.getData().length < 20) {
            return new HashMap();
        }
        HashMap map = new HashMap(message.getData().length / 20);
        byte[] data = message.getData();
        if (data == null || data.length == 0) {
            return new HashMap();
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(data);
        while (byteBufferWrap.remaining() > 0) {
            byte[] bArr = new byte[16];
            byteBufferWrap.get(bArr);
            String strEncode = Base64Helper.encode(bArr);
            byte[] bArr2 = new byte[4];
            byteBufferWrap.get(bArr2);
            map.put(strEncode, Integer.valueOf((bArr2[0] & 255) + ((bArr2[1] << 8) & 65280) + ((bArr2[2] << Tnaf.POW_2_WIDTH) & 16711680) + ((bArr2[3] << 24) & ViewCompat.MEASURED_STATE_MASK)));
        }
        return map;
    }
}
