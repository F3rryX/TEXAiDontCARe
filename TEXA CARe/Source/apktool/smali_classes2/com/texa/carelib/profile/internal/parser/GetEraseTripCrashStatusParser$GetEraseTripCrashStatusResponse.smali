.class public Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;
.super Ljava/lang/Object;
.source "GetEraseTripCrashStatusParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetEraseTripCrashStatusResponse"
.end annotation


# instance fields
.field private mStatus:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->Unknown:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;->mStatus:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;->mStatus:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    return-object v0
.end method

.method setStatus(Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;)Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$GetEraseTripCrashStatusResponse;->mStatus:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    return-object p0
.end method
