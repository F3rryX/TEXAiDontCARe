.class synthetic Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$4;
.super Ljava/lang/Object;
.source "DongleDiscoveryScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 171
    invoke-static {}, Lcom/texa/carelib/communication/CommunicationStatus;->values()[Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$4;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    :try_start_0
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING_FINISHED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$4;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$4;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->NO_MEDIUM_ACTIVE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
