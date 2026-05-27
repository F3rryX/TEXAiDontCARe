package com.texa.carelib.communication.internal;

/* JADX INFO: loaded from: classes2.dex */
public class PacketFormat {
    public static final int MAX_MESSAGE_LENGTH = 2048;
    public static final int MAX_PACKET_LENGTH = 2048;
    public static final int MIN_PACKET_LENGTH = 8;
    public static final int POS_COMMAND_ID = 1;
    public static final int POS_CURRENT_INDEX_PACKETS = 3;
    public static final int POS_MAX_INDEX_PACKETS = 2;
    public static final int POS_MESSAGE_DATA_LENGTH = 4;
    public static final int POS_MESSAGE_DATA_REQUEST = 6;
    public static final int POS_MESSAGE_DATA_RESPONSE = 7;
    public static final int POS_MESSAGE_DATA_RESPONSE_STATUS = 6;
    public static final int POS_STX = 0;
    public static final int SIZE_CHECKSUM_FIELD = 1;
    public static final int SIZE_COMMAND_ID_FIELD = 1;
    public static final int SIZE_CURRENT_INDEX_PACKET_FIELD = 1;
    public static final int SIZE_MAX_INDEX_PACKET_FIELD = 1;
    public static final int SIZE_MESSAGE_LENGTH_FIELD = 2;
    public static final int SIZE_PACKET_FOOTER = 2;
    public static final int SIZE_PACKET_HEADER = 6;
    public static final int SIZE_STATUS_FIELD = 1;
    public static final int SIZE_STOP_FIELD = 1;
    public static final int SIZE_STX_FIELD = 1;
    public static final char STOP = 3;
    public static final char STX = 2;
}
