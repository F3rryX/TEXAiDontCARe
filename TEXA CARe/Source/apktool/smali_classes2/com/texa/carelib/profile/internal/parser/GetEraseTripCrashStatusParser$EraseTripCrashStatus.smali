.class public final enum Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;
.super Ljava/lang/Enum;
.source "GetEraseTripCrashStatusParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EraseTripCrashStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

.field public static final enum Completed:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

.field public static final enum CrashActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

.field public static final enum NotActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

.field public static final enum TripActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

.field public static final enum Unknown:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 56
    new-instance v0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->Unknown:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    .line 57
    new-instance v1, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    const-string v3, "NotActive"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->NotActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    .line 58
    new-instance v3, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    const-string v5, "TripActive"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->TripActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    .line 59
    new-instance v5, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    const-string v7, "CrashActive"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->CrashActive:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    .line 60
    new-instance v7, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    const-string v9, "Completed"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->Completed:Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 54
    sput-object v9, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->$VALUES:[Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;
    .locals 1

    .line 54
    const-class v0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;
    .locals 1

    .line 54
    sget-object v0, Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->$VALUES:[Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/internal/parser/GetEraseTripCrashStatusParser$EraseTripCrashStatus;

    return-object v0
.end method
