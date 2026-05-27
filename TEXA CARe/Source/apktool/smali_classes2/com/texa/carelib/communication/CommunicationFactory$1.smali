.class synthetic Lcom/texa/carelib/communication/CommunicationFactory$1;
.super Ljava/lang/Object;
.source "CommunicationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/CommunicationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$communication$CommunicationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    invoke-static {}, Lcom/texa/carelib/communication/CommunicationType;->values()[Lcom/texa/carelib/communication/CommunicationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/carelib/communication/CommunicationFactory$1;->$SwitchMap$com$texa$carelib$communication$CommunicationType:[I

    :try_start_0
    sget-object v1, Lcom/texa/carelib/communication/CommunicationType;->BLUETOOTH:Lcom/texa/carelib/communication/CommunicationType;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/carelib/communication/CommunicationFactory$1;->$SwitchMap$com$texa$carelib$communication$CommunicationType:[I

    sget-object v1, Lcom/texa/carelib/communication/CommunicationType;->MOCK:Lcom/texa/carelib/communication/CommunicationType;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
