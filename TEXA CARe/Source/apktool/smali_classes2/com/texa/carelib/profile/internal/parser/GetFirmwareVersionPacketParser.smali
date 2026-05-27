.class public final Lcom/texa/carelib/profile/internal/parser/GetFirmwareVersionPacketParser;
.super Ljava/lang/Object;
.source "GetFirmwareVersionPacketParser.java"


# static fields
.field private static final D:Z = false

.field public static final TAG:Ljava/lang/String; = "GetFirmwareVersionPacketParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/core/utils/Version;
    .locals 2

    .line 38
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/VersionParser;->parse([B)Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    return-object p1
.end method
