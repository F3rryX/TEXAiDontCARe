.class public Lcom/texa/carelib/communication/internal/PacketFormat;
.super Ljava/lang/Object;
.source "PacketFormat.java"


# static fields
.field public static final MAX_MESSAGE_LENGTH:I = 0x800

.field public static final MAX_PACKET_LENGTH:I = 0x800

.field public static final MIN_PACKET_LENGTH:I = 0x8

.field public static final POS_COMMAND_ID:I = 0x1

.field public static final POS_CURRENT_INDEX_PACKETS:I = 0x3

.field public static final POS_MAX_INDEX_PACKETS:I = 0x2

.field public static final POS_MESSAGE_DATA_LENGTH:I = 0x4

.field public static final POS_MESSAGE_DATA_REQUEST:I = 0x6

.field public static final POS_MESSAGE_DATA_RESPONSE:I = 0x7

.field public static final POS_MESSAGE_DATA_RESPONSE_STATUS:I = 0x6

.field public static final POS_STX:I = 0x0

.field public static final SIZE_CHECKSUM_FIELD:I = 0x1

.field public static final SIZE_COMMAND_ID_FIELD:I = 0x1

.field public static final SIZE_CURRENT_INDEX_PACKET_FIELD:I = 0x1

.field public static final SIZE_MAX_INDEX_PACKET_FIELD:I = 0x1

.field public static final SIZE_MESSAGE_LENGTH_FIELD:I = 0x2

.field public static final SIZE_PACKET_FOOTER:I = 0x2

.field public static final SIZE_PACKET_HEADER:I = 0x6

.field public static final SIZE_STATUS_FIELD:I = 0x1

.field public static final SIZE_STOP_FIELD:I = 0x1

.field public static final SIZE_STX_FIELD:I = 0x1

.field public static final STOP:C = '\u0003'

.field public static final STX:C = '\u0002'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
