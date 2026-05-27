.class public final Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;
.super Ljava/lang/Object;
.source "GetFirmwareStatusPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;
    }
.end annotation


# static fields
.field private static final APPLICATION_NAME_LENGTH:I = 0x4

.field private static final BOARD_NAME_LENGTH:I = 0x4

.field private static final CUSTOMER_NAME_LENGTH:I = 0x4

.field public static final D:Z = false

.field public static final MASK_BOOTLOADER_RUNNING:I = 0x10

.field public static final MASK_FIRMWARE_UPDATE_IN_PROGRESS:I = 0x40

.field public static final MASK_FIRMWARE_UPGRADABLE:I = 0x8

.field public static final MASK_VALID_APPLICATION:I = 0x80

.field public static final PACKET_LENGTH:I = 0xa1

.field public static final PACKET_LENGTH_BEFORE_SMART_FW_UPGRADE:I = 0x61

.field private static final PRODUCT_NAME_LENGTH:I = 0x10

.field public static final TAG:Ljava/lang/String; = "GetFirmwareStatusPacketParser"

.field private static final VERSION_LENGTH:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBit(BI)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isPureAscii([B)Z
    .locals 1

    const-string v0, "US-ASCII"

    .line 451
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 453
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;
    .locals 9

    .line 167
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 174
    :cond_1
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    .line 175
    sget-object v2, Lcom/texa/carelib/core/AppType;->MICRO:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v0, v2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 177
    new-instance v2, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v2}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    .line 178
    sget-object v3, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v2, v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 180
    new-instance v3, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    .line 181
    sget-object v4, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v3, v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 183
    new-instance v4, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    .line 184
    sget-object v5, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v4, v5}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 186
    new-instance v5, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v5}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    .line 187
    sget-object v6, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v5, v6}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 190
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 192
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    array-length p0, p0

    const/16 v7, 0x61

    const/4 v8, 0x0

    if-eq p0, v7, :cond_3

    const/16 v7, 0xa1

    if-eq p0, v7, :cond_2

    .line 249
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->TAG:Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "Invalid data length."

    invoke-static {p0, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 217
    :cond_2
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseProductName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 218
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseProductName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 219
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseProductName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 220
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseProductName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 221
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseProductName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 223
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseCustomerName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 224
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseCustomerName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 225
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseCustomerName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 226
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseCustomerName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 227
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseCustomerName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 229
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseApplicationName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 230
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseApplicationName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 231
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseApplicationName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 232
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseApplicationName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 233
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseApplicationName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 235
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseBoardName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 236
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseBoardName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 237
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseBoardName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 238
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseBoardName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 239
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseBoardName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 241
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseVersion(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setVersion(Lcom/texa/carelib/core/utils/Version;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 242
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseVersion(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setVersion(Lcom/texa/carelib/core/utils/Version;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 243
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseVersion(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setVersion(Lcom/texa/carelib/core/utils/Version;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 244
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseVersion(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setVersion(Lcom/texa/carelib/core/utils/Version;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 245
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseVersion(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setVersion(Lcom/texa/carelib/core/utils/Version;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    goto :goto_0

    .line 195
    :cond_3
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseProductName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 196
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseProductName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 197
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseProductName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 199
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseCustomerName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 200
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseCustomerName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 201
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseCustomerName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 203
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseApplicationName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 204
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseApplicationName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 205
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseApplicationName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 207
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseBoardName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 208
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseBoardName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 209
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseBoardName(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 211
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseVersion(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setVersion(Lcom/texa/carelib/core/utils/Version;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 212
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseVersion(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setVersion(Lcom/texa/carelib/core/utils/Version;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 213
    invoke-static {v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseVersion(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setVersion(Lcom/texa/carelib/core/utils/Version;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 254
    :goto_0
    new-instance p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;

    invoke-direct {p0, v1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;-><init>(Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$1;)V

    .line 257
    :try_start_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/16 v6, 0x8

    .line 258
    invoke-static {v1, v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->checkBit(BI)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->setUpgradable(Z)V

    const/16 v6, 0x10

    .line 259
    invoke-static {v1, v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->checkBit(BI)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p0, v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->setBootloaderRunning(Z)V

    const/16 v6, 0x40

    .line 260
    invoke-static {v1, v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->checkBit(BI)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->setFirmwareUpdateInProgress(Z)V

    const/16 v6, 0x80

    .line 261
    invoke-static {v1, v6}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->checkBit(BI)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->setValidApplication(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 264
    sget-object v6, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->TAG:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "Could not retrieve firmware status."

    invoke-static {v6, v1, v8, v7}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :goto_2
    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->setMicroLoaderVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 268
    invoke-virtual {p0, v3}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 269
    invoke-virtual {p0, v2}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 271
    invoke-virtual {v5}, Lcom/texa/carelib/core/utils/FirmwareVersion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    invoke-virtual {p0, v5}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->setPendingMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 274
    :cond_5
    invoke-virtual {v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 275
    invoke-virtual {p0, v4}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->setPendingServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    :cond_6
    return-object p0
.end method

.method private static parseApplicationName(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-array v1, v2, [B

    .line 91
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 92
    invoke-static {v1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 96
    :catch_0
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not parse application name"

    invoke-static {p0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static parseBoardName(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-array v1, v2, [B

    .line 111
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 112
    invoke-static {v1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 116
    :catch_0
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not parse board name"

    invoke-static {p0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static parseCustomerName(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-array v1, v2, [B

    .line 71
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 72
    invoke-static {v1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 76
    :catch_0
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not parse customer name"

    invoke-static {p0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static parseProductName(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 125
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-array v1, v2, [B

    .line 131
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 132
    invoke-static {v1}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parseString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 136
    :catch_0
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not parse product name"

    invoke-static {p0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static parseString([B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 465
    array-length v0, p0

    if-ltz v0, :cond_0

    invoke-static {p0}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->isPureAscii([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseVersion(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/core/utils/Version;
    .locals 2

    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    :try_start_0
    new-array v0, v1, [B

    .line 147
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 148
    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/VersionParser;->parse([B)Lcom/texa/carelib/core/utils/Version;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 151
    :catch_0
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not parse version"

    invoke-static {p0, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_0
    new-instance p0, Lcom/texa/carelib/core/utils/Version;

    invoke-direct {p0}, Lcom/texa/carelib/core/utils/Version;-><init>()V

    return-object p0
.end method
