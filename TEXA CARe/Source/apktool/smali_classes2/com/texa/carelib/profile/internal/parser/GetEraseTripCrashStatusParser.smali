.class public Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser;
.super Ljava/lang/Object;
.source "GetEraseTripCrashStatusParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;,
        Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance p0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;-><init>()V

    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    .line 26
    new-instance v0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;

    invoke-direct {v0}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;-><init>()V

    if-eqz p0, :cond_5

    .line 28
    array-length v1, p0

    if-lez v1, :cond_5

    const/4 v1, 0x0

    .line 29
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->Completed:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    invoke-virtual {v0, p0}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;->setStatus(Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;)Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;

    goto :goto_0

    .line 40
    :cond_2
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->CrashActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    invoke-virtual {v0, p0}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;->setStatus(Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;)Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;

    goto :goto_0

    .line 36
    :cond_3
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->TripActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    invoke-virtual {v0, p0}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;->setStatus(Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;)Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;

    goto :goto_0

    .line 32
    :cond_4
    sget-object p0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->NotActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    invoke-virtual {v0, p0}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;->setStatus(Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;)Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;

    :cond_5
    :goto_0
    return-object v0
.end method
