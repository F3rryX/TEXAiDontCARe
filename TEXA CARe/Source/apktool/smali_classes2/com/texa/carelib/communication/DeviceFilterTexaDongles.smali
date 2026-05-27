.class public Lcom/texa/carelib/communication/DeviceFilterTexaDongles;
.super Ljava/lang/Object;
.source "DeviceFilterTexaDongles.java"

# interfaces
.implements Lcom/texa/carelib/communication/DeviceFilter;


# static fields
.field private static final TEXA_MAC_ADDRESS_PREFIX_B4_B8_59:Ljava/lang/String; = "B4:B8:59"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .locals 1

    .line 22
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "B4:B8:59"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public isValidDevice(Lcom/texa/carelib/communication/DeviceInfo;)Z
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/DeviceFilterTexaDongles;->isValidAddress(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
